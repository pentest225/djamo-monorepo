// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/bill_customer_subscription_reference_entity.dart' as _i3;
import '../models/bill_customer_subscription_reference_model.dart' as _i2;

/// {@template package:domain/src/bills/_mappers/bills_auto_mapper.dart}
/// Available mappings:
/// - `BillCustomerSubscriptionReferenceModel` → `BillCustomerSubscriptionReferenceEntity`.
/// - `BillCustomerSubscriptionReferenceEntity` → `BillCustomerSubscriptionReferenceModel`.
/// {@endtemplate}
class $BillsAutoMapper implements _i1.AutoMapprInterface {
  const $BillsAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf ==
                _typeOf<_i2.BillCustomerSubscriptionReferenceModel>() ||
            sourceTypeOf ==
                _typeOf<_i2.BillCustomerSubscriptionReferenceModel?>()) &&
        (targetTypeOf ==
                _typeOf<_i3.BillCustomerSubscriptionReferenceEntity>() ||
            targetTypeOf ==
                _typeOf<_i3.BillCustomerSubscriptionReferenceEntity?>())) {
      return true;
    }
    if ((sourceTypeOf ==
                _typeOf<_i3.BillCustomerSubscriptionReferenceEntity>() ||
            sourceTypeOf ==
                _typeOf<_i3.BillCustomerSubscriptionReferenceEntity?>()) &&
        (targetTypeOf ==
                _typeOf<_i2.BillCustomerSubscriptionReferenceModel>() ||
            targetTypeOf ==
                _typeOf<_i2.BillCustomerSubscriptionReferenceModel?>())) {
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
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
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
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
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
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
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
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
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
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
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
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
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
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
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
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
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
    if ((sourceTypeOf ==
                _typeOf<_i2.BillCustomerSubscriptionReferenceModel>() ||
            sourceTypeOf ==
                _typeOf<_i2.BillCustomerSubscriptionReferenceModel?>()) &&
        (targetTypeOf ==
                _typeOf<_i3.BillCustomerSubscriptionReferenceEntity>() ||
            targetTypeOf ==
                _typeOf<_i3.BillCustomerSubscriptionReferenceEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$BillCustomerSubscriptionReferenceModel_To__i3$BillCustomerSubscriptionReferenceEntity(
          (model as _i2.BillCustomerSubscriptionReferenceModel?)) as TARGET);
    }
    if ((sourceTypeOf ==
                _typeOf<_i3.BillCustomerSubscriptionReferenceEntity>() ||
            sourceTypeOf ==
                _typeOf<_i3.BillCustomerSubscriptionReferenceEntity?>()) &&
        (targetTypeOf ==
                _typeOf<_i2.BillCustomerSubscriptionReferenceModel>() ||
            targetTypeOf ==
                _typeOf<_i2.BillCustomerSubscriptionReferenceModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$BillCustomerSubscriptionReferenceEntity_To__i2$BillCustomerSubscriptionReferenceModel(
          (model as _i3.BillCustomerSubscriptionReferenceEntity?)) as TARGET);
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
  /// {@macro package:domain/src/bills/_mappers/bills_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.BillCustomerSubscriptionReferenceEntity
      _map__i2$BillCustomerSubscriptionReferenceModel_To__i3$BillCustomerSubscriptionReferenceEntity(
          _i2.BillCustomerSubscriptionReferenceModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillCustomerSubscriptionReferenceModel → BillCustomerSubscriptionReferenceEntity failed because BillCustomerSubscriptionReferenceModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillCustomerSubscriptionReferenceModel, BillCustomerSubscriptionReferenceEntity> to handle null values during mapping.');
    }
    return _i3.BillCustomerSubscriptionReferenceEntity(
      id: model.id,
      billerId: model.billerId,
      subscriptionReference: model.subscriptionReference,
      isActive: model.isActive,
      clientId: model.clientId,
      label: model.label,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  _i2.BillCustomerSubscriptionReferenceModel
      _map__i3$BillCustomerSubscriptionReferenceEntity_To__i2$BillCustomerSubscriptionReferenceModel(
          _i3.BillCustomerSubscriptionReferenceEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillCustomerSubscriptionReferenceEntity → BillCustomerSubscriptionReferenceModel failed because BillCustomerSubscriptionReferenceEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillCustomerSubscriptionReferenceEntity, BillCustomerSubscriptionReferenceModel> to handle null values during mapping.');
    }
    return _i2.BillCustomerSubscriptionReferenceModel(
      id: model.id,
      billerId: model.billerId,
      subscriptionReference: model.subscriptionReference,
      isActive: model.isActive,
      clientId: model.clientId,
      label: model.label,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }
}
