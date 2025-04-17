import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/accounts/enums/account_feature_enum.dart';
import 'package:domain/src/authentication/entities/entities.dart';
import 'package:domain/src/me/enums/enums.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class MeStoreWrapper extends StoreWrapper {
  MeStoreWrapper({super.identifier = 'Me'}) {
    //##Initializations
    _user = StoreUnit<UserEntity, bool>.init(identifier: '_user', initialValue: UserEntity.empty);
    _linkedClients = StoreUnit<UserEntities, bool>.init(identifier: '_linkedClients', initialValue: const []);
    _profileTooltips = StoreUnit<ProfileTooltipTypeEnums, bool>.init(identifier: '_profileTooltips', initialValue: const []);
    _activeAccountFeature = StoreUnit<AccountFeatureEnum, bool>.init(identifier: '_activeAccountFeature', initialValue: AccountFeatureEnum.mainAccount);
  }

  //##Declarations
  late final StoreUnit<UserEntity, bool> _user;
  late final StoreUnit<UserEntities, bool> _linkedClients;
  late final StoreUnit<ProfileTooltipTypeEnums, bool> _profileTooltips;
  late final StoreUnit<AccountFeatureEnum, bool> _activeAccountFeature;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      UserEntity: _user.value,
      UserEntities: _linkedClients.value,
      ProfileTooltipTypeEnums: _profileTooltips.value,
      AccountFeatureEnum: _activeAccountFeature.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      UserEntity: _user.stream,
      UserEntities: _linkedClients.stream,
      ProfileTooltipTypeEnums: _profileTooltips.stream,
      AccountFeatureEnum: _activeAccountFeature.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      UserEntity: _user.request,
      UserEntities: _linkedClients.request,
      ProfileTooltipTypeEnums: _profileTooltips.request,
      AccountFeatureEnum: _activeAccountFeature.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      UserEntity: _user.status,
      UserEntities: _linkedClients.status,
      ProfileTooltipTypeEnums: _profileTooltips.status,
      AccountFeatureEnum: _activeAccountFeature.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      UserEntity: (a) => _user.sink(a as UserEntity),
      UserEntities: (a) => _linkedClients.sink(a as UserEntities),
      ProfileTooltipTypeEnums: (a) => _profileTooltips.sink(a as ProfileTooltipTypeEnums),
      AccountFeatureEnum: (a) => _activeAccountFeature.sink(a as AccountFeatureEnum),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      UserEntity: () => _user.requestRefresh(args as bool),
      UserEntities: () => _linkedClients.requestRefresh(args as bool),
      ProfileTooltipTypeEnums: () => _profileTooltips.requestRefresh(args as bool),
      AccountFeatureEnum: () => _activeAccountFeature.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      UserEntity: () => _user.toLoading(),
      UserEntities: () => _linkedClients.toLoading(),
      ProfileTooltipTypeEnums: () => _profileTooltips.toLoading(),
      AccountFeatureEnum: () => _activeAccountFeature.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      UserEntity: () => _user.toSuccess(value as UserEntity?),
      UserEntities: () => _linkedClients.toSuccess(value as UserEntities?),
      ProfileTooltipTypeEnums: () => _profileTooltips.toSuccess(value as ProfileTooltipTypeEnums?),
      AccountFeatureEnum: () => _activeAccountFeature.toSuccess(value as AccountFeatureEnum?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'toSuccess'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      UserEntity: () => _user.toErr(),
      UserEntities: () => _linkedClients.toErr(),
      ProfileTooltipTypeEnums: () => _profileTooltips.toErr(),
      AccountFeatureEnum: () => _activeAccountFeature.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'toErr'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      UserEntity: () => _user.requestRefreshAsync(args as bool) as Future<T?>,
      UserEntities: () => _linkedClients.requestRefreshAsync(args as bool) as Future<T?>,
      ProfileTooltipTypeEnums: () => _profileTooltips.requestRefreshAsync(args as bool) as Future<T?>,
      AccountFeatureEnum: () => _activeAccountFeature.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MeStoreWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _user.close();
    _linkedClients.close();
    _profileTooltips.close();
    _activeAccountFeature.close();
  }
}
