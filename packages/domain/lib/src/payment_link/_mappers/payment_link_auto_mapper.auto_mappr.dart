// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/charge_entity.dart' as _i5;
import '../entities/company_entity.dart' as _i9;
import '../entities/fees_entity.dart' as _i7;
import '../entities/payment_link_transaction_entity.dart' as _i3;
import '../models/charge_model.dart' as _i4;
import '../models/company_model.dart' as _i8;
import '../models/fees_model.dart' as _i6;
import '../models/payment_link_transaction_model.dart' as _i2;

/// {@template package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
/// Available mappings:
/// - `PaymentLinkTransactionModel` → `PaymentLinkTransactionEntity`.
/// - `PaymentLinkTransactionEntity` → `PaymentLinkTransactionModel`.
/// - `ChargeModel` → `ChargeEntity`.
/// - `ChargeEntity` → `ChargeModel`.
/// - `FeesModel` → `FeesEntity`.
/// - `FeesEntity` → `FeesModel`.
/// - `CompanyModel` → `CompanyEntity`.
/// - `CompanyEntity` → `CompanyModel`.
/// {@endtemplate}
class $PaymentLinkAutoMapper implements _i1.AutoMapprInterface {
  const $PaymentLinkAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.PaymentLinkTransactionModel>() ||
            sourceTypeOf == _typeOf<_i2.PaymentLinkTransactionModel?>()) &&
        (targetTypeOf == _typeOf<_i3.PaymentLinkTransactionEntity>() ||
            targetTypeOf == _typeOf<_i3.PaymentLinkTransactionEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.PaymentLinkTransactionEntity>() ||
            sourceTypeOf == _typeOf<_i3.PaymentLinkTransactionEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.PaymentLinkTransactionModel>() ||
            targetTypeOf == _typeOf<_i2.PaymentLinkTransactionModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.ChargeModel>() ||
            sourceTypeOf == _typeOf<_i4.ChargeModel?>()) &&
        (targetTypeOf == _typeOf<_i5.ChargeEntity>() ||
            targetTypeOf == _typeOf<_i5.ChargeEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.ChargeEntity>() ||
            sourceTypeOf == _typeOf<_i5.ChargeEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.ChargeModel>() ||
            targetTypeOf == _typeOf<_i4.ChargeModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.FeesModel>() ||
            sourceTypeOf == _typeOf<_i6.FeesModel?>()) &&
        (targetTypeOf == _typeOf<_i7.FeesEntity>() ||
            targetTypeOf == _typeOf<_i7.FeesEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.FeesEntity>() ||
            sourceTypeOf == _typeOf<_i7.FeesEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.FeesModel>() ||
            targetTypeOf == _typeOf<_i6.FeesModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.CompanyModel>() ||
            sourceTypeOf == _typeOf<_i8.CompanyModel?>()) &&
        (targetTypeOf == _typeOf<_i9.CompanyEntity>() ||
            targetTypeOf == _typeOf<_i9.CompanyEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.CompanyEntity>() ||
            sourceTypeOf == _typeOf<_i9.CompanyEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.CompanyModel>() ||
            targetTypeOf == _typeOf<_i8.CompanyModel?>())) {
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
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
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
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
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
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
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
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
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
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
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
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
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
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
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
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.PaymentLinkTransactionModel>() ||
            sourceTypeOf == _typeOf<_i2.PaymentLinkTransactionModel?>()) &&
        (targetTypeOf == _typeOf<_i3.PaymentLinkTransactionEntity>() ||
            targetTypeOf == _typeOf<_i3.PaymentLinkTransactionEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$PaymentLinkTransactionModel_To__i3$PaymentLinkTransactionEntity(
          (model as _i2.PaymentLinkTransactionModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.PaymentLinkTransactionEntity>() ||
            sourceTypeOf == _typeOf<_i3.PaymentLinkTransactionEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.PaymentLinkTransactionModel>() ||
            targetTypeOf == _typeOf<_i2.PaymentLinkTransactionModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$PaymentLinkTransactionEntity_To__i2$PaymentLinkTransactionModel(
          (model as _i3.PaymentLinkTransactionEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.ChargeModel>() ||
            sourceTypeOf == _typeOf<_i4.ChargeModel?>()) &&
        (targetTypeOf == _typeOf<_i5.ChargeEntity>() ||
            targetTypeOf == _typeOf<_i5.ChargeEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$ChargeModel_To__i5$ChargeEntity(
          (model as _i4.ChargeModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.ChargeEntity>() ||
            sourceTypeOf == _typeOf<_i5.ChargeEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.ChargeModel>() ||
            targetTypeOf == _typeOf<_i4.ChargeModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$ChargeEntity_To__i4$ChargeModel(
          (model as _i5.ChargeEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.FeesModel>() ||
            sourceTypeOf == _typeOf<_i6.FeesModel?>()) &&
        (targetTypeOf == _typeOf<_i7.FeesEntity>() ||
            targetTypeOf == _typeOf<_i7.FeesEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$FeesModel_To__i7$FeesEntity((model as _i6.FeesModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.FeesEntity>() ||
            sourceTypeOf == _typeOf<_i7.FeesEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.FeesModel>() ||
            targetTypeOf == _typeOf<_i6.FeesModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$FeesEntity_To__i6$FeesModel((model as _i7.FeesEntity?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.CompanyModel>() ||
            sourceTypeOf == _typeOf<_i8.CompanyModel?>()) &&
        (targetTypeOf == _typeOf<_i9.CompanyEntity>() ||
            targetTypeOf == _typeOf<_i9.CompanyEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$CompanyModel_To__i9$CompanyEntity(
          (model as _i8.CompanyModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.CompanyEntity>() ||
            sourceTypeOf == _typeOf<_i9.CompanyEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.CompanyModel>() ||
            targetTypeOf == _typeOf<_i8.CompanyModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$CompanyEntity_To__i8$CompanyModel(
          (model as _i9.CompanyEntity?)) as TARGET);
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
  /// {@macro package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.PaymentLinkTransactionEntity
      _map__i2$PaymentLinkTransactionModel_To__i3$PaymentLinkTransactionEntity(
          _i2.PaymentLinkTransactionModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PaymentLinkTransactionModel → PaymentLinkTransactionEntity failed because PaymentLinkTransactionModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PaymentLinkTransactionModel, PaymentLinkTransactionEntity> to handle null values during mapping.');
    }
    return _i3.PaymentLinkTransactionEntity(
      id: model.id,
      status: model.status,
      amount: model.amount,
      feesAmount: model.feesAmount,
      chargedAmount: model.chargedAmount,
      currencyCode: model.currencyCode,
      sequence: model.sequence,
      error: model.error,
      completedAt: model.completedAt,
      isActive: model.isActive,
      token: model.token,
      recipientMsisdn: model.recipientMsisdn,
      paymentUrl: model.paymentUrl,
    );
  }

  _i2.PaymentLinkTransactionModel
      _map__i3$PaymentLinkTransactionEntity_To__i2$PaymentLinkTransactionModel(
          _i3.PaymentLinkTransactionEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PaymentLinkTransactionEntity → PaymentLinkTransactionModel failed because PaymentLinkTransactionEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PaymentLinkTransactionEntity, PaymentLinkTransactionModel> to handle null values during mapping.');
    }
    return _i2.PaymentLinkTransactionModel(
      id: model.id,
      status: model.status,
      amount: model.amount,
      feesAmount: model.feesAmount,
      chargedAmount: model.chargedAmount,
      currencyCode: model.currencyCode,
      sequence: model.sequence,
      error: model.error,
      completedAt: model.completedAt,
      isActive: model.isActive,
      token: model.token,
      recipientMsisdn: model.recipientMsisdn,
      paymentUrl: model.paymentUrl,
    );
  }

  _i5.ChargeEntity _map__i4$ChargeModel_To__i5$ChargeEntity(
      _i4.ChargeModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ChargeModel → ChargeEntity failed because ChargeModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ChargeModel, ChargeEntity> to handle null values during mapping.');
    }
    return _i5.ChargeEntity(
      id: model.id,
      orderId: model.orderId,
      description: model.description,
      currency: model.currency,
      amount: model.amount,
      due: model.due,
      fees: _map__i6$FeesModel_To__i7$FeesEntity(model.fees),
      status: model.status,
      droppedReason: model.droppedReason,
      paid: model.paid,
      refunded: model.refunded,
      attempts: model.attempts,
      completedAt: model.completedAt,
      createdAt: model.createdAt,
      company: _map__i8$CompanyModel_To__i9$CompanyEntity(model.company),
      paymentUrl: model.paymentUrl,
    );
  }

  _i4.ChargeModel _map__i5$ChargeEntity_To__i4$ChargeModel(
      _i5.ChargeEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ChargeEntity → ChargeModel failed because ChargeEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ChargeEntity, ChargeModel> to handle null values during mapping.');
    }
    return _i4.ChargeModel(
      id: model.id,
      orderId: model.orderId,
      description: model.description,
      currency: model.currency,
      amount: model.amount,
      due: model.due,
      fees: _map__i7$FeesEntity_To__i6$FeesModel(model.fees),
      status: model.status,
      droppedReason: model.droppedReason,
      paid: model.paid,
      refunded: model.refunded,
      attempts: model.attempts,
      completedAt: model.completedAt,
      createdAt: model.createdAt,
      company: _map__i9$CompanyEntity_To__i8$CompanyModel(model.company),
      paymentUrl: model.paymentUrl,
    );
  }

  _i7.FeesEntity _map__i6$FeesModel_To__i7$FeesEntity(_i6.FeesModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping FeesModel → FeesEntity failed because FeesModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<FeesModel, FeesEntity> to handle null values during mapping.');
    }
    return _i7.FeesEntity(
      currency: model.currency,
      rate: model.rate,
      value: model.value,
    );
  }

  _i6.FeesModel _map__i7$FeesEntity_To__i6$FeesModel(_i7.FeesEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping FeesEntity → FeesModel failed because FeesEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<FeesEntity, FeesModel> to handle null values during mapping.');
    }
    return _i6.FeesModel(
      currency: model.currency,
      rate: model.rate,
      value: model.value,
    );
  }

  _i9.CompanyEntity _map__i8$CompanyModel_To__i9$CompanyEntity(
      _i8.CompanyModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CompanyModel → CompanyEntity failed because CompanyModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CompanyModel, CompanyEntity> to handle null values during mapping.');
    }
    return _i9.CompanyEntity(
      id: model.id,
      name: model.name,
      isActive: model.isActive,
      logoUrl: model.logoUrl,
      profile: model.profile,
    );
  }

  _i8.CompanyModel _map__i9$CompanyEntity_To__i8$CompanyModel(
      _i9.CompanyEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CompanyEntity → CompanyModel failed because CompanyEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CompanyEntity, CompanyModel> to handle null values during mapping.');
    }
    return _i8.CompanyModel(
      id: model.id,
      name: model.name,
      isActive: model.isActive,
      logoUrl: model.logoUrl,
      profile: model.profile,
    );
  }
}
