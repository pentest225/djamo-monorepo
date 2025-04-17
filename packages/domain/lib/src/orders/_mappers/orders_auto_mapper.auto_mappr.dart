// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/discount_entity.dart' as _i9;
import '../entities/order_entity.dart' as _i3;
import '../entities/order_location_entity.dart' as _i7;
import '../entities/order_product_entity.dart' as _i5;
import '../models/discount_model.dart' as _i8;
import '../models/order_location_model.dart' as _i6;
import '../models/order_model.dart' as _i2;
import '../models/order_product_model.dart' as _i4;

/// {@template package:domain/src/orders/_mappers/orders_auto_mapper.dart}
/// Available mappings:
/// - `OrderModel` → `OrderEntity`.
/// - `OrderEntity` → `OrderModel`.
/// - `OrderProductModel` → `OrderProductEntity`.
/// - `OrderProductEntity` → `OrderProductModel`.
/// - `OrderLocationModel` → `OrderLocationEntity`.
/// - `OrderLocationEntity` → `OrderLocationModel`.
/// - `DiscountModel` → `DiscountEntity`.
/// - `DiscountEntity` → `DiscountModel`.
/// {@endtemplate}
class $OrdersAutoMapper implements _i1.AutoMapprInterface {
  const $OrdersAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.OrderModel>() ||
            sourceTypeOf == _typeOf<_i2.OrderModel?>()) &&
        (targetTypeOf == _typeOf<_i3.OrderEntity>() ||
            targetTypeOf == _typeOf<_i3.OrderEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.OrderEntity>() ||
            sourceTypeOf == _typeOf<_i3.OrderEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.OrderModel>() ||
            targetTypeOf == _typeOf<_i2.OrderModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.OrderProductModel>() ||
            sourceTypeOf == _typeOf<_i4.OrderProductModel?>()) &&
        (targetTypeOf == _typeOf<_i5.OrderProductEntity>() ||
            targetTypeOf == _typeOf<_i5.OrderProductEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.OrderProductEntity>() ||
            sourceTypeOf == _typeOf<_i5.OrderProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.OrderProductModel>() ||
            targetTypeOf == _typeOf<_i4.OrderProductModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.OrderLocationModel>() ||
            sourceTypeOf == _typeOf<_i6.OrderLocationModel?>()) &&
        (targetTypeOf == _typeOf<_i7.OrderLocationEntity>() ||
            targetTypeOf == _typeOf<_i7.OrderLocationEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.OrderLocationEntity>() ||
            sourceTypeOf == _typeOf<_i7.OrderLocationEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.OrderLocationModel>() ||
            targetTypeOf == _typeOf<_i6.OrderLocationModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.DiscountModel>() ||
            sourceTypeOf == _typeOf<_i8.DiscountModel?>()) &&
        (targetTypeOf == _typeOf<_i9.DiscountEntity>() ||
            targetTypeOf == _typeOf<_i9.DiscountEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.DiscountEntity>() ||
            sourceTypeOf == _typeOf<_i9.DiscountEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.DiscountModel>() ||
            targetTypeOf == _typeOf<_i8.DiscountModel?>())) {
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
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
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
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
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
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
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
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
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
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
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
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
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
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
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
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.OrderModel>() ||
            sourceTypeOf == _typeOf<_i2.OrderModel?>()) &&
        (targetTypeOf == _typeOf<_i3.OrderEntity>() ||
            targetTypeOf == _typeOf<_i3.OrderEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$OrderModel_To__i3$OrderEntity((model as _i2.OrderModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.OrderEntity>() ||
            sourceTypeOf == _typeOf<_i3.OrderEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.OrderModel>() ||
            targetTypeOf == _typeOf<_i2.OrderModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$OrderEntity_To__i2$OrderModel(
          (model as _i3.OrderEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.OrderProductModel>() ||
            sourceTypeOf == _typeOf<_i4.OrderProductModel?>()) &&
        (targetTypeOf == _typeOf<_i5.OrderProductEntity>() ||
            targetTypeOf == _typeOf<_i5.OrderProductEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$OrderProductModel_To__i5$OrderProductEntity(
          (model as _i4.OrderProductModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.OrderProductEntity>() ||
            sourceTypeOf == _typeOf<_i5.OrderProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.OrderProductModel>() ||
            targetTypeOf == _typeOf<_i4.OrderProductModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$OrderProductEntity_To__i4$OrderProductModel(
          (model as _i5.OrderProductEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.OrderLocationModel>() ||
            sourceTypeOf == _typeOf<_i6.OrderLocationModel?>()) &&
        (targetTypeOf == _typeOf<_i7.OrderLocationEntity>() ||
            targetTypeOf == _typeOf<_i7.OrderLocationEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$OrderLocationModel_To__i7$OrderLocationEntity(
          (model as _i6.OrderLocationModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.OrderLocationEntity>() ||
            sourceTypeOf == _typeOf<_i7.OrderLocationEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.OrderLocationModel>() ||
            targetTypeOf == _typeOf<_i6.OrderLocationModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$OrderLocationEntity_To__i6$OrderLocationModel(
          (model as _i7.OrderLocationEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.DiscountModel>() ||
            sourceTypeOf == _typeOf<_i8.DiscountModel?>()) &&
        (targetTypeOf == _typeOf<_i9.DiscountEntity>() ||
            targetTypeOf == _typeOf<_i9.DiscountEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$DiscountModel_To__i9$DiscountEntity(
          (model as _i8.DiscountModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.DiscountEntity>() ||
            sourceTypeOf == _typeOf<_i9.DiscountEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.DiscountModel>() ||
            targetTypeOf == _typeOf<_i8.DiscountModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$DiscountEntity_To__i8$DiscountModel(
          (model as _i9.DiscountEntity?)) as TARGET);
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
  /// {@macro package:domain/src/orders/_mappers/orders_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.OrderEntity _map__i2$OrderModel_To__i3$OrderEntity(
      _i2.OrderModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping OrderModel → OrderEntity failed because OrderModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<OrderModel, OrderEntity> to handle null values during mapping.');
    }
    return _i3.OrderEntity(
      id: model.id,
      createdAt: model.createdAt,
      product:
          _map__i4$OrderProductModel_To__i5$OrderProductEntity(model.product),
      deliveryLocation: _map__i6$OrderLocationModel_To__i7$OrderLocationEntity(
          model.deliveryLocation),
      pickupLocation: _map__i6$OrderLocationModel_To__i7$OrderLocationEntity(
          model.pickupLocation),
      homeLocation: _map__i6$OrderLocationModel_To__i7$OrderLocationEntity(
          model.homeLocation),
      deliveryDate: model.deliveryDate,
      type: model.type,
      deliveryTime: model.deliveryTime,
      profileComment: model.profileComment,
      status: model.status,
      trackingNumber: model.trackingNumber,
      cardId: model.cardId,
      lastFourDigits: model.lastFourDigits,
      kycTrials: model.kycTrials,
      extras: model.extras,
      discount: _map__i8$DiscountModel_To__i9$DiscountEntity(model.discount),
    );
  }

  _i2.OrderModel _map__i3$OrderEntity_To__i2$OrderModel(
      _i3.OrderEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping OrderEntity → OrderModel failed because OrderEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<OrderEntity, OrderModel> to handle null values during mapping.');
    }
    return _i2.OrderModel(
      id: model.id,
      createdAt: model.createdAt,
      product:
          _map__i5$OrderProductEntity_To__i4$OrderProductModel(model.product),
      deliveryLocation: _map__i7$OrderLocationEntity_To__i6$OrderLocationModel(
          model.deliveryLocation),
      pickupLocation: _map__i7$OrderLocationEntity_To__i6$OrderLocationModel(
          model.pickupLocation),
      homeLocation: _map__i7$OrderLocationEntity_To__i6$OrderLocationModel(
          model.homeLocation),
      deliveryDate: model.deliveryDate,
      type: model.type,
      deliveryTime: model.deliveryTime,
      profileComment: model.profileComment,
      status: model.status,
      trackingNumber: model.trackingNumber,
      cardId: model.cardId,
      lastFourDigits: model.lastFourDigits,
      kycTrials: model.kycTrials,
      extras: model.extras,
      discount: _map__i9$DiscountEntity_To__i8$DiscountModel(model.discount),
    );
  }

  _i5.OrderProductEntity _map__i4$OrderProductModel_To__i5$OrderProductEntity(
      _i4.OrderProductModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping OrderProductModel → OrderProductEntity failed because OrderProductModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<OrderProductModel, OrderProductEntity> to handle null values during mapping.');
    }
    return _i5.OrderProductEntity(
      id: model.id,
      name: model.name,
      identifier: model.identifier,
    );
  }

  _i4.OrderProductModel _map__i5$OrderProductEntity_To__i4$OrderProductModel(
      _i5.OrderProductEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping OrderProductEntity → OrderProductModel failed because OrderProductEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<OrderProductEntity, OrderProductModel> to handle null values during mapping.');
    }
    return _i4.OrderProductModel(
      id: model.id,
      name: model.name,
      identifier: model.identifier,
    );
  }

  _i7.OrderLocationEntity
      _map__i6$OrderLocationModel_To__i7$OrderLocationEntity(
          _i6.OrderLocationModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping OrderLocationModel → OrderLocationEntity failed because OrderLocationModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<OrderLocationModel, OrderLocationEntity> to handle null values during mapping.');
    }
    return _i7.OrderLocationEntity(
      id: model.id,
      name: model.name,
    );
  }

  _i6.OrderLocationModel _map__i7$OrderLocationEntity_To__i6$OrderLocationModel(
      _i7.OrderLocationEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping OrderLocationEntity → OrderLocationModel failed because OrderLocationEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<OrderLocationEntity, OrderLocationModel> to handle null values during mapping.');
    }
    return _i6.OrderLocationModel(
      id: model.id,
      name: model.name,
    );
  }

  _i9.DiscountEntity _map__i8$DiscountModel_To__i9$DiscountEntity(
      _i8.DiscountModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping DiscountModel → DiscountEntity failed because DiscountModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<DiscountModel, DiscountEntity> to handle null values during mapping.');
    }
    return _i9.DiscountEntity(
      id: model.id,
      startDate: model.startDate,
      endDate: model.endDate,
      percentage: model.percentage,
      cardPrice: model.cardPrice,
      limit: model.limit,
      clientId: model.clientId,
    );
  }

  _i8.DiscountModel _map__i9$DiscountEntity_To__i8$DiscountModel(
      _i9.DiscountEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping DiscountEntity → DiscountModel failed because DiscountEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<DiscountEntity, DiscountModel> to handle null values during mapping.');
    }
    return _i8.DiscountModel(
      id: model.id,
      startDate: model.startDate,
      endDate: model.endDate,
      percentage: model.percentage,
      cardPrice: model.cardPrice,
      limit: model.limit,
      clientId: model.clientId,
    );
  }
}
