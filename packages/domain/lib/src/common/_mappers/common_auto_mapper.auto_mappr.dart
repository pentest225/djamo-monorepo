// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/currency_entity.dart' as _i5;
import '../entities/transaction_fee_entity.dart' as _i3;
import '../models/currency_model.dart' as _i4;
import '../models/transaction_fee_model.dart' as _i2;

/// {@template package:domain/src/common/_mappers/common_auto_mapper.dart}
/// Available mappings:
/// - `TransactionFeeModel` → `TransactionFeeEntity`.
/// - `TransactionFeeEntity` → `TransactionFeeModel`.
/// - `CurrencyModel` → `CurrencyEntity`.
/// - `CurrencyEntity` → `CurrencyModel`.
/// {@endtemplate}
class $CommonAutoMapper implements _i1.AutoMapprInterface {
  const $CommonAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.TransactionFeeModel>() ||
            sourceTypeOf == _typeOf<_i2.TransactionFeeModel?>()) &&
        (targetTypeOf == _typeOf<_i3.TransactionFeeEntity>() ||
            targetTypeOf == _typeOf<_i3.TransactionFeeEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.TransactionFeeEntity>() ||
            sourceTypeOf == _typeOf<_i3.TransactionFeeEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.TransactionFeeModel>() ||
            targetTypeOf == _typeOf<_i2.TransactionFeeModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.CurrencyModel>() ||
            sourceTypeOf == _typeOf<_i4.CurrencyModel?>()) &&
        (targetTypeOf == _typeOf<_i5.CurrencyEntity>() ||
            targetTypeOf == _typeOf<_i5.CurrencyEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.CurrencyEntity>() ||
            sourceTypeOf == _typeOf<_i5.CurrencyEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.CurrencyModel>() ||
            targetTypeOf == _typeOf<_i4.CurrencyModel?>())) {
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
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
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
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
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
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
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
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
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
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
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
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
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
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
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
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.TransactionFeeModel>() ||
            sourceTypeOf == _typeOf<_i2.TransactionFeeModel?>()) &&
        (targetTypeOf == _typeOf<_i3.TransactionFeeEntity>() ||
            targetTypeOf == _typeOf<_i3.TransactionFeeEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$TransactionFeeModel_To__i3$TransactionFeeEntity(
          (model as _i2.TransactionFeeModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.TransactionFeeEntity>() ||
            sourceTypeOf == _typeOf<_i3.TransactionFeeEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.TransactionFeeModel>() ||
            targetTypeOf == _typeOf<_i2.TransactionFeeModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$TransactionFeeEntity_To__i2$TransactionFeeModel(
          (model as _i3.TransactionFeeEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.CurrencyModel>() ||
            sourceTypeOf == _typeOf<_i4.CurrencyModel?>()) &&
        (targetTypeOf == _typeOf<_i5.CurrencyEntity>() ||
            targetTypeOf == _typeOf<_i5.CurrencyEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$CurrencyModel_To__i5$CurrencyEntity(
          (model as _i4.CurrencyModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.CurrencyEntity>() ||
            sourceTypeOf == _typeOf<_i5.CurrencyEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.CurrencyModel>() ||
            targetTypeOf == _typeOf<_i4.CurrencyModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$CurrencyEntity_To__i4$CurrencyModel(
          (model as _i5.CurrencyEntity?)) as TARGET);
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
  /// {@macro package:domain/src/common/_mappers/common_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.TransactionFeeEntity
      _map__i2$TransactionFeeModel_To__i3$TransactionFeeEntity(
          _i2.TransactionFeeModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionFeeModel → TransactionFeeEntity failed because TransactionFeeModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionFeeModel, TransactionFeeEntity> to handle null values during mapping.');
    }
    return _i3.TransactionFeeEntity(fee: model.fee);
  }

  _i2.TransactionFeeModel
      _map__i3$TransactionFeeEntity_To__i2$TransactionFeeModel(
          _i3.TransactionFeeEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionFeeEntity → TransactionFeeModel failed because TransactionFeeEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionFeeEntity, TransactionFeeModel> to handle null values during mapping.');
    }
    return _i2.TransactionFeeModel(fee: model.fee);
  }

  _i5.CurrencyEntity _map__i4$CurrencyModel_To__i5$CurrencyEntity(
      _i4.CurrencyModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CurrencyModel → CurrencyEntity failed because CurrencyModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CurrencyModel, CurrencyEntity> to handle null values during mapping.');
    }
    return _i5.CurrencyEntity(
      name: model.name,
      isoCode: model.isoCode,
      formatting: model.formatting,
      symbol: model.symbol,
    );
  }

  _i4.CurrencyModel _map__i5$CurrencyEntity_To__i4$CurrencyModel(
      _i5.CurrencyEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CurrencyEntity → CurrencyModel failed because CurrencyEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CurrencyEntity, CurrencyModel> to handle null values during mapping.');
    }
    return _i4.CurrencyModel(
      name: model.name,
      isoCode: model.isoCode,
      formatting: model.formatting,
      symbol: model.symbol,
    );
  }
}
