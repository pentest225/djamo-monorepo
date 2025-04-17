import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/settings/entities/entities.dart';
import 'package:domain/src/settings/objects/objects.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class SettingsStoreWrapper extends StoreWrapper {
  SettingsStoreWrapper({super.identifier = 'Settings'}) {
    //##Initializations
    _settings = StoreUnit<SettingWorkingBook, bool>.init(identifier: '_settings', initialValue: const {});
    _deviceConfig = StoreUnit<DeviceConfigEntity, bool>.init(identifier: '_deviceConfig', initialValue: DeviceConfigEntity.empty);
    _featureFlagObject = StoreUnit<FeatureFlagObject, bool>.init(identifier: '_featureFlagObject', initialValue: FeatureFlagObject.empty);
  }

  //##Declarations
  late final StoreUnit<SettingWorkingBook, bool> _settings;
  late final StoreUnit<DeviceConfigEntity, bool> _deviceConfig;
  late final StoreUnit<FeatureFlagObject, bool> _featureFlagObject;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      SettingWorkingBook: _settings.value,
      DeviceConfigEntity: _deviceConfig.value,
      FeatureFlagObject: _featureFlagObject.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      SettingWorkingBook: _settings.stream,
      DeviceConfigEntity: _deviceConfig.stream,
      FeatureFlagObject: _featureFlagObject.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsDataWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      SettingWorkingBook: _settings.request,
      DeviceConfigEntity: _deviceConfig.request,
      FeatureFlagObject: _featureFlagObject.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsDataWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      SettingWorkingBook: _settings.status,
      DeviceConfigEntity: _deviceConfig.status,
      FeatureFlagObject: _featureFlagObject.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsDataWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      SettingWorkingBook: (a) => _settings.sink(a as SettingWorkingBook),
      DeviceConfigEntity: (a) => _deviceConfig.sink(a as DeviceConfigEntity),
      FeatureFlagObject: (a) => _featureFlagObject.sink(a as FeatureFlagObject),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsDataWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      SettingWorkingBook: () => _settings.requestRefresh(args as bool),
      DeviceConfigEntity: () => _deviceConfig.requestRefresh(args as bool),
      FeatureFlagObject: () => _featureFlagObject.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsDataWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      SettingWorkingBook: () => _settings.toErr(),
      DeviceConfigEntity: () => _deviceConfig.toErr(),
      FeatureFlagObject: () => _featureFlagObject.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsDataWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      SettingWorkingBook: () => _settings.toLoading(),
      DeviceConfigEntity: () => _deviceConfig.toLoading(),
      FeatureFlagObject: () => _featureFlagObject.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsDataWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      SettingWorkingBook: () => _settings.toSuccess(value as SettingWorkingBook?),
      DeviceConfigEntity: () => _deviceConfig.toSuccess(value as DeviceConfigEntity?),
      FeatureFlagObject: () => _featureFlagObject.toSuccess(value as FeatureFlagObject?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsDataWrapper', 'toSuccess'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      SettingWorkingBook: () => _settings.requestRefreshAsync(args as bool) as Future<T?>,
      DeviceConfigEntity: () => _deviceConfig.requestRefreshAsync(args as bool) as Future<T?>,
      FeatureFlagObject: () => _featureFlagObject.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('SettingsDataWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _settings.close();
    _deviceConfig.close();
    _featureFlagObject.close();
  }
}
