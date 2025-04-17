// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/iban_agency_entity.dart' as _i5;
import '../entities/iban_entity.dart' as _i3;
import '../models/iban_agency_model.dart' as _i4;
import '../models/iban_model.dart' as _i2;

/// {@template package:domain/src/iban/_mappers/iban_auto_mapper.dart}
/// Available mappings:
/// - `IbanModel` → `IbanEntity`.
/// - `IbanEntity` → `IbanModel`.
/// - `IbanAgencyModel` → `IbanAgencyEntity`.
/// - `IbanAgencyEntity` → `IbanAgencyModel`.
/// {@endtemplate}
class $IbanAutoMapper implements _i1.AutoMapprInterface {
  const $IbanAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.IbanModel>() ||
            sourceTypeOf == _typeOf<_i2.IbanModel?>()) &&
        (targetTypeOf == _typeOf<_i3.IbanEntity>() ||
            targetTypeOf == _typeOf<_i3.IbanEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.IbanEntity>() ||
            sourceTypeOf == _typeOf<_i3.IbanEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.IbanModel>() ||
            targetTypeOf == _typeOf<_i2.IbanModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.IbanAgencyModel>() ||
            sourceTypeOf == _typeOf<_i4.IbanAgencyModel?>()) &&
        (targetTypeOf == _typeOf<_i5.IbanAgencyEntity>() ||
            targetTypeOf == _typeOf<_i5.IbanAgencyEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.IbanAgencyEntity>() ||
            sourceTypeOf == _typeOf<_i5.IbanAgencyEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.IbanAgencyModel>() ||
            targetTypeOf == _typeOf<_i4.IbanAgencyModel?>())) {
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
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
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
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
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
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
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
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
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
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
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
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
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
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
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
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.IbanModel>() ||
            sourceTypeOf == _typeOf<_i2.IbanModel?>()) &&
        (targetTypeOf == _typeOf<_i3.IbanEntity>() ||
            targetTypeOf == _typeOf<_i3.IbanEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$IbanModel_To__i3$IbanEntity((model as _i2.IbanModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.IbanEntity>() ||
            sourceTypeOf == _typeOf<_i3.IbanEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.IbanModel>() ||
            targetTypeOf == _typeOf<_i2.IbanModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$IbanEntity_To__i2$IbanModel((model as _i3.IbanEntity?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.IbanAgencyModel>() ||
            sourceTypeOf == _typeOf<_i4.IbanAgencyModel?>()) &&
        (targetTypeOf == _typeOf<_i5.IbanAgencyEntity>() ||
            targetTypeOf == _typeOf<_i5.IbanAgencyEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$IbanAgencyModel_To__i5$IbanAgencyEntity(
          (model as _i4.IbanAgencyModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.IbanAgencyEntity>() ||
            sourceTypeOf == _typeOf<_i5.IbanAgencyEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.IbanAgencyModel>() ||
            targetTypeOf == _typeOf<_i4.IbanAgencyModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$IbanAgencyEntity_To__i4$IbanAgencyModel(
          (model as _i5.IbanAgencyEntity?)) as TARGET);
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
  /// {@macro package:domain/src/iban/_mappers/iban_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.IbanEntity _map__i2$IbanModel_To__i3$IbanEntity(_i2.IbanModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping IbanModel → IbanEntity failed because IbanModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<IbanModel, IbanEntity> to handle null values during mapping.');
    }
    return _i3.IbanEntity(
      id: model.id,
      accountNumber: model.accountNumber,
      agency: _map__i4$IbanAgencyModel_To__i5$IbanAgencyEntity(model.agency),
      iban: model.iban,
      ibanKey: model.ibanKey,
      clientId: model.clientId,
    );
  }

  _i2.IbanModel _map__i3$IbanEntity_To__i2$IbanModel(_i3.IbanEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping IbanEntity → IbanModel failed because IbanEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<IbanEntity, IbanModel> to handle null values during mapping.');
    }
    return _i2.IbanModel(
      id: model.id,
      accountNumber: model.accountNumber,
      agency: _map__i5$IbanAgencyEntity_To__i4$IbanAgencyModel(model.agency),
      iban: model.iban,
      ibanKey: model.ibanKey,
      clientId: model.clientId,
    );
  }

  _i5.IbanAgencyEntity _map__i4$IbanAgencyModel_To__i5$IbanAgencyEntity(
      _i4.IbanAgencyModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping IbanAgencyModel → IbanAgencyEntity failed because IbanAgencyModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<IbanAgencyModel, IbanAgencyEntity> to handle null values during mapping.');
    }
    return _i5.IbanAgencyEntity(
      code: model.code,
      libelle: model.libelle,
    );
  }

  _i4.IbanAgencyModel _map__i5$IbanAgencyEntity_To__i4$IbanAgencyModel(
      _i5.IbanAgencyEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping IbanAgencyEntity → IbanAgencyModel failed because IbanAgencyEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<IbanAgencyEntity, IbanAgencyModel> to handle null values during mapping.');
    }
    return _i4.IbanAgencyModel(
      code: model.code,
      libelle: model.libelle,
    );
  }
}
