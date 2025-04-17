// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/currency_convertion_entity.dart' as _i3;
import '../entities/fx_rate_entity.dart' as _i5;
import '../models/currency_convertion_model.dart' as _i2;
import '../models/fx_rate_model.dart' as _i4;

/// {@template package:domain/src/currency/_mappers/currency_auto_mapper.dart}
/// Available mappings:
/// - `CurrencyConversionModel` → `CurrencyConvertionEntity`.
/// - `CurrencyConvertionEntity` → `CurrencyConversionModel`.
/// - `FxRateModel` → `FxRateEntity`.
/// - `FxRateEntity` → `FxRateModel`.
/// {@endtemplate}
class $CurrencyAutoMapper implements _i1.AutoMapprInterface {
  const $CurrencyAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.CurrencyConversionModel>() ||
            sourceTypeOf == _typeOf<_i2.CurrencyConversionModel?>()) &&
        (targetTypeOf == _typeOf<_i3.CurrencyConvertionEntity>() ||
            targetTypeOf == _typeOf<_i3.CurrencyConvertionEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.CurrencyConvertionEntity>() ||
            sourceTypeOf == _typeOf<_i3.CurrencyConvertionEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.CurrencyConversionModel>() ||
            targetTypeOf == _typeOf<_i2.CurrencyConversionModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.FxRateModel>() ||
            sourceTypeOf == _typeOf<_i4.FxRateModel?>()) &&
        (targetTypeOf == _typeOf<_i5.FxRateEntity>() ||
            targetTypeOf == _typeOf<_i5.FxRateEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.FxRateEntity>() ||
            sourceTypeOf == _typeOf<_i5.FxRateEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.FxRateModel>() ||
            targetTypeOf == _typeOf<_i4.FxRateModel?>())) {
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
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
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
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
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
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
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
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
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
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
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
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
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
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
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
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.CurrencyConversionModel>() ||
            sourceTypeOf == _typeOf<_i2.CurrencyConversionModel?>()) &&
        (targetTypeOf == _typeOf<_i3.CurrencyConvertionEntity>() ||
            targetTypeOf == _typeOf<_i3.CurrencyConvertionEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CurrencyConversionModel_To__i3$CurrencyConvertionEntity(
          (model as _i2.CurrencyConversionModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.CurrencyConvertionEntity>() ||
            sourceTypeOf == _typeOf<_i3.CurrencyConvertionEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.CurrencyConversionModel>() ||
            targetTypeOf == _typeOf<_i2.CurrencyConversionModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$CurrencyConvertionEntity_To__i2$CurrencyConversionModel(
          (model as _i3.CurrencyConvertionEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.FxRateModel>() ||
            sourceTypeOf == _typeOf<_i4.FxRateModel?>()) &&
        (targetTypeOf == _typeOf<_i5.FxRateEntity>() ||
            targetTypeOf == _typeOf<_i5.FxRateEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$FxRateModel_To__i5$FxRateEntity(
          (model as _i4.FxRateModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.FxRateEntity>() ||
            sourceTypeOf == _typeOf<_i5.FxRateEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.FxRateModel>() ||
            targetTypeOf == _typeOf<_i4.FxRateModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$FxRateEntity_To__i4$FxRateModel(
          (model as _i5.FxRateEntity?)) as TARGET);
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
  /// {@macro package:domain/src/currency/_mappers/currency_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.CurrencyConvertionEntity
      _map__i2$CurrencyConversionModel_To__i3$CurrencyConvertionEntity(
          _i2.CurrencyConversionModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CurrencyConversionModel → CurrencyConvertionEntity failed because CurrencyConversionModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CurrencyConversionModel, CurrencyConvertionEntity> to handle null values during mapping.');
    }
    return _i3.CurrencyConvertionEntity(
      imageUrl: model.imageUrl,
      isoCode: model.isoCode,
      name: model.name,
      percentage: model.percentage,
    );
  }

  _i2.CurrencyConversionModel
      _map__i3$CurrencyConvertionEntity_To__i2$CurrencyConversionModel(
          _i3.CurrencyConvertionEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CurrencyConvertionEntity → CurrencyConversionModel failed because CurrencyConvertionEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CurrencyConvertionEntity, CurrencyConversionModel> to handle null values during mapping.');
    }
    return _i2.CurrencyConversionModel(
      imageUrl: model.imageUrl,
      isoCode: model.isoCode,
      name: model.name,
      percentage: model.percentage,
    );
  }

  _i5.FxRateEntity _map__i4$FxRateModel_To__i5$FxRateEntity(
      _i4.FxRateModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping FxRateModel → FxRateEntity failed because FxRateModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<FxRateModel, FxRateEntity> to handle null values during mapping.');
    }
    return _i5.FxRateEntity(
      from: model.from,
      to: model.to,
      rate: model.rate,
    );
  }

  _i4.FxRateModel _map__i5$FxRateEntity_To__i4$FxRateModel(
      _i5.FxRateEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping FxRateEntity → FxRateModel failed because FxRateEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<FxRateEntity, FxRateModel> to handle null values during mapping.');
    }
    return _i4.FxRateModel(
      from: model.from,
      to: model.to,
      rate: model.rate,
    );
  }
}
