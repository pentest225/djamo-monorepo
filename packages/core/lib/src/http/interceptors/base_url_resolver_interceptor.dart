import 'package:core/src/storages/storages.dart' show AppStorageService;
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

const baseUrlResolverInterceptorDefaultInstanceName = 'BASE_URL_RESOLVER_INTERCEPTOR';
const baseUrlResolverInterceptorCivOnlyInstanceName = 'BASE_URL_RESOLVER_INTERCEPTOR_CIV_ONLY';

/// Interceptor for resolving base URLs based on country suffix.
class BaseUrlResolverInterceptor extends Interceptor {
  /// Constructs a [BaseUrlResolverInterceptor].
  ///
  /// [storage]: Instance of [AppStorageService] for retrieving country suffix.
  /// [customSuffix]: Custom suffix to be used instead of country suffix.
  BaseUrlResolverInterceptor({
    required AppStorageService storage,
    required this.params,
  })  : _storage = storage,
        _store = sl();

  factory BaseUrlResolverInterceptor.defaultI({
    required AppStorageService storage,
  }) {
    return BaseUrlResolverInterceptor(
      storage: storage,
      params: const BaseUrlResolverParams(),
    );
  }

  factory BaseUrlResolverInterceptor.civOnly({
    required AppStorageService storage,
  }) {
    return BaseUrlResolverInterceptor(
      storage: storage,
      params: BaseUrlResolverParams.forcedOnCIV(),
    );
  }

  /// The key for country suffix parameter.
  static const suffixParam = '-SUFFIX_PARAM-';

  final AppStorageService _storage;
  final DomainStore _store;

  /// [customSuffix]: Custom suffix to be used instead of country suffix.
  final BaseUrlResolverParams params;

  String get _suffix {
    final user = _store.authentication.user;
    if (user.phoneNumberCountryIsoCode.isNotEmpty) return user.getCountrySuffix;
    return _storage.getActiveCountrySuffix;
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final useSuffix = params.useSuffix;
    final forceUseCiv = params.forceUseCiv;
    final suffix = _suffix;

    if (!useSuffix) {
      return super.onRequest(options, handler);
    }

    if (forceUseCiv) {
      options
        ..baseUrl = transformUrl(options.baseUrl, suffix: 'civ')
        ..path = transformUrl(options.path, suffix: 'civ');
      return super.onRequest(
        options,
        handler,
      );
    }

    if (params.customSuffix.isNotEmpty) {
      options
        ..baseUrl = transformUrl(options.baseUrl, suffix: params.customSuffix)
        ..path = transformUrl(options.path, suffix: params.customSuffix);
      return super.onRequest(
        options,
        handler,
      );
    }

    if (useSuffix) {
      options
        ..baseUrl = transformUrl(options.baseUrl, suffix: suffix)
        ..path = transformUrl(options.path, suffix: suffix);
      return super.onRequest(
        options,
        handler,
      );
    }

    super.onRequest(options, handler);
  }

  /// Transforms the URL by replacing [suffixParam] with the provided [suffix].
  static String transformUrl(String url, {required String suffix}) {
    final transformed = url.replaceAll(suffixParam, suffix).replaceAll(
          suffixParam.toLowerCase(),
          suffix,
        );
    return transformed;
  }
}

@internal
class BaseUrlResolverParams extends Equatable {
  const BaseUrlResolverParams({
    this.customSuffix = '',
    this.useSuffix = true,
    this.forceUseCiv = false,
  });

  factory BaseUrlResolverParams.forcedOnCIV() {
    return const BaseUrlResolverParams(
      forceUseCiv: true,
    );
  }

  final String customSuffix;
  final bool useSuffix;
  final bool forceUseCiv;

  @override
  List<Object?> get props => [
        customSuffix,
        useSuffix,
        forceUseCiv,
      ];
}
