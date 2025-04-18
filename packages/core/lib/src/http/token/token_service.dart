import 'dart:async';

import 'package:core/src/config/app_env.dart';
import 'package:core/src/enums/app_storage_key_enum.dart';
import 'package:core/src/feature_flag/use_call_on_feature_flag.dart';
import 'package:core/src/http/dio_provider.dart';
import 'package:core/src/http/token/token_refresh_api.dart';
import 'package:core/src/http/token/user_token_session.dart';
import 'package:core/src/storages/app_storage_service.dart';
// import 'package:crashlytics_tower/crashlytics_tower.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:petit_extension/petit_extension.dart';

@singleton
class TokenService {
  TokenService({
    required TokenRefreshAPI api,
    @Named(dioTokenInterceptorLessInstanceName) required Dio dioTokenInterceptorLess,
    required AppStorageService storage,
  })  : _api = api,
        _dioTokenInterceptorLess = dioTokenInterceptorLess,
        _storage = storage,
        _store = sl();
        // _crashlytics = sl();

  final TokenRefreshAPI _api;
  final Dio _dioTokenInterceptorLess;
  final AppStorageService _storage;
  final DomainStore _store;
  // final CrashReportingService _crashlytics;

  Dio get dio => _dioTokenInterceptorLess;

  bool get isAuthenticated => _store.authentication.value<AuthenticationStatusEnum>().isCertainlyAuthenticated;
  AppConnectivityStatusEnum get _connectivityStatus => _store.authentication.session.connectivityStatus;

  DateTime? lastRefreshDateTime;

  UserTokenSession? _session;

  String get authorization {
    return _session?.getBearer ?? '';
  }

  bool get hasTokenExpired {
    if (_session == null) {
      return false;
    }
    final expiresIn = _session!.expiresIn;
    if (expiresIn == 0) {
      return false;
    }
    final now = DateTime.now();
    final expirationDateTime = DateTime.fromMillisecondsSinceEpoch(expiresIn);
    return now.isAfter(expirationDateTime);
  }

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    final token = await _storage.read(AppStorageKey.accessToken).catchError((_) => null);
    if (token.orNull != null) {
      final session = UserTokenSession.fromJsonString(token ?? '');
      await setTokenData(
        accessToken: session.accessToken,
        expiresInTimestamp: session.expiresIn,
      );
      return;
    }
    await setTokenData(accessToken: '', expiresInTimestamp: 0);
  }

  Future<void> setTokenData({
    required String accessToken,
    String? expiresIn,
    int? expiresInTimestamp,
  }) {
    _session = UserTokenSession(
      accessToken: accessToken,
      expiresIn: expiresIn.orNull == null ? expiresInTimestamp ?? 0 : DateTime.tryParse(expiresIn ?? '')?.timestamp ?? 0,
    );
    final updatedUserSession = _store.authentication.value<UserSessionEntity>().copyWith(
          token: accessToken,
          expireIn: expiresIn,
        );
    _store.authentication.sink(updatedUserSession);
    return _storage.save(AppStorageKey.accessToken, _session!.toJson());
  }

  Future<UserTokenSession?> refreshToken() async {
    final shouldRefresh = authorization.isNotEmpty;
    if (!shouldRefresh) {
      return null;
    }
    try {
      final r = await useReturnOnFeatureFlag(
        flag: FeatureFlagEnum.authenticationV2,
        onEnabled: (_) async {
          final passcode = await _storage.read(AppStorageKey.authPassCodeV3).catchError((_) => null);
          if (passcode?.orNull == null) {
            return null;
          }
          final payload = RefreshJWTPayload.v2(
            deviceUniqueIdentifier: _store.settings.deviceConfig.deviceUniqueIdentifier,
            phoneNumberId: _store.authentication.session.phoneNumberId,
            passcode: passcode ?? '',
          );
          return sl<TokenRefreshAPI>(param1: AppEnv.authBaseUrlV2).refreshJWTV2(
            authorization: _session?.getBearer ?? '',
            payload: payload,
          );
        },
        or: _api.refreshJWTV1(
          authorization: _session?.getBearer ?? '',
          payload: RefreshJWTPayload.v1(accessToken: _session?.accessToken ?? ''),
        ),
      );
      if (r == null) {
        return null;
      }
      unawaited(setTokenData(accessToken: r.accessToken, expiresInTimestamp: r.expiresIn));
      lastRefreshDateTime = DateTime.now();
      return _session;
    } on DioException catch (e, s) {
      if (_connectivityStatus.isOnline) {
        // unawaited(
        //   _crashlytics.recordError(
        //     'Failed to refresh token => M: ${e.message} | S: ${e.response?.statusCode}',
        //     s,
        //   ),
        // );
      }
      return _session;
    } catch (_) {
      return null;
    }
  }
}
