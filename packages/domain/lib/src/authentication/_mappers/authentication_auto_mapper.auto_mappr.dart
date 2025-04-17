// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/giveaway_entity.dart' as _i13;
import '../entities/giveaway_item_entity.dart' as _i15;
import '../entities/phone_number_entity.dart' as _i5;
import '../entities/phone_number_kyc_entity.dart' as _i7;
import '../entities/phone_number_verification_entity.dart' as _i3;
import '../entities/profile_id_entity.dart' as _i9;
import '../entities/user_entity.dart' as _i11;
import '../models/giveaway_item_model.dart' as _i14;
import '../models/giveaway_model.dart' as _i12;
import '../models/phone_number_kyc_model.dart' as _i6;
import '../models/phone_number_model.dart' as _i4;
import '../models/phone_number_verification_model.dart' as _i2;
import '../models/profile_id_model.dart' as _i8;
import '../models/user_model.dart' as _i10;

/// {@template package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
/// Available mappings:
/// - `PhoneNumberVerificationModel` → `PhoneNumberVerificationEntity`.
/// - `PhoneNumberVerificationEntity` → `PhoneNumberVerificationModel`.
/// - `PhoneNumberModel` → `PhoneNumberEntity`.
/// - `PhoneNumberEntity` → `PhoneNumberModel`.
/// - `PhoneNumberKycModel` → `PhoneNumberKycEntity`.
/// - `PhoneNumberKycEntity` → `PhoneNumberKycModel`.
/// - `ProfileIdModel` → `ProfileIdEntity`.
/// - `ProfileIdEntity` → `ProfileIdModel`.
/// - `UserModel` → `UserEntity`.
/// - `UserEntity` → `UserModel`.
/// - `GiveawayModel` → `GiveawayEntity`.
/// - `GiveawayEntity` → `GiveawayModel`.
/// - `GiveawayItemModel` → `GiveawayItemEntity`.
/// - `GiveawayItemEntity` → `GiveawayItemModel`.
/// {@endtemplate}
class $AuthenticationAutoMapper implements _i1.AutoMapprInterface {
  const $AuthenticationAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.PhoneNumberVerificationModel>() ||
            sourceTypeOf == _typeOf<_i2.PhoneNumberVerificationModel?>()) &&
        (targetTypeOf == _typeOf<_i3.PhoneNumberVerificationEntity>() ||
            targetTypeOf == _typeOf<_i3.PhoneNumberVerificationEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.PhoneNumberVerificationEntity>() ||
            sourceTypeOf == _typeOf<_i3.PhoneNumberVerificationEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.PhoneNumberVerificationModel>() ||
            targetTypeOf == _typeOf<_i2.PhoneNumberVerificationModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.PhoneNumberModel>() ||
            sourceTypeOf == _typeOf<_i4.PhoneNumberModel?>()) &&
        (targetTypeOf == _typeOf<_i5.PhoneNumberEntity>() ||
            targetTypeOf == _typeOf<_i5.PhoneNumberEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.PhoneNumberEntity>() ||
            sourceTypeOf == _typeOf<_i5.PhoneNumberEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.PhoneNumberModel>() ||
            targetTypeOf == _typeOf<_i4.PhoneNumberModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.PhoneNumberKycModel>() ||
            sourceTypeOf == _typeOf<_i6.PhoneNumberKycModel?>()) &&
        (targetTypeOf == _typeOf<_i7.PhoneNumberKycEntity>() ||
            targetTypeOf == _typeOf<_i7.PhoneNumberKycEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.PhoneNumberKycEntity>() ||
            sourceTypeOf == _typeOf<_i7.PhoneNumberKycEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.PhoneNumberKycModel>() ||
            targetTypeOf == _typeOf<_i6.PhoneNumberKycModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.ProfileIdModel>() ||
            sourceTypeOf == _typeOf<_i8.ProfileIdModel?>()) &&
        (targetTypeOf == _typeOf<_i9.ProfileIdEntity>() ||
            targetTypeOf == _typeOf<_i9.ProfileIdEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.ProfileIdEntity>() ||
            sourceTypeOf == _typeOf<_i9.ProfileIdEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.ProfileIdModel>() ||
            targetTypeOf == _typeOf<_i8.ProfileIdModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.UserModel>() ||
            sourceTypeOf == _typeOf<_i10.UserModel?>()) &&
        (targetTypeOf == _typeOf<_i11.UserEntity>() ||
            targetTypeOf == _typeOf<_i11.UserEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.UserEntity>() ||
            sourceTypeOf == _typeOf<_i11.UserEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.UserModel>() ||
            targetTypeOf == _typeOf<_i10.UserModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.GiveawayModel>() ||
            sourceTypeOf == _typeOf<_i12.GiveawayModel?>()) &&
        (targetTypeOf == _typeOf<_i13.GiveawayEntity>() ||
            targetTypeOf == _typeOf<_i13.GiveawayEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i13.GiveawayEntity>() ||
            sourceTypeOf == _typeOf<_i13.GiveawayEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.GiveawayModel>() ||
            targetTypeOf == _typeOf<_i12.GiveawayModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i14.GiveawayItemModel>() ||
            sourceTypeOf == _typeOf<_i14.GiveawayItemModel?>()) &&
        (targetTypeOf == _typeOf<_i15.GiveawayItemEntity>() ||
            targetTypeOf == _typeOf<_i15.GiveawayItemEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i15.GiveawayItemEntity>() ||
            sourceTypeOf == _typeOf<_i15.GiveawayItemEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.GiveawayItemModel>() ||
            targetTypeOf == _typeOf<_i14.GiveawayItemModel?>())) {
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
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
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
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
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
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
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
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
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
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
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
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
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
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
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
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.PhoneNumberVerificationModel>() ||
            sourceTypeOf == _typeOf<_i2.PhoneNumberVerificationModel?>()) &&
        (targetTypeOf == _typeOf<_i3.PhoneNumberVerificationEntity>() ||
            targetTypeOf == _typeOf<_i3.PhoneNumberVerificationEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$PhoneNumberVerificationModel_To__i3$PhoneNumberVerificationEntity(
          (model as _i2.PhoneNumberVerificationModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.PhoneNumberVerificationEntity>() ||
            sourceTypeOf == _typeOf<_i3.PhoneNumberVerificationEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.PhoneNumberVerificationModel>() ||
            targetTypeOf == _typeOf<_i2.PhoneNumberVerificationModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$PhoneNumberVerificationEntity_To__i2$PhoneNumberVerificationModel(
          (model as _i3.PhoneNumberVerificationEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.PhoneNumberModel>() ||
            sourceTypeOf == _typeOf<_i4.PhoneNumberModel?>()) &&
        (targetTypeOf == _typeOf<_i5.PhoneNumberEntity>() ||
            targetTypeOf == _typeOf<_i5.PhoneNumberEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$PhoneNumberModel_To__i5$PhoneNumberEntity(
          (model as _i4.PhoneNumberModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.PhoneNumberEntity>() ||
            sourceTypeOf == _typeOf<_i5.PhoneNumberEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.PhoneNumberModel>() ||
            targetTypeOf == _typeOf<_i4.PhoneNumberModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$PhoneNumberEntity_To__i4$PhoneNumberModel(
          (model as _i5.PhoneNumberEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.PhoneNumberKycModel>() ||
            sourceTypeOf == _typeOf<_i6.PhoneNumberKycModel?>()) &&
        (targetTypeOf == _typeOf<_i7.PhoneNumberKycEntity>() ||
            targetTypeOf == _typeOf<_i7.PhoneNumberKycEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$PhoneNumberKycModel_To__i7$PhoneNumberKycEntity(
          (model as _i6.PhoneNumberKycModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.PhoneNumberKycEntity>() ||
            sourceTypeOf == _typeOf<_i7.PhoneNumberKycEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.PhoneNumberKycModel>() ||
            targetTypeOf == _typeOf<_i6.PhoneNumberKycModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$PhoneNumberKycEntity_To__i6$PhoneNumberKycModel(
          (model as _i7.PhoneNumberKycEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.ProfileIdModel>() ||
            sourceTypeOf == _typeOf<_i8.ProfileIdModel?>()) &&
        (targetTypeOf == _typeOf<_i9.ProfileIdEntity>() ||
            targetTypeOf == _typeOf<_i9.ProfileIdEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$ProfileIdModel_To__i9$ProfileIdEntity(
          (model as _i8.ProfileIdModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.ProfileIdEntity>() ||
            sourceTypeOf == _typeOf<_i9.ProfileIdEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.ProfileIdModel>() ||
            targetTypeOf == _typeOf<_i8.ProfileIdModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$ProfileIdEntity_To__i8$ProfileIdModel(
          (model as _i9.ProfileIdEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.UserModel>() ||
            sourceTypeOf == _typeOf<_i10.UserModel?>()) &&
        (targetTypeOf == _typeOf<_i11.UserEntity>() ||
            targetTypeOf == _typeOf<_i11.UserEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$UserModel_To__i11$UserEntity((model as _i10.UserModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.UserEntity>() ||
            sourceTypeOf == _typeOf<_i11.UserEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.UserModel>() ||
            targetTypeOf == _typeOf<_i10.UserModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$UserEntity_To__i10$UserModel(
          (model as _i11.UserEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.GiveawayModel>() ||
            sourceTypeOf == _typeOf<_i12.GiveawayModel?>()) &&
        (targetTypeOf == _typeOf<_i13.GiveawayEntity>() ||
            targetTypeOf == _typeOf<_i13.GiveawayEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$GiveawayModel_To__i13$GiveawayEntity(
          (model as _i12.GiveawayModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i13.GiveawayEntity>() ||
            sourceTypeOf == _typeOf<_i13.GiveawayEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.GiveawayModel>() ||
            targetTypeOf == _typeOf<_i12.GiveawayModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i13$GiveawayEntity_To__i12$GiveawayModel(
          (model as _i13.GiveawayEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i14.GiveawayItemModel>() ||
            sourceTypeOf == _typeOf<_i14.GiveawayItemModel?>()) &&
        (targetTypeOf == _typeOf<_i15.GiveawayItemEntity>() ||
            targetTypeOf == _typeOf<_i15.GiveawayItemEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i14$GiveawayItemModel_To__i15$GiveawayItemEntity(
          (model as _i14.GiveawayItemModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i15.GiveawayItemEntity>() ||
            sourceTypeOf == _typeOf<_i15.GiveawayItemEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.GiveawayItemModel>() ||
            targetTypeOf == _typeOf<_i14.GiveawayItemModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i15$GiveawayItemEntity_To__i14$GiveawayItemModel(
          (model as _i15.GiveawayItemEntity?)) as TARGET);
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
  /// {@macro package:domain/src/authentication/_mappers/authentication_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.PhoneNumberVerificationEntity
      _map__i2$PhoneNumberVerificationModel_To__i3$PhoneNumberVerificationEntity(
          _i2.PhoneNumberVerificationModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberVerificationModel → PhoneNumberVerificationEntity failed because PhoneNumberVerificationModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberVerificationModel, PhoneNumberVerificationEntity> to handle null values during mapping.');
    }
    return _i3.PhoneNumberVerificationEntity(
      id: model.id,
      phoneNumber:
          _map__i4$PhoneNumberModel_To__i5$PhoneNumberEntity(model.phoneNumber),
      hasAccount: model.hasAccount,
      isClient: model.isClient,
      needsToChangePassCode: model.needsToChangePassCode,
      kycStatus: model.kycStatus,
    );
  }

  _i2.PhoneNumberVerificationModel
      _map__i3$PhoneNumberVerificationEntity_To__i2$PhoneNumberVerificationModel(
          _i3.PhoneNumberVerificationEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberVerificationEntity → PhoneNumberVerificationModel failed because PhoneNumberVerificationEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberVerificationEntity, PhoneNumberVerificationModel> to handle null values during mapping.');
    }
    return _i2.PhoneNumberVerificationModel(
      id: model.id,
      phoneNumber:
          _map__i5$PhoneNumberEntity_To__i4$PhoneNumberModel(model.phoneNumber),
      hasAccount: model.hasAccount,
      isClient: model.isClient,
      needsToChangePassCode: model.needsToChangePassCode,
      kycStatus: model.kycStatus,
    );
  }

  _i5.PhoneNumberEntity _map__i4$PhoneNumberModel_To__i5$PhoneNumberEntity(
      _i4.PhoneNumberModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberModel → PhoneNumberEntity failed because PhoneNumberModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberModel, PhoneNumberEntity> to handle null values during mapping.');
    }
    return _i5.PhoneNumberEntity(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      deletedAt: model.deletedAt,
      isActive: model.isActive,
      searchableText: model.searchableText,
      msisdn: model.msisdn,
      e164: model.e164,
      installationId: model.installationId,
      deviceType: model.deviceType,
      subscribed: model.subscribed,
      hasAccount: model.hasAccount,
      isPhysical: model.isPhysical,
      isClient: model.isClient,
      needsToChangePassCode: model.needsToChangePassCode,
      kyc: _map__i6$PhoneNumberKycModel_To__i7$PhoneNumberKycEntity(model.kyc),
    );
  }

  _i4.PhoneNumberModel _map__i5$PhoneNumberEntity_To__i4$PhoneNumberModel(
      _i5.PhoneNumberEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberEntity → PhoneNumberModel failed because PhoneNumberEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberEntity, PhoneNumberModel> to handle null values during mapping.');
    }
    return _i4.PhoneNumberModel(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      deletedAt: model.deletedAt,
      isActive: model.isActive,
      searchableText: model.searchableText,
      msisdn: model.msisdn,
      e164: model.e164,
      installationId: model.installationId,
      deviceType: model.deviceType,
      subscribed: model.subscribed,
      hasAccount: model.hasAccount,
      isPhysical: model.isPhysical,
      isClient: model.isClient,
      needsToChangePassCode: model.needsToChangePassCode,
      kyc: _map__i7$PhoneNumberKycEntity_To__i6$PhoneNumberKycModel(model.kyc),
    );
  }

  _i7.PhoneNumberKycEntity
      _map__i6$PhoneNumberKycModel_To__i7$PhoneNumberKycEntity(
          _i6.PhoneNumberKycModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberKycModel → PhoneNumberKycEntity failed because PhoneNumberKycModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberKycModel, PhoneNumberKycEntity> to handle null values during mapping.');
    }
    return _i7.PhoneNumberKycEntity(
      firstName: model.firstName,
      lastName: model.lastName,
      email: model.email,
      gender: model.gender,
      dateOfBirth: model.dateOfBirth,
      status: model.status,
    );
  }

  _i6.PhoneNumberKycModel
      _map__i7$PhoneNumberKycEntity_To__i6$PhoneNumberKycModel(
          _i7.PhoneNumberKycEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberKycEntity → PhoneNumberKycModel failed because PhoneNumberKycEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberKycEntity, PhoneNumberKycModel> to handle null values during mapping.');
    }
    return _i6.PhoneNumberKycModel(
      firstName: model.firstName,
      lastName: model.lastName,
      email: model.email,
      gender: model.gender,
      dateOfBirth: model.dateOfBirth,
      status: model.status,
    );
  }

  _i9.ProfileIdEntity _map__i8$ProfileIdModel_To__i9$ProfileIdEntity(
      _i8.ProfileIdModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProfileIdModel → ProfileIdEntity failed because ProfileIdModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProfileIdModel, ProfileIdEntity> to handle null values during mapping.');
    }
    return _i9.ProfileIdEntity(
      frontPage: model.frontPage,
      backPage: model.backPage,
    );
  }

  _i8.ProfileIdModel _map__i9$ProfileIdEntity_To__i8$ProfileIdModel(
      _i9.ProfileIdEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ProfileIdEntity → ProfileIdModel failed because ProfileIdEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ProfileIdEntity, ProfileIdModel> to handle null values during mapping.');
    }
    return _i8.ProfileIdModel(
      frontPage: model.frontPage,
      backPage: model.backPage,
    );
  }

  _i11.UserEntity _map__i10$UserModel_To__i11$UserEntity(
      _i10.UserModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping UserModel → UserEntity failed because UserModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<UserModel, UserEntity> to handle null values during mapping.');
    }
    return _i11.UserEntity(
      profileIsActive: model.profileIsActive,
      clientId: model.clientId,
      phoneNumberE164: model.phoneNumberE164,
      phoneNumberCountryIsoCode: model.phoneNumberCountryIsoCode,
      profileEmail: model.profileEmail,
      profileLastName: model.profileLastName,
      profileFirstName: model.profileFirstName,
      profilePhotoUrl: model.profilePhotoUrl,
      referralRewardCode: model.referralRewardCode,
      marketId: model.marketId,
      referralRewardMessage: model.referralRewardMessage,
      profileStatus: model.profileStatus,
      profileOnfidoStatus: model.profileOnfidoStatus,
      hasIban: model.hasIban,
      hasAccount: model.hasAccount,
      profileDateOfBirth: model.profileDateOfBirth,
      profileIDs:
          _map__i8$ProfileIdModel_To__i9$ProfileIdEntity(model.profileIDs),
      profileIDType: model.profileIDType,
      referralRewardLink: model.referralRewardLink,
      accessEnabled: model.accessEnabled,
      nextDepositIsFree: model.nextDepositIsFree,
      nextTransferIsFree: model.nextTransferIsFree,
      budgetUserCategory: model.budgetUserCategory,
      hasPhysicalCard: model.hasPhysicalCard,
      hasTransaction: model.hasTransaction,
      hasOrdered: model.hasOrdered,
      giveaway: _map__i12$GiveawayModel_To__i13$GiveawayEntity(model.giveaway),
      creditTermAndConditionAccepted: model.creditTermAndConditionAccepted,
      profileEmailIsVerified: model.profileEmailIsVerified,
      profilePhotoUpdatedAt: model.profilePhotoUpdatedAt,
      hasSignedDjamoAgreementContract: model.hasSignedDjamoAgreementContract,
      isTempPasscodeUsed: model.isTempPasscodeUsed,
    );
  }

  _i10.UserModel _map__i11$UserEntity_To__i10$UserModel(
      _i11.UserEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping UserEntity → UserModel failed because UserEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<UserEntity, UserModel> to handle null values during mapping.');
    }
    return _i10.UserModel(
      profileIsActive: model.profileIsActive,
      clientId: model.clientId,
      phoneNumberE164: model.phoneNumberE164,
      phoneNumberCountryIsoCode: model.phoneNumberCountryIsoCode,
      profileEmail: model.profileEmail,
      profileLastName: model.profileLastName,
      profileFirstName: model.profileFirstName,
      profilePhotoUrl: model.profilePhotoUrl,
      referralRewardCode: model.referralRewardCode,
      marketId: model.marketId,
      referralRewardMessage: model.referralRewardMessage,
      profileStatus: model.profileStatus,
      profileOnfidoStatus: model.profileOnfidoStatus,
      hasIban: model.hasIban,
      hasAccount: model.hasAccount,
      profileDateOfBirth: model.profileDateOfBirth,
      profileIDs:
          _map__i9$ProfileIdEntity_To__i8$ProfileIdModel(model.profileIDs),
      profileIDType: model.profileIDType,
      referralRewardLink: model.referralRewardLink,
      accessEnabled: model.accessEnabled,
      nextDepositIsFree: model.nextDepositIsFree,
      nextTransferIsFree: model.nextTransferIsFree,
      budgetUserCategory: model.budgetUserCategory,
      hasPhysicalCard: model.hasPhysicalCard,
      hasTransaction: model.hasTransaction,
      hasOrdered: model.hasOrdered,
      giveaway: _map__i13$GiveawayEntity_To__i12$GiveawayModel(model.giveaway),
      creditTermAndConditionAccepted: model.creditTermAndConditionAccepted,
      profileEmailIsVerified: model.profileEmailIsVerified,
      profilePhotoUpdatedAt: model.profilePhotoUpdatedAt,
      hasSignedDjamoAgreementContract: model.hasSignedDjamoAgreementContract,
      isTempPasscodeUsed: model.isTempPasscodeUsed,
    );
  }

  _i13.GiveawayEntity _map__i12$GiveawayModel_To__i13$GiveawayEntity(
      _i12.GiveawayModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping GiveawayModel → GiveawayEntity failed because GiveawayModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<GiveawayModel, GiveawayEntity> to handle null values during mapping.');
    }
    return _i13.GiveawayEntity(
      nextDepositIsFree: model.nextDepositIsFree,
      nextTransferIsFree: model.nextTransferIsFree,
      nextCashbackGiveaway: model.nextCashbackGiveaway,
      nextDepositIsFreeExpireDate: model.nextDepositIsFreeExpireDate,
      nextTransferIsFreeExpireDate: model.nextTransferIsFreeExpireDate,
      nextCashbackGiveawayExpireDate: model.nextCashbackGiveawayExpireDate,
      nextDepositIsFreeCount: model.nextDepositIsFreeCount,
      nextTransferIsFreeCount: model.nextTransferIsFreeCount,
      nextCashbackGiveawayCount: model.nextCashbackGiveawayCount,
    );
  }

  _i12.GiveawayModel _map__i13$GiveawayEntity_To__i12$GiveawayModel(
      _i13.GiveawayEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping GiveawayEntity → GiveawayModel failed because GiveawayEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<GiveawayEntity, GiveawayModel> to handle null values during mapping.');
    }
    return _i12.GiveawayModel(
      nextDepositIsFree: model.nextDepositIsFree,
      nextTransferIsFree: model.nextTransferIsFree,
      nextCashbackGiveaway: model.nextCashbackGiveaway,
      nextDepositIsFreeExpireDate: model.nextDepositIsFreeExpireDate,
      nextTransferIsFreeExpireDate: model.nextTransferIsFreeExpireDate,
      nextCashbackGiveawayExpireDate: model.nextCashbackGiveawayExpireDate,
      nextDepositIsFreeCount: model.nextDepositIsFreeCount,
      nextTransferIsFreeCount: model.nextTransferIsFreeCount,
      nextCashbackGiveawayCount: model.nextCashbackGiveawayCount,
    );
  }

  _i15.GiveawayItemEntity
      _map__i14$GiveawayItemModel_To__i15$GiveawayItemEntity(
          _i14.GiveawayItemModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping GiveawayItemModel → GiveawayItemEntity failed because GiveawayItemModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<GiveawayItemModel, GiveawayItemEntity> to handle null values during mapping.');
    }
    return _i15.GiveawayItemEntity(
      data: model.data,
      type: model.type,
      expiryDateTime: model.expiryDateTime,
    );
  }

  _i14.GiveawayItemModel _map__i15$GiveawayItemEntity_To__i14$GiveawayItemModel(
      _i15.GiveawayItemEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping GiveawayItemEntity → GiveawayItemModel failed because GiveawayItemEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<GiveawayItemEntity, GiveawayItemModel> to handle null values during mapping.');
    }
    return _i14.GiveawayItemModel(
      data: model.data,
      type: model.type,
      expiryDateTime: model.expiryDateTime,
    );
  }
}
