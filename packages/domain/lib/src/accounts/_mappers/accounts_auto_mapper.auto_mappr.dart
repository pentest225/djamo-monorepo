// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/account_entity.dart' as _i3;
import '../entities/account_subscription_entity.dart' as _i7;
import '../entities/monthly_credit_limit_entity.dart' as _i5;
import '../entities/subscription_config_entity.dart' as _i11;
import '../entities/subscription_counter_entity.dart' as _i9;
import '../entities/subscription_debt_entity.dart' as _i13;
import '../models/account_model.dart' as _i2;
import '../models/account_subscription_model.dart' as _i6;
import '../models/monthly_credit_limit_model.dart' as _i4;
import '../models/subscription_config_model.dart' as _i10;
import '../models/subscription_counter_model.dart' as _i8;
import '../models/subscription_debt_model.dart' as _i12;

/// {@template package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
/// Available mappings:
/// - `AccountModel` → `AccountEntity`.
/// - `AccountEntity` → `AccountModel`.
/// - `MonthlyCreditLimitModel` → `MonthlyCreditLimitEntity`.
/// - `MonthlyCreditLimitEntity` → `MonthlyCreditLimitModel`.
/// - `AccountSubscriptionModel` → `AccountSubscriptionEntity`.
/// - `AccountSubscriptionEntity` → `AccountSubscriptionModel`.
/// - `SubscriptionCounterModel` → `SubscriptionCounterEntity`.
/// - `SubscriptionCounterEntity` → `SubscriptionCounterModel`.
/// - `SubscriptionConfigModel` → `SubscriptionConfigEntity`.
/// - `SubscriptionConfigEntity` → `SubscriptionConfigModel`.
/// - `SubscriptionDebtModel` → `SubscriptionDebtEntity`.
/// - `SubscriptionDebtEntity` → `SubscriptionDebtModel`.
/// {@endtemplate}
class $AccountsAutoMapper implements _i1.AutoMapprInterface {
  const $AccountsAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.AccountModel>() ||
            sourceTypeOf == _typeOf<_i2.AccountModel?>()) &&
        (targetTypeOf == _typeOf<_i3.AccountEntity>() ||
            targetTypeOf == _typeOf<_i3.AccountEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.AccountEntity>() ||
            sourceTypeOf == _typeOf<_i3.AccountEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.AccountModel>() ||
            targetTypeOf == _typeOf<_i2.AccountModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.MonthlyCreditLimitModel>() ||
            sourceTypeOf == _typeOf<_i4.MonthlyCreditLimitModel?>()) &&
        (targetTypeOf == _typeOf<_i5.MonthlyCreditLimitEntity>() ||
            targetTypeOf == _typeOf<_i5.MonthlyCreditLimitEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.MonthlyCreditLimitEntity>() ||
            sourceTypeOf == _typeOf<_i5.MonthlyCreditLimitEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.MonthlyCreditLimitModel>() ||
            targetTypeOf == _typeOf<_i4.MonthlyCreditLimitModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.AccountSubscriptionModel>() ||
            sourceTypeOf == _typeOf<_i6.AccountSubscriptionModel?>()) &&
        (targetTypeOf == _typeOf<_i7.AccountSubscriptionEntity>() ||
            targetTypeOf == _typeOf<_i7.AccountSubscriptionEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.AccountSubscriptionEntity>() ||
            sourceTypeOf == _typeOf<_i7.AccountSubscriptionEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.AccountSubscriptionModel>() ||
            targetTypeOf == _typeOf<_i6.AccountSubscriptionModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.SubscriptionCounterModel>() ||
            sourceTypeOf == _typeOf<_i8.SubscriptionCounterModel?>()) &&
        (targetTypeOf == _typeOf<_i9.SubscriptionCounterEntity>() ||
            targetTypeOf == _typeOf<_i9.SubscriptionCounterEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.SubscriptionCounterEntity>() ||
            sourceTypeOf == _typeOf<_i9.SubscriptionCounterEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.SubscriptionCounterModel>() ||
            targetTypeOf == _typeOf<_i8.SubscriptionCounterModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.SubscriptionConfigModel>() ||
            sourceTypeOf == _typeOf<_i10.SubscriptionConfigModel?>()) &&
        (targetTypeOf == _typeOf<_i11.SubscriptionConfigEntity>() ||
            targetTypeOf == _typeOf<_i11.SubscriptionConfigEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.SubscriptionConfigEntity>() ||
            sourceTypeOf == _typeOf<_i11.SubscriptionConfigEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.SubscriptionConfigModel>() ||
            targetTypeOf == _typeOf<_i10.SubscriptionConfigModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.SubscriptionDebtModel>() ||
            sourceTypeOf == _typeOf<_i12.SubscriptionDebtModel?>()) &&
        (targetTypeOf == _typeOf<_i13.SubscriptionDebtEntity>() ||
            targetTypeOf == _typeOf<_i13.SubscriptionDebtEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i13.SubscriptionDebtEntity>() ||
            sourceTypeOf == _typeOf<_i13.SubscriptionDebtEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.SubscriptionDebtModel>() ||
            targetTypeOf == _typeOf<_i12.SubscriptionDebtModel?>())) {
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
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
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
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
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
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
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
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
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
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
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
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
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
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
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
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.AccountModel>() ||
            sourceTypeOf == _typeOf<_i2.AccountModel?>()) &&
        (targetTypeOf == _typeOf<_i3.AccountEntity>() ||
            targetTypeOf == _typeOf<_i3.AccountEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$AccountModel_To__i3$AccountEntity(
          (model as _i2.AccountModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.AccountEntity>() ||
            sourceTypeOf == _typeOf<_i3.AccountEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.AccountModel>() ||
            targetTypeOf == _typeOf<_i2.AccountModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$AccountEntity_To__i2$AccountModel(
          (model as _i3.AccountEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.MonthlyCreditLimitModel>() ||
            sourceTypeOf == _typeOf<_i4.MonthlyCreditLimitModel?>()) &&
        (targetTypeOf == _typeOf<_i5.MonthlyCreditLimitEntity>() ||
            targetTypeOf == _typeOf<_i5.MonthlyCreditLimitEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$MonthlyCreditLimitModel_To__i5$MonthlyCreditLimitEntity(
          (model as _i4.MonthlyCreditLimitModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.MonthlyCreditLimitEntity>() ||
            sourceTypeOf == _typeOf<_i5.MonthlyCreditLimitEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.MonthlyCreditLimitModel>() ||
            targetTypeOf == _typeOf<_i4.MonthlyCreditLimitModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$MonthlyCreditLimitEntity_To__i4$MonthlyCreditLimitModel(
          (model as _i5.MonthlyCreditLimitEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.AccountSubscriptionModel>() ||
            sourceTypeOf == _typeOf<_i6.AccountSubscriptionModel?>()) &&
        (targetTypeOf == _typeOf<_i7.AccountSubscriptionEntity>() ||
            targetTypeOf == _typeOf<_i7.AccountSubscriptionEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$AccountSubscriptionModel_To__i7$AccountSubscriptionEntity(
          (model as _i6.AccountSubscriptionModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.AccountSubscriptionEntity>() ||
            sourceTypeOf == _typeOf<_i7.AccountSubscriptionEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.AccountSubscriptionModel>() ||
            targetTypeOf == _typeOf<_i6.AccountSubscriptionModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$AccountSubscriptionEntity_To__i6$AccountSubscriptionModel(
          (model as _i7.AccountSubscriptionEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.SubscriptionCounterModel>() ||
            sourceTypeOf == _typeOf<_i8.SubscriptionCounterModel?>()) &&
        (targetTypeOf == _typeOf<_i9.SubscriptionCounterEntity>() ||
            targetTypeOf == _typeOf<_i9.SubscriptionCounterEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$SubscriptionCounterModel_To__i9$SubscriptionCounterEntity(
          (model as _i8.SubscriptionCounterModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.SubscriptionCounterEntity>() ||
            sourceTypeOf == _typeOf<_i9.SubscriptionCounterEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.SubscriptionCounterModel>() ||
            targetTypeOf == _typeOf<_i8.SubscriptionCounterModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$SubscriptionCounterEntity_To__i8$SubscriptionCounterModel(
          (model as _i9.SubscriptionCounterEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.SubscriptionConfigModel>() ||
            sourceTypeOf == _typeOf<_i10.SubscriptionConfigModel?>()) &&
        (targetTypeOf == _typeOf<_i11.SubscriptionConfigEntity>() ||
            targetTypeOf == _typeOf<_i11.SubscriptionConfigEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$SubscriptionConfigModel_To__i11$SubscriptionConfigEntity(
          (model as _i10.SubscriptionConfigModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.SubscriptionConfigEntity>() ||
            sourceTypeOf == _typeOf<_i11.SubscriptionConfigEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.SubscriptionConfigModel>() ||
            targetTypeOf == _typeOf<_i10.SubscriptionConfigModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$SubscriptionConfigEntity_To__i10$SubscriptionConfigModel(
          (model as _i11.SubscriptionConfigEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.SubscriptionDebtModel>() ||
            sourceTypeOf == _typeOf<_i12.SubscriptionDebtModel?>()) &&
        (targetTypeOf == _typeOf<_i13.SubscriptionDebtEntity>() ||
            targetTypeOf == _typeOf<_i13.SubscriptionDebtEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$SubscriptionDebtModel_To__i13$SubscriptionDebtEntity(
          (model as _i12.SubscriptionDebtModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i13.SubscriptionDebtEntity>() ||
            sourceTypeOf == _typeOf<_i13.SubscriptionDebtEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.SubscriptionDebtModel>() ||
            targetTypeOf == _typeOf<_i12.SubscriptionDebtModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i13$SubscriptionDebtEntity_To__i12$SubscriptionDebtModel(
          (model as _i13.SubscriptionDebtEntity?)) as TARGET);
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
  /// {@macro package:domain/src/accounts/_mappers/accounts_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.AccountEntity _map__i2$AccountModel_To__i3$AccountEntity(
      _i2.AccountModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping AccountModel → AccountEntity failed because AccountModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<AccountModel, AccountEntity> to handle null values during mapping.');
    }
    return _i3.AccountEntity(
      id: model.id,
      balance: model.balance,
      status: model.status,
      type: model.type,
      lastFourDigits: model.lastFourDigits,
      expirationDate: model.expirationDate,
      isDefaultAccount: model.isDefaultAccount,
      isVirtualCard: model.isVirtualCard,
      category: model.category,
      daysLeftUntilExpiration: model.daysLeftUntilExpiration,
      hasCard: model.hasCard,
      isDestroyedAfterNSFs: model.isDestroyedAfterNSFs,
      isSuspendedAfterNSFs: model.isSuspendedAfterNSFs,
      monthlyCreditLimit:
          _map__i4$MonthlyCreditLimitModel_To__i5$MonthlyCreditLimitEntity(
              model.monthlyCreditLimit),
      destroyedAt: model.destroyedAt,
    );
  }

  _i2.AccountModel _map__i3$AccountEntity_To__i2$AccountModel(
      _i3.AccountEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping AccountEntity → AccountModel failed because AccountEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<AccountEntity, AccountModel> to handle null values during mapping.');
    }
    return _i2.AccountModel(
      id: model.id,
      balance: model.balance,
      status: model.status,
      type: model.type,
      lastFourDigits: model.lastFourDigits,
      expirationDate: model.expirationDate,
      isDefaultAccount: model.isDefaultAccount,
      isVirtualCard: model.isVirtualCard,
      category: model.category,
      hasCard: model.hasCard,
      isDestroyedAfterNSFs: model.isDestroyedAfterNSFs,
      isSuspendedAfterNSFs: model.isSuspendedAfterNSFs,
      monthlyCreditLimit:
          _map__i5$MonthlyCreditLimitEntity_To__i4$MonthlyCreditLimitModel(
              model.monthlyCreditLimit),
      daysLeftUntilExpiration: model.daysLeftUntilExpiration,
      destroyedAt: model.destroyedAt,
    );
  }

  _i5.MonthlyCreditLimitEntity
      _map__i4$MonthlyCreditLimitModel_To__i5$MonthlyCreditLimitEntity(
          _i4.MonthlyCreditLimitModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MonthlyCreditLimitModel → MonthlyCreditLimitEntity failed because MonthlyCreditLimitModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MonthlyCreditLimitModel, MonthlyCreditLimitEntity> to handle null values during mapping.');
    }
    return _i5.MonthlyCreditLimitEntity(
      amount: model.amount,
      remainingAmount: model.remainingAmount,
    );
  }

  _i4.MonthlyCreditLimitModel
      _map__i5$MonthlyCreditLimitEntity_To__i4$MonthlyCreditLimitModel(
          _i5.MonthlyCreditLimitEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MonthlyCreditLimitEntity → MonthlyCreditLimitModel failed because MonthlyCreditLimitEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MonthlyCreditLimitEntity, MonthlyCreditLimitModel> to handle null values during mapping.');
    }
    return _i4.MonthlyCreditLimitModel(
      amount: model.amount,
      remainingAmount: model.remainingAmount,
    );
  }

  _i7.AccountSubscriptionEntity
      _map__i6$AccountSubscriptionModel_To__i7$AccountSubscriptionEntity(
          _i6.AccountSubscriptionModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping AccountSubscriptionModel → AccountSubscriptionEntity failed because AccountSubscriptionModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<AccountSubscriptionModel, AccountSubscriptionEntity> to handle null values during mapping.');
    }
    return _i7.AccountSubscriptionEntity(
      id: model.id,
      activationDate: model.activationDate,
      expirationDate: model.expirationDate,
      productName: model.productName,
      productId: model.productId,
      productIdentifier: model.productIdentifier,
      configuration:
          _map__i10$SubscriptionConfigModel_To__i11$SubscriptionConfigEntity(
              model.configuration),
      counters: model.counters
          .map<_i9.SubscriptionCounterEntity>((value) =>
              _map__i8$SubscriptionCounterModel_To__i9$SubscriptionCounterEntity(
                  value))
          .toList(),
      nextSubscriptionProductId: model.nextSubscriptionProductId,
      hasPremiumSubscription: model.hasPremiumSubscription,
      isGiveaway: model.isGiveaway,
      giveawayReason: model.giveawayReason,
    );
  }

  _i6.AccountSubscriptionModel
      _map__i7$AccountSubscriptionEntity_To__i6$AccountSubscriptionModel(
          _i7.AccountSubscriptionEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping AccountSubscriptionEntity → AccountSubscriptionModel failed because AccountSubscriptionEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<AccountSubscriptionEntity, AccountSubscriptionModel> to handle null values during mapping.');
    }
    return _i6.AccountSubscriptionModel(
      id: model.id,
      activationDate: model.activationDate,
      expirationDate: model.expirationDate,
      productName: model.productName,
      productId: model.productId,
      productIdentifier: model.productIdentifier,
      configuration:
          _map__i11$SubscriptionConfigEntity_To__i10$SubscriptionConfigModel(
              model.configuration),
      counters: model.counters
          .map<_i8.SubscriptionCounterModel>((value) =>
              _map__i9$SubscriptionCounterEntity_To__i8$SubscriptionCounterModel(
                  value))
          .toList(),
      nextSubscriptionProductId: model.nextSubscriptionProductId,
      hasPremiumSubscription: model.hasPremiumSubscription,
      isGiveaway: model.isGiveaway,
      giveawayReason: model.giveawayReason,
    );
  }

  _i9.SubscriptionCounterEntity
      _map__i8$SubscriptionCounterModel_To__i9$SubscriptionCounterEntity(
          _i8.SubscriptionCounterModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SubscriptionCounterModel → SubscriptionCounterEntity failed because SubscriptionCounterModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SubscriptionCounterModel, SubscriptionCounterEntity> to handle null values during mapping.');
    }
    return _i9.SubscriptionCounterEntity(
      id: model.id,
      label: model.label,
      billingLabel: model.billingLabel,
      type: model.type,
      rate: model.rate,
      value: model.value,
      maximum: model.maximum,
      fee: model.fee,
      withLoader: model.withLoader,
    );
  }

  _i8.SubscriptionCounterModel
      _map__i9$SubscriptionCounterEntity_To__i8$SubscriptionCounterModel(
          _i9.SubscriptionCounterEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SubscriptionCounterEntity → SubscriptionCounterModel failed because SubscriptionCounterEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SubscriptionCounterEntity, SubscriptionCounterModel> to handle null values during mapping.');
    }
    return _i8.SubscriptionCounterModel(
      id: model.id,
      label: model.label,
      billingLabel: model.billingLabel,
      type: model.type,
      rate: model.rate,
      value: model.value,
      maximum: model.maximum,
      fee: model.fee,
      withLoader: model.withLoader,
    );
  }

  _i11.SubscriptionConfigEntity
      _map__i10$SubscriptionConfigModel_To__i11$SubscriptionConfigEntity(
          _i10.SubscriptionConfigModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SubscriptionConfigModel → SubscriptionConfigEntity failed because SubscriptionConfigModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SubscriptionConfigModel, SubscriptionConfigEntity> to handle null values during mapping.');
    }
    return _i11.SubscriptionConfigEntity(
      cardCost: model.cardCost,
      recurringFee: model.recurringFee,
      topUpFee: model.topUpFee,
      freeCashinLimit: model.freeCashinLimit,
      processorCashinRate: model.processorCashinRate,
      freeCashinPeriod: model.freeCashinPeriod,
      referralReward: model.referralReward,
      callToActionButtonLabel: model.callToActionButtonLabel,
      monthlyFeeText: model.monthlyFeeText,
      initialTopUp: model.initialTopUp,
      balanceLimit: model.balanceLimit,
      monthlyCashinLimit: model.monthlyCashinLimit,
      dailyCashinLimit: model.dailyCashinLimit,
      cardToCardTransferLimit: model.cardToCardTransferLimit,
      dailyTransferCardToCardLimit: model.dailyTransferCardToCardLimit,
      withdrawalLimit: model.withdrawalLimit,
    );
  }

  _i10.SubscriptionConfigModel
      _map__i11$SubscriptionConfigEntity_To__i10$SubscriptionConfigModel(
          _i11.SubscriptionConfigEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SubscriptionConfigEntity → SubscriptionConfigModel failed because SubscriptionConfigEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SubscriptionConfigEntity, SubscriptionConfigModel> to handle null values during mapping.');
    }
    return _i10.SubscriptionConfigModel(
      cardCost: model.cardCost,
      recurringFee: model.recurringFee,
      topUpFee: model.topUpFee,
      freeCashinLimit: model.freeCashinLimit,
      processorCashinRate: model.processorCashinRate,
      freeCashinPeriod: model.freeCashinPeriod,
      referralReward: model.referralReward,
      callToActionButtonLabel: model.callToActionButtonLabel,
      monthlyFeeText: model.monthlyFeeText,
      initialTopUp: model.initialTopUp,
      balanceLimit: model.balanceLimit,
      monthlyCashinLimit: model.monthlyCashinLimit,
      dailyCashinLimit: model.dailyCashinLimit,
      cardToCardTransferLimit: model.cardToCardTransferLimit,
      dailyTransferCardToCardLimit: model.dailyTransferCardToCardLimit,
      withdrawalLimit: model.withdrawalLimit,
    );
  }

  _i13.SubscriptionDebtEntity
      _map__i12$SubscriptionDebtModel_To__i13$SubscriptionDebtEntity(
          _i12.SubscriptionDebtModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SubscriptionDebtModel → SubscriptionDebtEntity failed because SubscriptionDebtModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SubscriptionDebtModel, SubscriptionDebtEntity> to handle null values during mapping.');
    }
    return _i13.SubscriptionDebtEntity(balance: model.balance);
  }

  _i12.SubscriptionDebtModel
      _map__i13$SubscriptionDebtEntity_To__i12$SubscriptionDebtModel(
          _i13.SubscriptionDebtEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SubscriptionDebtEntity → SubscriptionDebtModel failed because SubscriptionDebtEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SubscriptionDebtEntity, SubscriptionDebtModel> to handle null values during mapping.');
    }
    return _i12.SubscriptionDebtModel(balance: model.balance);
  }
}
