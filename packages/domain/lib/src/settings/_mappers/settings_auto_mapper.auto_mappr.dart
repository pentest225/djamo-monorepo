// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/device_config_entity.dart' as _i3;
import '../entities/setting_entity.dart' as _i5;
import '../models/device_config_model.dart' as _i2;
import '../models/setting_model.dart' as _i4;

/// {@template package:domain/src/settings/_mappers/settings_auto_mapper.dart}
/// Available mappings:
/// - `DeviceConfigModel` → `DeviceConfigEntity`.
/// - `DeviceConfigEntity` → `DeviceConfigModel`.
/// - `SettingModel` → `SettingEntity`.
/// - `SettingEntity` → `SettingModel`.
/// {@endtemplate}
class $SettingsAutoMapper implements _i1.AutoMapprInterface {
  const $SettingsAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.DeviceConfigModel>() ||
            sourceTypeOf == _typeOf<_i2.DeviceConfigModel?>()) &&
        (targetTypeOf == _typeOf<_i3.DeviceConfigEntity>() ||
            targetTypeOf == _typeOf<_i3.DeviceConfigEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.DeviceConfigEntity>() ||
            sourceTypeOf == _typeOf<_i3.DeviceConfigEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.DeviceConfigModel>() ||
            targetTypeOf == _typeOf<_i2.DeviceConfigModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.SettingModel>() ||
            sourceTypeOf == _typeOf<_i4.SettingModel?>()) &&
        (targetTypeOf == _typeOf<_i5.SettingEntity>() ||
            targetTypeOf == _typeOf<_i5.SettingEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.SettingEntity>() ||
            sourceTypeOf == _typeOf<_i5.SettingEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.SettingModel>() ||
            targetTypeOf == _typeOf<_i4.SettingModel?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(
        model,
        onMappingError: onMappingError,
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
          (item) => _safeConvert(item, onMappingError: onMappingError));
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.DeviceConfigModel>() ||
            sourceTypeOf == _typeOf<_i2.DeviceConfigModel?>()) &&
        (targetTypeOf == _typeOf<_i3.DeviceConfigEntity>() ||
            targetTypeOf == _typeOf<_i3.DeviceConfigEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$DeviceConfigModel_To__i3$DeviceConfigEntity(
          (model as _i2.DeviceConfigModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.DeviceConfigEntity>() ||
            sourceTypeOf == _typeOf<_i3.DeviceConfigEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.DeviceConfigModel>() ||
            targetTypeOf == _typeOf<_i2.DeviceConfigModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$DeviceConfigEntity_To__i2$DeviceConfigModel(
          (model as _i3.DeviceConfigEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.SettingModel>() ||
            sourceTypeOf == _typeOf<_i4.SettingModel?>()) &&
        (targetTypeOf == _typeOf<_i5.SettingEntity>() ||
            targetTypeOf == _typeOf<_i5.SettingEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$SettingModel_To__i5$SettingEntity(
          (model as _i4.SettingModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.SettingEntity>() ||
            sourceTypeOf == _typeOf<_i5.SettingEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.SettingModel>() ||
            targetTypeOf == _typeOf<_i4.SettingModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$SettingEntity_To__i4$SettingModel(
          (model as _i5.SettingEntity?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    try {
      return _convert(
        model,
        canReturnNull: true,
      );
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:domain/src/settings/_mappers/settings_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.DeviceConfigEntity _map__i2$DeviceConfigModel_To__i3$DeviceConfigEntity(
      _i2.DeviceConfigModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping DeviceConfigModel → DeviceConfigEntity failed because DeviceConfigModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<DeviceConfigModel, DeviceConfigEntity> to handle null values during mapping.');
    }
    return _i3.DeviceConfigEntity(
      deviceUniqueIdentifier: model.deviceUniqueIdentifier,
      model: model.model,
      brand: model.brand,
      appBuildNumber: model.appBuildNumber,
      appVersion: model.appVersion,
      systemVersion: model.systemVersion,
      locale: model.locale,
    );
  }

  _i2.DeviceConfigModel _map__i3$DeviceConfigEntity_To__i2$DeviceConfigModel(
      _i3.DeviceConfigEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping DeviceConfigEntity → DeviceConfigModel failed because DeviceConfigEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<DeviceConfigEntity, DeviceConfigModel> to handle null values during mapping.');
    }
    return _i2.DeviceConfigModel(
      deviceUniqueIdentifier: model.deviceUniqueIdentifier,
      model: model.model,
      brand: model.brand,
      appBuildNumber: model.appBuildNumber,
      appVersion: model.appVersion,
      systemVersion: model.systemVersion,
      locale: model.locale,
    );
  }

  _i5.SettingEntity _map__i4$SettingModel_To__i5$SettingEntity(
      _i4.SettingModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SettingModel → SettingEntity failed because SettingModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SettingModel, SettingEntity> to handle null values during mapping.');
    }
    return _i5.SettingEntity(
      id: model.id,
      isActive: model.isActive,
      label: model.label,
      settingId: model.settingId,
      value: model.value,
      config: model.config,
    );
  }

  _i4.SettingModel _map__i5$SettingEntity_To__i4$SettingModel(
      _i5.SettingEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SettingEntity → SettingModel failed because SettingEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SettingEntity, SettingModel> to handle null values during mapping.');
    }
    return _i4.SettingModel(
      id: model.id,
      isActive: model.isActive,
      label: model.label,
      settingId: model.settingId,
      value: model.value,
      config: model.config,
    );
  }
}
