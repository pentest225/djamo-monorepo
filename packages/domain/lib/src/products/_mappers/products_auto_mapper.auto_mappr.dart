// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/product_counter_entity.dart' as _i5;
import '../entities/product_entity.dart' as _i7;
import '../entities/product_property_entity.dart' as _i3;
import '../models/product_counter_model.dart' as _i4;
import '../models/product_model.dart' as _i6;
import '../models/product_property_model.dart' as _i2;

/// {@template package:domain/src/products/_mappers/products_auto_mapper.dart}
/// Available mappings:
/// - `ProductPropertyModel` → `ProductPropertyEntity`.
/// - `ProductPropertyEntity` → `ProductPropertyModel`.
/// - `ProductCounterModel` → `ProductCounterEntity`.
/// - `ProductCounterEntity` → `ProductCounterModel`.
/// - `ProductModel` → `ProductEntity`.
/// - `ProductEntity` → `ProductModel`.
/// {@endtemplate}
class $ProductsAutoMapper implements _i1.AutoMapprInterface {
  const $ProductsAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.ProductPropertyModel>() ||
            sourceTypeOf == _typeOf<_i2.ProductPropertyModel?>()) &&
        (targetTypeOf == _typeOf<_i3.ProductPropertyEntity>() ||
            targetTypeOf == _typeOf<_i3.ProductPropertyEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.ProductPropertyEntity>() ||
            sourceTypeOf == _typeOf<_i3.ProductPropertyEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.ProductPropertyModel>() ||
            targetTypeOf == _typeOf<_i2.ProductPropertyModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.ProductCounterModel>() ||
            sourceTypeOf == _typeOf<_i4.ProductCounterModel?>()) &&
        (targetTypeOf == _typeOf<_i5.ProductCounterEntity>() ||
            targetTypeOf == _typeOf<_i5.ProductCounterEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.ProductCounterEntity>() ||
            sourceTypeOf == _typeOf<_i5.ProductCounterEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.ProductCounterModel>() ||
            targetTypeOf == _typeOf<_i4.ProductCounterModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.ProductModel>() ||
            sourceTypeOf == _typeOf<_i6.ProductModel?>()) &&
        (targetTypeOf == _typeOf<_i7.ProductEntity>() ||
            targetTypeOf == _typeOf<_i7.ProductEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.ProductEntity>() ||
            sourceTypeOf == _typeOf<_i7.ProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.ProductModel>() ||
            targetTypeOf == _typeOf<_i6.ProductModel?>())) {
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
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
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
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
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
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
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
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
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
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
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
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
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
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
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
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.ProductPropertyModel>() ||
            sourceTypeOf == _typeOf<_i2.ProductPropertyModel?>()) &&
        (targetTypeOf == _typeOf<_i3.ProductPropertyEntity>() ||
            targetTypeOf == _typeOf<_i3.ProductPropertyEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$ProductPropertyModel_To__i3$ProductPropertyEntity(
          (model as _i2.ProductPropertyModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.ProductPropertyEntity>() ||
            sourceTypeOf == _typeOf<_i3.ProductPropertyEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.ProductPropertyModel>() ||
            targetTypeOf == _typeOf<_i2.ProductPropertyModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$ProductPropertyEntity_To__i2$ProductPropertyModel(
          (model as _i3.ProductPropertyEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.ProductCounterModel>() ||
            sourceTypeOf == _typeOf<_i4.ProductCounterModel?>()) &&
        (targetTypeOf == _typeOf<_i5.ProductCounterEntity>() ||
            targetTypeOf == _typeOf<_i5.ProductCounterEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$ProductCounterModel_To__i5$ProductCounterEntity(
          (model as _i4.ProductCounterModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.ProductCounterEntity>() ||
            sourceTypeOf == _typeOf<_i5.ProductCounterEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.ProductCounterModel>() ||
            targetTypeOf == _typeOf<_i4.ProductCounterModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$ProductCounterEntity_To__i4$ProductCounterModel(
          (model as _i5.ProductCounterEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.ProductModel>() ||
            sourceTypeOf == _typeOf<_i6.ProductModel?>()) &&
        (targetTypeOf == _typeOf<_i7.ProductEntity>() ||
            targetTypeOf == _typeOf<_i7.ProductEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$ProductModel_To__i7$ProductEntity(
          (model as _i6.ProductModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.ProductEntity>() ||
            sourceTypeOf == _typeOf<_i7.ProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.ProductModel>() ||
            targetTypeOf == _typeOf<_i6.ProductModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$ProductEntity_To__i6$ProductModel(
          (model as _i7.ProductEntity?)) as TARGET);
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
  /// {@macro package:domain/src/products/_mappers/products_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.ProductPropertyEntity
      _map__i2$ProductPropertyModel_To__i3$ProductPropertyEntity(
          _i2.ProductPropertyModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProductPropertyModel → ProductPropertyEntity failed because ProductPropertyModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProductPropertyModel, ProductPropertyEntity> to handle null values during mapping.');
    }
    return _i3.ProductPropertyEntity(
      id: model.id,
      isActive: model.isActive,
      label: model.label,
      order: model.order,
    );
  }

  _i2.ProductPropertyModel
      _map__i3$ProductPropertyEntity_To__i2$ProductPropertyModel(
          _i3.ProductPropertyEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProductPropertyEntity → ProductPropertyModel failed because ProductPropertyEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProductPropertyEntity, ProductPropertyModel> to handle null values during mapping.');
    }
    return _i2.ProductPropertyModel(
      id: model.id,
      isActive: model.isActive,
      label: model.label,
      order: model.order,
    );
  }

  _i5.ProductCounterEntity
      _map__i4$ProductCounterModel_To__i5$ProductCounterEntity(
          _i4.ProductCounterModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProductCounterModel → ProductCounterEntity failed because ProductCounterModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProductCounterModel, ProductCounterEntity> to handle null values during mapping.');
    }
    return _i5.ProductCounterEntity(
      id: model.id,
      label: model.label,
      transactionLabel: model.transactionLabel,
      billingLabel: model.billingLabel,
      type: model.type,
    );
  }

  _i4.ProductCounterModel
      _map__i5$ProductCounterEntity_To__i4$ProductCounterModel(
          _i5.ProductCounterEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProductCounterEntity → ProductCounterModel failed because ProductCounterEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProductCounterEntity, ProductCounterModel> to handle null values during mapping.');
    }
    return _i4.ProductCounterModel(
      id: model.id,
      label: model.label,
      transactionLabel: model.transactionLabel,
      billingLabel: model.billingLabel,
      type: model.type,
    );
  }

  _i7.ProductEntity _map__i6$ProductModel_To__i7$ProductEntity(
      _i6.ProductModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProductModel → ProductEntity failed because ProductModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProductModel, ProductEntity> to handle null values during mapping.');
    }
    return _i7.ProductEntity(
      id: model.id,
      name: model.name,
      type: model.type,
      identifier: model.identifier,
      counters: model.counters
          .map<_i5.ProductCounterEntity>((value) =>
              _map__i4$ProductCounterModel_To__i5$ProductCounterEntity(value))
          .toList(),
      properties: model.properties
          .map<_i3.ProductPropertyEntity>((value) =>
              _map__i2$ProductPropertyModel_To__i3$ProductPropertyEntity(value))
          .toList(),
      configuration: model.configuration,
    );
  }

  _i6.ProductModel _map__i7$ProductEntity_To__i6$ProductModel(
      _i7.ProductEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProductEntity → ProductModel failed because ProductEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProductEntity, ProductModel> to handle null values during mapping.');
    }
    return _i6.ProductModel(
      id: model.id,
      name: model.name,
      type: model.type,
      identifier: model.identifier,
      counters: model.counters
          .map<_i4.ProductCounterModel>((value) =>
              _map__i5$ProductCounterEntity_To__i4$ProductCounterModel(value))
          .toList(),
      properties: model.properties
          .map<_i2.ProductPropertyModel>((value) =>
              _map__i3$ProductPropertyEntity_To__i2$ProductPropertyModel(value))
          .toList(),
      configuration: model.configuration,
    );
  }
}
