// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/momo_deposit_entity.dart' as _i5;
import '../entities/om_validator_entity.dart' as _i3;
import '../models/momo_deposit_model.dart' as _i4;
import '../models/om_validator_model.dart' as _i2;

/// {@template package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
/// Available mappings:
/// - `OmValidatorModel` → `OmValidatorEntity`.
/// - `OmValidatorEntity` → `OmValidatorModel`.
/// - `MomoDepositModel` → `MomoDepositEntity`.
/// - `MomoDepositEntity` → `MomoDepositModel`.
/// {@endtemplate}
class $DepositAutoMapper implements _i1.AutoMapprInterface {
  const $DepositAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.OmValidatorModel>() ||
            sourceTypeOf == _typeOf<_i2.OmValidatorModel?>()) &&
        (targetTypeOf == _typeOf<_i3.OmValidatorEntity>() ||
            targetTypeOf == _typeOf<_i3.OmValidatorEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.OmValidatorEntity>() ||
            sourceTypeOf == _typeOf<_i3.OmValidatorEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.OmValidatorModel>() ||
            targetTypeOf == _typeOf<_i2.OmValidatorModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.MomoDepositModel>() ||
            sourceTypeOf == _typeOf<_i4.MomoDepositModel?>()) &&
        (targetTypeOf == _typeOf<_i5.MomoDepositEntity>() ||
            targetTypeOf == _typeOf<_i5.MomoDepositEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.MomoDepositEntity>() ||
            sourceTypeOf == _typeOf<_i5.MomoDepositEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.MomoDepositModel>() ||
            targetTypeOf == _typeOf<_i4.MomoDepositModel?>())) {
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
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
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
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
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
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
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
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
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
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
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
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
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
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
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
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.OmValidatorModel>() ||
            sourceTypeOf == _typeOf<_i2.OmValidatorModel?>()) &&
        (targetTypeOf == _typeOf<_i3.OmValidatorEntity>() ||
            targetTypeOf == _typeOf<_i3.OmValidatorEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$OmValidatorModel_To__i3$OmValidatorEntity(
          (model as _i2.OmValidatorModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.OmValidatorEntity>() ||
            sourceTypeOf == _typeOf<_i3.OmValidatorEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.OmValidatorModel>() ||
            targetTypeOf == _typeOf<_i2.OmValidatorModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$OmValidatorEntity_To__i2$OmValidatorModel(
          (model as _i3.OmValidatorEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.MomoDepositModel>() ||
            sourceTypeOf == _typeOf<_i4.MomoDepositModel?>()) &&
        (targetTypeOf == _typeOf<_i5.MomoDepositEntity>() ||
            targetTypeOf == _typeOf<_i5.MomoDepositEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$MomoDepositModel_To__i5$MomoDepositEntity(
          (model as _i4.MomoDepositModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.MomoDepositEntity>() ||
            sourceTypeOf == _typeOf<_i5.MomoDepositEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.MomoDepositModel>() ||
            targetTypeOf == _typeOf<_i4.MomoDepositModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$MomoDepositEntity_To__i4$MomoDepositModel(
          (model as _i5.MomoDepositEntity?)) as TARGET);
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
  /// {@macro package:domain/src/deposit/_mappers/deposit_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.OmValidatorEntity _map__i2$OmValidatorModel_To__i3$OmValidatorEntity(
      _i2.OmValidatorModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping OmValidatorModel → OmValidatorEntity failed because OmValidatorModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<OmValidatorModel, OmValidatorEntity> to handle null values during mapping.');
    }
    return _i3.OmValidatorEntity(
      result: model.result,
      message: model.message,
    );
  }

  _i2.OmValidatorModel _map__i3$OmValidatorEntity_To__i2$OmValidatorModel(
      _i3.OmValidatorEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping OmValidatorEntity → OmValidatorModel failed because OmValidatorEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<OmValidatorEntity, OmValidatorModel> to handle null values during mapping.');
    }
    return _i2.OmValidatorModel(
      result: model.result,
      message: model.message,
    );
  }

  _i5.MomoDepositEntity _map__i4$MomoDepositModel_To__i5$MomoDepositEntity(
      _i4.MomoDepositModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MomoDepositModel → MomoDepositEntity failed because MomoDepositModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MomoDepositModel, MomoDepositEntity> to handle null values during mapping.');
    }
    return _i5.MomoDepositEntity(
      id: model.id,
      maxItPaymentUrl: model.maxItPaymentUrl,
      paymentUrl: model.paymentUrl,
    );
  }

  _i4.MomoDepositModel _map__i5$MomoDepositEntity_To__i4$MomoDepositModel(
      _i5.MomoDepositEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MomoDepositEntity → MomoDepositModel failed because MomoDepositEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MomoDepositEntity, MomoDepositModel> to handle null values during mapping.');
    }
    return _i4.MomoDepositModel(
      id: model.id,
      maxItPaymentUrl: model.maxItPaymentUrl,
      paymentUrl: model.paymentUrl,
    );
  }
}
