// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/beneficiary_entity.dart' as _i7;
import '../entities/cash_in_custom_phone_number_entity.dart' as _i9;
import '../entities/client_bill_account_reference_entity.dart' as _i5;
import '../entities/p2p_beneficiary_entity.dart' as _i3;
import '../models/beneficiary_model.dart' as _i6;
import '../models/cash_in_custom_phone_number_model.dart' as _i8;
import '../models/client_bill_account_reference_model.dart' as _i4;
import '../models/p2p_beneficiary_model.dart' as _i2;

/// {@template package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
/// Available mappings:
/// - `P2PBeneficiaryModel` → `P2PBeneficiaryEntity`.
/// - `P2PBeneficiaryEntity` → `P2PBeneficiaryModel`.
/// - `ClientBillAccountReferenceModel` → `ClientBillAccountReferenceEntity`.
/// - `ClientBillAccountReferenceEntity` → `ClientBillAccountReferenceModel`.
/// - `BeneficiaryModel` → `BeneficiaryEntity`.
/// - `BeneficiaryEntity` → `BeneficiaryModel`.
/// - `CashInCustomPhoneNumberModel` → `CashInCustomPhoneNumberEntity`.
/// - `CashInCustomPhoneNumberEntity` → `CashInCustomPhoneNumberModel`.
/// {@endtemplate}
class $BeneficiariesAutoMapper implements _i1.AutoMapprInterface {
  const $BeneficiariesAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.P2PBeneficiaryModel>() ||
            sourceTypeOf == _typeOf<_i2.P2PBeneficiaryModel?>()) &&
        (targetTypeOf == _typeOf<_i3.P2PBeneficiaryEntity>() ||
            targetTypeOf == _typeOf<_i3.P2PBeneficiaryEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.P2PBeneficiaryEntity>() ||
            sourceTypeOf == _typeOf<_i3.P2PBeneficiaryEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.P2PBeneficiaryModel>() ||
            targetTypeOf == _typeOf<_i2.P2PBeneficiaryModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.ClientBillAccountReferenceModel>() ||
            sourceTypeOf == _typeOf<_i4.ClientBillAccountReferenceModel?>()) &&
        (targetTypeOf == _typeOf<_i5.ClientBillAccountReferenceEntity>() ||
            targetTypeOf == _typeOf<_i5.ClientBillAccountReferenceEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.ClientBillAccountReferenceEntity>() ||
            sourceTypeOf == _typeOf<_i5.ClientBillAccountReferenceEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.ClientBillAccountReferenceModel>() ||
            targetTypeOf == _typeOf<_i4.ClientBillAccountReferenceModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.BeneficiaryModel>() ||
            sourceTypeOf == _typeOf<_i6.BeneficiaryModel?>()) &&
        (targetTypeOf == _typeOf<_i7.BeneficiaryEntity>() ||
            targetTypeOf == _typeOf<_i7.BeneficiaryEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.BeneficiaryEntity>() ||
            sourceTypeOf == _typeOf<_i7.BeneficiaryEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.BeneficiaryModel>() ||
            targetTypeOf == _typeOf<_i6.BeneficiaryModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.CashInCustomPhoneNumberModel>() ||
            sourceTypeOf == _typeOf<_i8.CashInCustomPhoneNumberModel?>()) &&
        (targetTypeOf == _typeOf<_i9.CashInCustomPhoneNumberEntity>() ||
            targetTypeOf == _typeOf<_i9.CashInCustomPhoneNumberEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.CashInCustomPhoneNumberEntity>() ||
            sourceTypeOf == _typeOf<_i9.CashInCustomPhoneNumberEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.CashInCustomPhoneNumberModel>() ||
            targetTypeOf == _typeOf<_i8.CashInCustomPhoneNumberModel?>())) {
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
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
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
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
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
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
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
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
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
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
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
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
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
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
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
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.P2PBeneficiaryModel>() ||
            sourceTypeOf == _typeOf<_i2.P2PBeneficiaryModel?>()) &&
        (targetTypeOf == _typeOf<_i3.P2PBeneficiaryEntity>() ||
            targetTypeOf == _typeOf<_i3.P2PBeneficiaryEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$P2PBeneficiaryModel_To__i3$P2PBeneficiaryEntity(
          (model as _i2.P2PBeneficiaryModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.P2PBeneficiaryEntity>() ||
            sourceTypeOf == _typeOf<_i3.P2PBeneficiaryEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.P2PBeneficiaryModel>() ||
            targetTypeOf == _typeOf<_i2.P2PBeneficiaryModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$P2PBeneficiaryEntity_To__i2$P2PBeneficiaryModel(
          (model as _i3.P2PBeneficiaryEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.ClientBillAccountReferenceModel>() ||
            sourceTypeOf == _typeOf<_i4.ClientBillAccountReferenceModel?>()) &&
        (targetTypeOf == _typeOf<_i5.ClientBillAccountReferenceEntity>() ||
            targetTypeOf == _typeOf<_i5.ClientBillAccountReferenceEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$ClientBillAccountReferenceModel_To__i5$ClientBillAccountReferenceEntity(
          (model as _i4.ClientBillAccountReferenceModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.ClientBillAccountReferenceEntity>() ||
            sourceTypeOf == _typeOf<_i5.ClientBillAccountReferenceEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.ClientBillAccountReferenceModel>() ||
            targetTypeOf == _typeOf<_i4.ClientBillAccountReferenceModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$ClientBillAccountReferenceEntity_To__i4$ClientBillAccountReferenceModel(
          (model as _i5.ClientBillAccountReferenceEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.BeneficiaryModel>() ||
            sourceTypeOf == _typeOf<_i6.BeneficiaryModel?>()) &&
        (targetTypeOf == _typeOf<_i7.BeneficiaryEntity>() ||
            targetTypeOf == _typeOf<_i7.BeneficiaryEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$BeneficiaryModel_To__i7$BeneficiaryEntity(
          (model as _i6.BeneficiaryModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.BeneficiaryEntity>() ||
            sourceTypeOf == _typeOf<_i7.BeneficiaryEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.BeneficiaryModel>() ||
            targetTypeOf == _typeOf<_i6.BeneficiaryModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$BeneficiaryEntity_To__i6$BeneficiaryModel(
          (model as _i7.BeneficiaryEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.CashInCustomPhoneNumberModel>() ||
            sourceTypeOf == _typeOf<_i8.CashInCustomPhoneNumberModel?>()) &&
        (targetTypeOf == _typeOf<_i9.CashInCustomPhoneNumberEntity>() ||
            targetTypeOf == _typeOf<_i9.CashInCustomPhoneNumberEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$CashInCustomPhoneNumberModel_To__i9$CashInCustomPhoneNumberEntity(
          (model as _i8.CashInCustomPhoneNumberModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.CashInCustomPhoneNumberEntity>() ||
            sourceTypeOf == _typeOf<_i9.CashInCustomPhoneNumberEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.CashInCustomPhoneNumberModel>() ||
            targetTypeOf == _typeOf<_i8.CashInCustomPhoneNumberModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$CashInCustomPhoneNumberEntity_To__i8$CashInCustomPhoneNumberModel(
          (model as _i9.CashInCustomPhoneNumberEntity?)) as TARGET);
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
  /// {@macro package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.P2PBeneficiaryEntity
      _map__i2$P2PBeneficiaryModel_To__i3$P2PBeneficiaryEntity(
          _i2.P2PBeneficiaryModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping P2PBeneficiaryModel → P2PBeneficiaryEntity failed because P2PBeneficiaryModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<P2PBeneficiaryModel, P2PBeneficiaryEntity> to handle null values during mapping.');
    }
    return _i3.P2PBeneficiaryEntity(
      id: model.id,
      phoneNumberE164: model.phoneNumberE164,
      firstName: model.firstName,
      lastName: model.lastName,
      photo: model.photo,
      referralCode: model.referralCode,
    );
  }

  _i2.P2PBeneficiaryModel
      _map__i3$P2PBeneficiaryEntity_To__i2$P2PBeneficiaryModel(
          _i3.P2PBeneficiaryEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping P2PBeneficiaryEntity → P2PBeneficiaryModel failed because P2PBeneficiaryEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<P2PBeneficiaryEntity, P2PBeneficiaryModel> to handle null values during mapping.');
    }
    return _i2.P2PBeneficiaryModel(
      id: model.id,
      phoneNumberE164: model.phoneNumberE164,
      firstName: model.firstName,
      lastName: model.lastName,
      photo: model.photo,
      referralCode: model.referralCode,
    );
  }

  _i5.ClientBillAccountReferenceEntity
      _map__i4$ClientBillAccountReferenceModel_To__i5$ClientBillAccountReferenceEntity(
          _i4.ClientBillAccountReferenceModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ClientBillAccountReferenceModel → ClientBillAccountReferenceEntity failed because ClientBillAccountReferenceModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ClientBillAccountReferenceModel, ClientBillAccountReferenceEntity> to handle null values during mapping.');
    }
    return _i5.ClientBillAccountReferenceEntity(
      id: model.id,
      billerId: model.billerId,
      subscriptionReference: model.subscriptionReference,
      isActive: model.isActive,
      clientId: model.clientId,
      label: model.label,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      deletedAt: model.deletedAt,
    );
  }

  _i4.ClientBillAccountReferenceModel
      _map__i5$ClientBillAccountReferenceEntity_To__i4$ClientBillAccountReferenceModel(
          _i5.ClientBillAccountReferenceEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ClientBillAccountReferenceEntity → ClientBillAccountReferenceModel failed because ClientBillAccountReferenceEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ClientBillAccountReferenceEntity, ClientBillAccountReferenceModel> to handle null values during mapping.');
    }
    return _i4.ClientBillAccountReferenceModel(
      id: model.id,
      billerId: model.billerId,
      subscriptionReference: model.subscriptionReference,
      isActive: model.isActive,
      clientId: model.clientId,
      label: model.label,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      deletedAt: model.deletedAt,
    );
  }

  _i7.BeneficiaryEntity _map__i6$BeneficiaryModel_To__i7$BeneficiaryEntity(
      _i6.BeneficiaryModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BeneficiaryModel → BeneficiaryEntity failed because BeneficiaryModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BeneficiaryModel, BeneficiaryEntity> to handle null values during mapping.');
    }
    return _i7.BeneficiaryEntity(
      id: model.id,
      clientId: model.clientId,
      serviceId: model.serviceId,
      label: model.label,
      isFavorite: model.isFavorite,
      recipient: model.recipient,
      iban: model.iban,
    );
  }

  _i6.BeneficiaryModel _map__i7$BeneficiaryEntity_To__i6$BeneficiaryModel(
      _i7.BeneficiaryEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BeneficiaryEntity → BeneficiaryModel failed because BeneficiaryEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BeneficiaryEntity, BeneficiaryModel> to handle null values during mapping.');
    }
    return _i6.BeneficiaryModel(
      id: model.id,
      clientId: model.clientId,
      serviceId: model.serviceId,
      label: model.label,
      isFavorite: model.isFavorite,
      recipient: model.recipient,
      iban: model.iban,
    );
  }

  _i9.CashInCustomPhoneNumberEntity
      _map__i8$CashInCustomPhoneNumberModel_To__i9$CashInCustomPhoneNumberEntity(
          _i8.CashInCustomPhoneNumberModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CashInCustomPhoneNumberModel → CashInCustomPhoneNumberEntity failed because CashInCustomPhoneNumberModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CashInCustomPhoneNumberModel, CashInCustomPhoneNumberEntity> to handle null values during mapping.');
    }
    return _i9.CashInCustomPhoneNumberEntity(
      id: model.id,
      msisdn: model.msisdn,
      isActive: model.isActive,
      isVerified: model.isVerified,
      isLocked: model.isLocked,
    );
  }

  _i8.CashInCustomPhoneNumberModel
      _map__i9$CashInCustomPhoneNumberEntity_To__i8$CashInCustomPhoneNumberModel(
          _i9.CashInCustomPhoneNumberEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CashInCustomPhoneNumberEntity → CashInCustomPhoneNumberModel failed because CashInCustomPhoneNumberEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CashInCustomPhoneNumberEntity, CashInCustomPhoneNumberModel> to handle null values during mapping.');
    }
    return _i8.CashInCustomPhoneNumberModel(
      id: model.id,
      msisdn: model.msisdn,
      isActive: model.isActive,
      isVerified: model.isVerified,
      isLocked: model.isLocked,
    );
  }
}
