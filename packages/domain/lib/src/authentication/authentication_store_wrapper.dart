import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/authentication/entities/entities.dart';
import 'package:domain/src/authentication/enums/enums.dart';
import 'package:domain/src/common/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class AuthenticationStoreWrapper extends StoreWrapper {
  AuthenticationStoreWrapper({super.identifier = 'Authentication'}) {
    //##Initializations
    _session = StoreUnit<UserSessionEntity, bool>.init(identifier: '_session', initialValue: UserSessionEntity.empty);
    _status = StoreUnit<AuthenticationStatusEnum, bool>.init(identifier: '_status', initialValue: AuthenticationStatusEnum.anonymous);
    _biometric = StoreUnit<BiometricConfig, bool>.init(identifier: '_biometric', initialValue: emptyBiometricConfig);
    _user = StoreUnit<UserEntity, bool>.init(identifier: '_user', initialValue: UserEntity.empty);
  }

  //##Declarations
  late final StoreUnit<UserSessionEntity, bool> _session;
  late final StoreUnit<AuthenticationStatusEnum, bool> _status;
  late final StoreUnit<BiometricConfig, bool> _biometric;
  late final StoreUnit<UserEntity, bool> _user;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      UserSessionEntity: _session.value,
      AuthenticationStatusEnum: _status.value,
      BiometricConfig: _biometric.value,
      UserEntity: _user.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      UserSessionEntity: _session.stream,
      AuthenticationStatusEnum: _status.stream,
      BiometricConfig: _biometric.stream,
      UserEntity: _user.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      UserSessionEntity: _session.request,
      AuthenticationStatusEnum: _status.request,
      BiometricConfig: _biometric.request,
      UserEntity: _user.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      UserSessionEntity: _session.status,
      AuthenticationStatusEnum: _status.status,
      BiometricConfig: _biometric.status,
      UserEntity: _user.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      UserSessionEntity: (a) => _session.sink(a as UserSessionEntity),
      AuthenticationStatusEnum: (a) => _status.sink(a as AuthenticationStatusEnum),
      BiometricConfig: (a) => _biometric.sink(a as BiometricConfig),
      UserEntity: (a) => _user.sink(a as UserEntity),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      UserSessionEntity: () => _session.requestRefresh(args as bool),
      AuthenticationStatusEnum: () => _status.requestRefresh(args as bool),
      BiometricConfig: () => _biometric.requestRefresh(args as bool),
      UserEntity: () => _user.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      UserSessionEntity: () => _session.toErr(),
      AuthenticationStatusEnum: () => _status.toErr(),
      BiometricConfig: () => _biometric.toErr(),
      UserEntity: () => _user.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      UserSessionEntity: () => _session.toLoading(),
      AuthenticationStatusEnum: () => _status.toLoading(),
      BiometricConfig: () => _biometric.toLoading(),
      UserEntity: () => _user.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      UserSessionEntity: () => _session.toSuccess(value as UserSessionEntity?),
      AuthenticationStatusEnum: () => _status.toSuccess(value as AuthenticationStatusEnum?),
      BiometricConfig: () => _biometric.toSuccess(value as BiometricConfig?),
      UserEntity: () => _user.toSuccess(value as UserEntity?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'toSuccess'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _session.close();
    _status.close();
    _biometric.close();
    _user.close();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      UserSessionEntity: () => _session.requestRefreshAsync(args as bool) as Future<T?>,
      AuthenticationStatusEnum: () => _status.requestRefreshAsync(args as bool) as Future<T?>,
      BiometricConfig: () => _biometric.requestRefreshAsync(args as bool) as Future<T?>,
      UserEntity: () => _user.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AuthenticationStoreWrapper', 'requestRefreshAsync'));
    return r();
  }
}
