// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/invest_account_entity.dart' as _i7;
import '../entities/invest_cashback_entity.dart' as _i5;
import '../entities/invest_product_balance_entity.dart' as _i9;
import '../entities/invest_product_entity.dart' as _i15;
import '../entities/invest_product_liquidative_entity.dart' as _i17;
import '../entities/invest_product_performance_entity.dart' as _i19;
import '../entities/invest_selling_entity.dart' as _i13;
import '../entities/invest_subscription_entity.dart' as _i11;
import '../entities/recurring_subscription_entity.dart' as _i3;
import '../models/invest_account_model.dart' as _i6;
import '../models/invest_cashback_model.dart' as _i4;
import '../models/invest_product_balance_model.dart' as _i8;
import '../models/invest_product_liquidative_model.dart' as _i16;
import '../models/invest_product_model.dart' as _i14;
import '../models/invest_product_performance_model.dart' as _i18;
import '../models/invest_selling_model.dart' as _i12;
import '../models/invest_subscription_model.dart' as _i10;
import '../models/recurring_subscription_model.dart' as _i2;

/// {@template package:domain/src/invest/_mappers/invest_auto_mapper.dart}
/// Available mappings:
/// - `RecurringSubscriptionModel` → `RecurringSubscriptionEntity`.
/// - `RecurringSubscriptionEntity` → `RecurringSubscriptionModel`.
/// - `InvestCashbackModel` → `InvestCashbackEntity`.
/// - `InvestCashbackEntity` → `InvestCashbackModel`.
/// - `InvestAccountModel` → `InvestAccountEntity`.
/// - `InvestAccountEntity` → `InvestAccountModel`.
/// - `InvestProductBalanceModel` → `InvestProductBalanceEntity`.
/// - `InvestProductBalanceEntity` → `InvestProductBalanceModel`.
/// - `InvestSubscriptionModel` → `InvestSubscriptionEntity`.
/// - `InvestSubscriptionEntity` → `InvestSubscriptionModel`.
/// - `InvestSellingModel` → `InvestSellingEntity`.
/// - `InvestSellingEntity` → `InvestSellingModel`.
/// - `InvestProductModel` → `InvestProductEntity`.
/// - `InvestProductEntity` → `InvestProductModel`.
/// - `InvestProductLiquidativeModel` → `InvestProductLiquidativeEntity`.
/// - `InvestProductLiquidativeEntity` → `InvestProductLiquidativeModel`.
/// - `InvestProductPerformanceModel` → `InvestProductPerformanceEntity`.
/// - `InvestProductPerformanceEntity` → `InvestProductPerformanceModel`.
/// {@endtemplate}
class $InvestAutoMapper implements _i1.AutoMapprInterface {
  const $InvestAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.RecurringSubscriptionModel>() ||
            sourceTypeOf == _typeOf<_i2.RecurringSubscriptionModel?>()) &&
        (targetTypeOf == _typeOf<_i3.RecurringSubscriptionEntity>() ||
            targetTypeOf == _typeOf<_i3.RecurringSubscriptionEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.RecurringSubscriptionEntity>() ||
            sourceTypeOf == _typeOf<_i3.RecurringSubscriptionEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.RecurringSubscriptionModel>() ||
            targetTypeOf == _typeOf<_i2.RecurringSubscriptionModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.InvestCashbackModel>() ||
            sourceTypeOf == _typeOf<_i4.InvestCashbackModel?>()) &&
        (targetTypeOf == _typeOf<_i5.InvestCashbackEntity>() ||
            targetTypeOf == _typeOf<_i5.InvestCashbackEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.InvestCashbackEntity>() ||
            sourceTypeOf == _typeOf<_i5.InvestCashbackEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.InvestCashbackModel>() ||
            targetTypeOf == _typeOf<_i4.InvestCashbackModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.InvestAccountModel>() ||
            sourceTypeOf == _typeOf<_i6.InvestAccountModel?>()) &&
        (targetTypeOf == _typeOf<_i7.InvestAccountEntity>() ||
            targetTypeOf == _typeOf<_i7.InvestAccountEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.InvestAccountEntity>() ||
            sourceTypeOf == _typeOf<_i7.InvestAccountEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.InvestAccountModel>() ||
            targetTypeOf == _typeOf<_i6.InvestAccountModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.InvestProductBalanceModel>() ||
            sourceTypeOf == _typeOf<_i8.InvestProductBalanceModel?>()) &&
        (targetTypeOf == _typeOf<_i9.InvestProductBalanceEntity>() ||
            targetTypeOf == _typeOf<_i9.InvestProductBalanceEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.InvestProductBalanceEntity>() ||
            sourceTypeOf == _typeOf<_i9.InvestProductBalanceEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.InvestProductBalanceModel>() ||
            targetTypeOf == _typeOf<_i8.InvestProductBalanceModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.InvestSubscriptionModel>() ||
            sourceTypeOf == _typeOf<_i10.InvestSubscriptionModel?>()) &&
        (targetTypeOf == _typeOf<_i11.InvestSubscriptionEntity>() ||
            targetTypeOf == _typeOf<_i11.InvestSubscriptionEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.InvestSubscriptionEntity>() ||
            sourceTypeOf == _typeOf<_i11.InvestSubscriptionEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.InvestSubscriptionModel>() ||
            targetTypeOf == _typeOf<_i10.InvestSubscriptionModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.InvestSellingModel>() ||
            sourceTypeOf == _typeOf<_i12.InvestSellingModel?>()) &&
        (targetTypeOf == _typeOf<_i13.InvestSellingEntity>() ||
            targetTypeOf == _typeOf<_i13.InvestSellingEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i13.InvestSellingEntity>() ||
            sourceTypeOf == _typeOf<_i13.InvestSellingEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.InvestSellingModel>() ||
            targetTypeOf == _typeOf<_i12.InvestSellingModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i14.InvestProductModel>() ||
            sourceTypeOf == _typeOf<_i14.InvestProductModel?>()) &&
        (targetTypeOf == _typeOf<_i15.InvestProductEntity>() ||
            targetTypeOf == _typeOf<_i15.InvestProductEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i15.InvestProductEntity>() ||
            sourceTypeOf == _typeOf<_i15.InvestProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.InvestProductModel>() ||
            targetTypeOf == _typeOf<_i14.InvestProductModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i16.InvestProductLiquidativeModel>() ||
            sourceTypeOf == _typeOf<_i16.InvestProductLiquidativeModel?>()) &&
        (targetTypeOf == _typeOf<_i17.InvestProductLiquidativeEntity>() ||
            targetTypeOf == _typeOf<_i17.InvestProductLiquidativeEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i17.InvestProductLiquidativeEntity>() ||
            sourceTypeOf == _typeOf<_i17.InvestProductLiquidativeEntity?>()) &&
        (targetTypeOf == _typeOf<_i16.InvestProductLiquidativeModel>() ||
            targetTypeOf == _typeOf<_i16.InvestProductLiquidativeModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i18.InvestProductPerformanceModel>() ||
            sourceTypeOf == _typeOf<_i18.InvestProductPerformanceModel?>()) &&
        (targetTypeOf == _typeOf<_i19.InvestProductPerformanceEntity>() ||
            targetTypeOf == _typeOf<_i19.InvestProductPerformanceEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i19.InvestProductPerformanceEntity>() ||
            sourceTypeOf == _typeOf<_i19.InvestProductPerformanceEntity?>()) &&
        (targetTypeOf == _typeOf<_i18.InvestProductPerformanceModel>() ||
            targetTypeOf == _typeOf<_i18.InvestProductPerformanceModel?>())) {
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
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
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
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
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
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
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
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
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
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
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
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
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
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
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
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.RecurringSubscriptionModel>() ||
            sourceTypeOf == _typeOf<_i2.RecurringSubscriptionModel?>()) &&
        (targetTypeOf == _typeOf<_i3.RecurringSubscriptionEntity>() ||
            targetTypeOf == _typeOf<_i3.RecurringSubscriptionEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$RecurringSubscriptionModel_To__i3$RecurringSubscriptionEntity(
          (model as _i2.RecurringSubscriptionModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.RecurringSubscriptionEntity>() ||
            sourceTypeOf == _typeOf<_i3.RecurringSubscriptionEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.RecurringSubscriptionModel>() ||
            targetTypeOf == _typeOf<_i2.RecurringSubscriptionModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$RecurringSubscriptionEntity_To__i2$RecurringSubscriptionModel(
          (model as _i3.RecurringSubscriptionEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.InvestCashbackModel>() ||
            sourceTypeOf == _typeOf<_i4.InvestCashbackModel?>()) &&
        (targetTypeOf == _typeOf<_i5.InvestCashbackEntity>() ||
            targetTypeOf == _typeOf<_i5.InvestCashbackEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$InvestCashbackModel_To__i5$InvestCashbackEntity(
          (model as _i4.InvestCashbackModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.InvestCashbackEntity>() ||
            sourceTypeOf == _typeOf<_i5.InvestCashbackEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.InvestCashbackModel>() ||
            targetTypeOf == _typeOf<_i4.InvestCashbackModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$InvestCashbackEntity_To__i4$InvestCashbackModel(
          (model as _i5.InvestCashbackEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.InvestAccountModel>() ||
            sourceTypeOf == _typeOf<_i6.InvestAccountModel?>()) &&
        (targetTypeOf == _typeOf<_i7.InvestAccountEntity>() ||
            targetTypeOf == _typeOf<_i7.InvestAccountEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$InvestAccountModel_To__i7$InvestAccountEntity(
          (model as _i6.InvestAccountModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.InvestAccountEntity>() ||
            sourceTypeOf == _typeOf<_i7.InvestAccountEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.InvestAccountModel>() ||
            targetTypeOf == _typeOf<_i6.InvestAccountModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$InvestAccountEntity_To__i6$InvestAccountModel(
          (model as _i7.InvestAccountEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.InvestProductBalanceModel>() ||
            sourceTypeOf == _typeOf<_i8.InvestProductBalanceModel?>()) &&
        (targetTypeOf == _typeOf<_i9.InvestProductBalanceEntity>() ||
            targetTypeOf == _typeOf<_i9.InvestProductBalanceEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$InvestProductBalanceModel_To__i9$InvestProductBalanceEntity(
          (model as _i8.InvestProductBalanceModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.InvestProductBalanceEntity>() ||
            sourceTypeOf == _typeOf<_i9.InvestProductBalanceEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.InvestProductBalanceModel>() ||
            targetTypeOf == _typeOf<_i8.InvestProductBalanceModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$InvestProductBalanceEntity_To__i8$InvestProductBalanceModel(
          (model as _i9.InvestProductBalanceEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.InvestSubscriptionModel>() ||
            sourceTypeOf == _typeOf<_i10.InvestSubscriptionModel?>()) &&
        (targetTypeOf == _typeOf<_i11.InvestSubscriptionEntity>() ||
            targetTypeOf == _typeOf<_i11.InvestSubscriptionEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$InvestSubscriptionModel_To__i11$InvestSubscriptionEntity(
          (model as _i10.InvestSubscriptionModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.InvestSubscriptionEntity>() ||
            sourceTypeOf == _typeOf<_i11.InvestSubscriptionEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.InvestSubscriptionModel>() ||
            targetTypeOf == _typeOf<_i10.InvestSubscriptionModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$InvestSubscriptionEntity_To__i10$InvestSubscriptionModel(
          (model as _i11.InvestSubscriptionEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.InvestSellingModel>() ||
            sourceTypeOf == _typeOf<_i12.InvestSellingModel?>()) &&
        (targetTypeOf == _typeOf<_i13.InvestSellingEntity>() ||
            targetTypeOf == _typeOf<_i13.InvestSellingEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$InvestSellingModel_To__i13$InvestSellingEntity(
          (model as _i12.InvestSellingModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i13.InvestSellingEntity>() ||
            sourceTypeOf == _typeOf<_i13.InvestSellingEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.InvestSellingModel>() ||
            targetTypeOf == _typeOf<_i12.InvestSellingModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i13$InvestSellingEntity_To__i12$InvestSellingModel(
          (model as _i13.InvestSellingEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i14.InvestProductModel>() ||
            sourceTypeOf == _typeOf<_i14.InvestProductModel?>()) &&
        (targetTypeOf == _typeOf<_i15.InvestProductEntity>() ||
            targetTypeOf == _typeOf<_i15.InvestProductEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i14$InvestProductModel_To__i15$InvestProductEntity(
          (model as _i14.InvestProductModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i15.InvestProductEntity>() ||
            sourceTypeOf == _typeOf<_i15.InvestProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.InvestProductModel>() ||
            targetTypeOf == _typeOf<_i14.InvestProductModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i15$InvestProductEntity_To__i14$InvestProductModel(
          (model as _i15.InvestProductEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i16.InvestProductLiquidativeModel>() ||
            sourceTypeOf == _typeOf<_i16.InvestProductLiquidativeModel?>()) &&
        (targetTypeOf == _typeOf<_i17.InvestProductLiquidativeEntity>() ||
            targetTypeOf == _typeOf<_i17.InvestProductLiquidativeEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i16$InvestProductLiquidativeModel_To__i17$InvestProductLiquidativeEntity(
          (model as _i16.InvestProductLiquidativeModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i17.InvestProductLiquidativeEntity>() ||
            sourceTypeOf == _typeOf<_i17.InvestProductLiquidativeEntity?>()) &&
        (targetTypeOf == _typeOf<_i16.InvestProductLiquidativeModel>() ||
            targetTypeOf == _typeOf<_i16.InvestProductLiquidativeModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i17$InvestProductLiquidativeEntity_To__i16$InvestProductLiquidativeModel(
          (model as _i17.InvestProductLiquidativeEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i18.InvestProductPerformanceModel>() ||
            sourceTypeOf == _typeOf<_i18.InvestProductPerformanceModel?>()) &&
        (targetTypeOf == _typeOf<_i19.InvestProductPerformanceEntity>() ||
            targetTypeOf == _typeOf<_i19.InvestProductPerformanceEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i18$InvestProductPerformanceModel_To__i19$InvestProductPerformanceEntity(
          (model as _i18.InvestProductPerformanceModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i19.InvestProductPerformanceEntity>() ||
            sourceTypeOf == _typeOf<_i19.InvestProductPerformanceEntity?>()) &&
        (targetTypeOf == _typeOf<_i18.InvestProductPerformanceModel>() ||
            targetTypeOf == _typeOf<_i18.InvestProductPerformanceModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i19$InvestProductPerformanceEntity_To__i18$InvestProductPerformanceModel(
          (model as _i19.InvestProductPerformanceEntity?)) as TARGET);
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
  /// {@macro package:domain/src/invest/_mappers/invest_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.RecurringSubscriptionEntity
      _map__i2$RecurringSubscriptionModel_To__i3$RecurringSubscriptionEntity(
          _i2.RecurringSubscriptionModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping RecurringSubscriptionModel → RecurringSubscriptionEntity failed because RecurringSubscriptionModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<RecurringSubscriptionModel, RecurringSubscriptionEntity> to handle null values during mapping.');
    }
    return _i3.RecurringSubscriptionEntity(
      id: model.id,
      recurringAmount: model.recurringAmount,
      totalAmountInvested: model.totalAmountInvested,
      status: model.status,
      frequency: model.frequency,
    );
  }

  _i2.RecurringSubscriptionModel
      _map__i3$RecurringSubscriptionEntity_To__i2$RecurringSubscriptionModel(
          _i3.RecurringSubscriptionEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping RecurringSubscriptionEntity → RecurringSubscriptionModel failed because RecurringSubscriptionEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<RecurringSubscriptionEntity, RecurringSubscriptionModel> to handle null values during mapping.');
    }
    return _i2.RecurringSubscriptionModel(
      id: model.id,
      recurringAmount: model.recurringAmount,
      totalAmountInvested: model.totalAmountInvested,
      status: model.status,
      frequency: model.frequency,
    );
  }

  _i5.InvestCashbackEntity
      _map__i4$InvestCashbackModel_To__i5$InvestCashbackEntity(
          _i4.InvestCashbackModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestCashbackModel → InvestCashbackEntity failed because InvestCashbackModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestCashbackModel, InvestCashbackEntity> to handle null values during mapping.');
    }
    return _i5.InvestCashbackEntity(
      description: model.description,
      investmentProductName: model.investmentProductName,
      percentage: model.percentage,
    );
  }

  _i4.InvestCashbackModel
      _map__i5$InvestCashbackEntity_To__i4$InvestCashbackModel(
          _i5.InvestCashbackEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestCashbackEntity → InvestCashbackModel failed because InvestCashbackEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestCashbackEntity, InvestCashbackModel> to handle null values during mapping.');
    }
    return _i4.InvestCashbackModel(
      description: model.description,
      investmentProductName: model.investmentProductName,
      percentage: model.percentage,
    );
  }

  _i7.InvestAccountEntity
      _map__i6$InvestAccountModel_To__i7$InvestAccountEntity(
          _i6.InvestAccountModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestAccountModel → InvestAccountEntity failed because InvestAccountModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestAccountModel, InvestAccountEntity> to handle null values during mapping.');
    }
    return _i7.InvestAccountEntity(
      id: model.id,
      status: model.status,
      products: model.products
          .map<_i9.InvestProductBalanceEntity>((value) =>
              _map__i8$InvestProductBalanceModel_To__i9$InvestProductBalanceEntity(
                  value))
          .toList(),
    );
  }

  _i6.InvestAccountModel _map__i7$InvestAccountEntity_To__i6$InvestAccountModel(
      _i7.InvestAccountEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestAccountEntity → InvestAccountModel failed because InvestAccountEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestAccountEntity, InvestAccountModel> to handle null values during mapping.');
    }
    return _i6.InvestAccountModel(
      id: model.id,
      status: model.status,
      products: model.products
          .map<_i8.InvestProductBalanceModel>((value) =>
              _map__i9$InvestProductBalanceEntity_To__i8$InvestProductBalanceModel(
                  value))
          .toList(),
    );
  }

  _i9.InvestProductBalanceEntity
      _map__i8$InvestProductBalanceModel_To__i9$InvestProductBalanceEntity(
          _i8.InvestProductBalanceModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestProductBalanceModel → InvestProductBalanceEntity failed because InvestProductBalanceModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestProductBalanceModel, InvestProductBalanceEntity> to handle null values during mapping.');
    }
    return _i9.InvestProductBalanceEntity(
      id: model.id,
      balance: model.balance,
      performance: model.performance,
    );
  }

  _i8.InvestProductBalanceModel
      _map__i9$InvestProductBalanceEntity_To__i8$InvestProductBalanceModel(
          _i9.InvestProductBalanceEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestProductBalanceEntity → InvestProductBalanceModel failed because InvestProductBalanceEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestProductBalanceEntity, InvestProductBalanceModel> to handle null values during mapping.');
    }
    return _i8.InvestProductBalanceModel(
      id: model.id,
      balance: model.balance,
      performance: model.performance,
    );
  }

  _i11.InvestSubscriptionEntity
      _map__i10$InvestSubscriptionModel_To__i11$InvestSubscriptionEntity(
          _i10.InvestSubscriptionModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestSubscriptionModel → InvestSubscriptionEntity failed because InvestSubscriptionModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestSubscriptionModel, InvestSubscriptionEntity> to handle null values during mapping.');
    }
    return _i11.InvestSubscriptionEntity(
      id: model.id,
      share: model.share,
      accountId: model.accountId,
      productId: model.productId,
      amount: model.amount,
      fees: model.fees,
      externalId: model.externalId,
      isActive: model.isActive,
      status: model.status,
      reference: model.reference,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  _i10.InvestSubscriptionModel
      _map__i11$InvestSubscriptionEntity_To__i10$InvestSubscriptionModel(
          _i11.InvestSubscriptionEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestSubscriptionEntity → InvestSubscriptionModel failed because InvestSubscriptionEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestSubscriptionEntity, InvestSubscriptionModel> to handle null values during mapping.');
    }
    return _i10.InvestSubscriptionModel(
      id: model.id,
      share: model.share,
      accountId: model.accountId,
      productId: model.productId,
      amount: model.amount,
      fees: model.fees,
      externalId: model.externalId,
      isActive: model.isActive,
      status: model.status,
      reference: model.reference,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  _i13.InvestSellingEntity
      _map__i12$InvestSellingModel_To__i13$InvestSellingEntity(
          _i12.InvestSellingModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestSellingModel → InvestSellingEntity failed because InvestSellingModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestSellingModel, InvestSellingEntity> to handle null values during mapping.');
    }
    return _i13.InvestSellingEntity(
      id: model.id,
      externalId: model.externalId,
      submittedAmount: model.submittedAmount,
      amount: model.amount,
      fees: model.fees,
      share: model.share,
      accountId: model.accountId,
      productId: model.productId,
      isActive: model.isActive,
      status: model.status,
      reference: model.reference,
      sellingType: model.sellingType,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  _i12.InvestSellingModel
      _map__i13$InvestSellingEntity_To__i12$InvestSellingModel(
          _i13.InvestSellingEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestSellingEntity → InvestSellingModel failed because InvestSellingEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestSellingEntity, InvestSellingModel> to handle null values during mapping.');
    }
    return _i12.InvestSellingModel(
      id: model.id,
      externalId: model.externalId,
      submittedAmount: model.submittedAmount,
      amount: model.amount,
      fees: model.fees,
      share: model.share,
      accountId: model.accountId,
      productId: model.productId,
      isActive: model.isActive,
      status: model.status,
      reference: model.reference,
      sellingType: model.sellingType,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  _i15.InvestProductEntity
      _map__i14$InvestProductModel_To__i15$InvestProductEntity(
          _i14.InvestProductModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestProductModel → InvestProductEntity failed because InvestProductModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestProductModel, InvestProductEntity> to handle null values during mapping.');
    }
    return _i15.InvestProductEntity(
      id: model.id,
      category: model.category,
      description: model.description,
      descriptionSummary: model.descriptionSummary,
      documentUrl: model.documentUrl,
      externalId: model.externalId,
      liquidative:
          _map__i16$InvestProductLiquidativeModel_To__i17$InvestProductLiquidativeEntity(
              model.liquidative),
      name: model.name,
      isActive: model.isActive,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      iconUrl: model.iconUrl,
      subscriptionFees: model.subscriptionFees,
      sellingFees: model.sellingFees,
      performance:
          _map__i18$InvestProductPerformanceModel_To__i19$InvestProductPerformanceEntity(
              model.performance),
      risk: model.risk,
      type: model.type,
    );
  }

  _i14.InvestProductModel
      _map__i15$InvestProductEntity_To__i14$InvestProductModel(
          _i15.InvestProductEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestProductEntity → InvestProductModel failed because InvestProductEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestProductEntity, InvestProductModel> to handle null values during mapping.');
    }
    return _i14.InvestProductModel(
      id: model.id,
      category: model.category,
      description: model.description,
      descriptionSummary: model.descriptionSummary,
      documentUrl: model.documentUrl,
      externalId: model.externalId,
      liquidative:
          _map__i17$InvestProductLiquidativeEntity_To__i16$InvestProductLiquidativeModel(
              model.liquidative),
      name: model.name,
      isActive: model.isActive,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      iconUrl: model.iconUrl,
      subscriptionFees: model.subscriptionFees,
      sellingFees: model.sellingFees,
      performance:
          _map__i19$InvestProductPerformanceEntity_To__i18$InvestProductPerformanceModel(
              model.performance),
      risk: model.risk,
      type: model.type,
    );
  }

  _i17.InvestProductLiquidativeEntity
      _map__i16$InvestProductLiquidativeModel_To__i17$InvestProductLiquidativeEntity(
          _i16.InvestProductLiquidativeModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestProductLiquidativeModel → InvestProductLiquidativeEntity failed because InvestProductLiquidativeModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestProductLiquidativeModel, InvestProductLiquidativeEntity> to handle null values during mapping.');
    }
    return _i17.InvestProductLiquidativeEntity(
      value: model.value,
      date: model.date,
    );
  }

  _i16.InvestProductLiquidativeModel
      _map__i17$InvestProductLiquidativeEntity_To__i16$InvestProductLiquidativeModel(
          _i17.InvestProductLiquidativeEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestProductLiquidativeEntity → InvestProductLiquidativeModel failed because InvestProductLiquidativeEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestProductLiquidativeEntity, InvestProductLiquidativeModel> to handle null values during mapping.');
    }
    return _i16.InvestProductLiquidativeModel(
      value: model.value,
      date: model.date,
    );
  }

  _i19.InvestProductPerformanceEntity
      _map__i18$InvestProductPerformanceModel_To__i19$InvestProductPerformanceEntity(
          _i18.InvestProductPerformanceModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestProductPerformanceModel → InvestProductPerformanceEntity failed because InvestProductPerformanceModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestProductPerformanceModel, InvestProductPerformanceEntity> to handle null values during mapping.');
    }
    return _i19.InvestProductPerformanceEntity(
      objective: model.objective,
      week: model.week,
      month: model.month,
      trimester: model.trimester,
      semester: model.semester,
      year: model.year,
      beginning: model.beginning,
    );
  }

  _i18.InvestProductPerformanceModel
      _map__i19$InvestProductPerformanceEntity_To__i18$InvestProductPerformanceModel(
          _i19.InvestProductPerformanceEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping InvestProductPerformanceEntity → InvestProductPerformanceModel failed because InvestProductPerformanceEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<InvestProductPerformanceEntity, InvestProductPerformanceModel> to handle null values during mapping.');
    }
    return _i18.InvestProductPerformanceModel(
      objective: model.objective,
      week: model.week,
      month: model.month,
      trimester: model.trimester,
      semester: model.semester,
      year: model.year,
      beginning: model.beginning,
    );
  }
}
