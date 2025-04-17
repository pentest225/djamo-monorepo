// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../authentication/entities/phone_number_entity.dart' as _i7;
import '../../authentication/entities/phone_number_kyc_entity.dart' as _i9;
import '../../authentication/models/phone_number_kyc_model.dart' as _i8;
import '../../authentication/models/phone_number_model.dart' as _i6;
import '../entities/liveness_reset_request_status_entity.dart' as _i11;
import '../entities/phone_number_reset_entity.dart' as _i5;
import '../entities/reset_passcode_challenge_entity.dart' as _i3;
import '../models/liveness_reset_request_status_model.dart' as _i10;
import '../models/phone_number_reset_model.dart' as _i4;
import '../models/reset_passcode_challenge_model.dart' as _i2;

/// {@template package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
/// Available mappings:
/// - `ResetPasscodeChallengeModel` → `ResetPasscodeChallengeEntity`.
/// - `ResetPasscodeChallengeEntity` → `ResetPasscodeChallengeModel`.
/// - `PhoneNumberResetModel` → `PhoneNumberResetEntity`.
/// - `PhoneNumberResetEntity` → `PhoneNumberResetModel`.
/// - `PhoneNumberModel` → `PhoneNumberEntity`.
/// - `PhoneNumberEntity` → `PhoneNumberModel`.
/// - `PhoneNumberKycModel` → `PhoneNumberKycEntity`.
/// - `PhoneNumberKycEntity` → `PhoneNumberKycModel`.
/// - `LivenessResetRequestStatusModel` → `LivenessResetRequestStatusEntity`.
/// - `LivenessResetRequestStatusEntity` → `LivenessResetRequestStatusModel`.
/// {@endtemplate}
class $PasscodeAutoMapper implements _i1.AutoMapprInterface {
  const $PasscodeAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.ResetPasscodeChallengeModel>() ||
            sourceTypeOf == _typeOf<_i2.ResetPasscodeChallengeModel?>()) &&
        (targetTypeOf == _typeOf<_i3.ResetPasscodeChallengeEntity>() ||
            targetTypeOf == _typeOf<_i3.ResetPasscodeChallengeEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.ResetPasscodeChallengeEntity>() ||
            sourceTypeOf == _typeOf<_i3.ResetPasscodeChallengeEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.ResetPasscodeChallengeModel>() ||
            targetTypeOf == _typeOf<_i2.ResetPasscodeChallengeModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.PhoneNumberResetModel>() ||
            sourceTypeOf == _typeOf<_i4.PhoneNumberResetModel?>()) &&
        (targetTypeOf == _typeOf<_i5.PhoneNumberResetEntity>() ||
            targetTypeOf == _typeOf<_i5.PhoneNumberResetEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.PhoneNumberResetEntity>() ||
            sourceTypeOf == _typeOf<_i5.PhoneNumberResetEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.PhoneNumberResetModel>() ||
            targetTypeOf == _typeOf<_i4.PhoneNumberResetModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.PhoneNumberModel>() ||
            sourceTypeOf == _typeOf<_i6.PhoneNumberModel?>()) &&
        (targetTypeOf == _typeOf<_i7.PhoneNumberEntity>() ||
            targetTypeOf == _typeOf<_i7.PhoneNumberEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.PhoneNumberEntity>() ||
            sourceTypeOf == _typeOf<_i7.PhoneNumberEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.PhoneNumberModel>() ||
            targetTypeOf == _typeOf<_i6.PhoneNumberModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.PhoneNumberKycModel>() ||
            sourceTypeOf == _typeOf<_i8.PhoneNumberKycModel?>()) &&
        (targetTypeOf == _typeOf<_i9.PhoneNumberKycEntity>() ||
            targetTypeOf == _typeOf<_i9.PhoneNumberKycEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.PhoneNumberKycEntity>() ||
            sourceTypeOf == _typeOf<_i9.PhoneNumberKycEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.PhoneNumberKycModel>() ||
            targetTypeOf == _typeOf<_i8.PhoneNumberKycModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.LivenessResetRequestStatusModel>() ||
            sourceTypeOf == _typeOf<_i10.LivenessResetRequestStatusModel?>()) &&
        (targetTypeOf == _typeOf<_i11.LivenessResetRequestStatusEntity>() ||
            targetTypeOf ==
                _typeOf<_i11.LivenessResetRequestStatusEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.LivenessResetRequestStatusEntity>() ||
            sourceTypeOf ==
                _typeOf<_i11.LivenessResetRequestStatusEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.LivenessResetRequestStatusModel>() ||
            targetTypeOf == _typeOf<_i10.LivenessResetRequestStatusModel?>())) {
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
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
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
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
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
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
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
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
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
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
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
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
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
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
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
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.ResetPasscodeChallengeModel>() ||
            sourceTypeOf == _typeOf<_i2.ResetPasscodeChallengeModel?>()) &&
        (targetTypeOf == _typeOf<_i3.ResetPasscodeChallengeEntity>() ||
            targetTypeOf == _typeOf<_i3.ResetPasscodeChallengeEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$ResetPasscodeChallengeModel_To__i3$ResetPasscodeChallengeEntity(
          (model as _i2.ResetPasscodeChallengeModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.ResetPasscodeChallengeEntity>() ||
            sourceTypeOf == _typeOf<_i3.ResetPasscodeChallengeEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.ResetPasscodeChallengeModel>() ||
            targetTypeOf == _typeOf<_i2.ResetPasscodeChallengeModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$ResetPasscodeChallengeEntity_To__i2$ResetPasscodeChallengeModel(
          (model as _i3.ResetPasscodeChallengeEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.PhoneNumberResetModel>() ||
            sourceTypeOf == _typeOf<_i4.PhoneNumberResetModel?>()) &&
        (targetTypeOf == _typeOf<_i5.PhoneNumberResetEntity>() ||
            targetTypeOf == _typeOf<_i5.PhoneNumberResetEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$PhoneNumberResetModel_To__i5$PhoneNumberResetEntity(
          (model as _i4.PhoneNumberResetModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.PhoneNumberResetEntity>() ||
            sourceTypeOf == _typeOf<_i5.PhoneNumberResetEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.PhoneNumberResetModel>() ||
            targetTypeOf == _typeOf<_i4.PhoneNumberResetModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$PhoneNumberResetEntity_To__i4$PhoneNumberResetModel(
          (model as _i5.PhoneNumberResetEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.PhoneNumberModel>() ||
            sourceTypeOf == _typeOf<_i6.PhoneNumberModel?>()) &&
        (targetTypeOf == _typeOf<_i7.PhoneNumberEntity>() ||
            targetTypeOf == _typeOf<_i7.PhoneNumberEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$PhoneNumberModel_To__i7$PhoneNumberEntity(
          (model as _i6.PhoneNumberModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.PhoneNumberEntity>() ||
            sourceTypeOf == _typeOf<_i7.PhoneNumberEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.PhoneNumberModel>() ||
            targetTypeOf == _typeOf<_i6.PhoneNumberModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$PhoneNumberEntity_To__i6$PhoneNumberModel(
          (model as _i7.PhoneNumberEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.PhoneNumberKycModel>() ||
            sourceTypeOf == _typeOf<_i8.PhoneNumberKycModel?>()) &&
        (targetTypeOf == _typeOf<_i9.PhoneNumberKycEntity>() ||
            targetTypeOf == _typeOf<_i9.PhoneNumberKycEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$PhoneNumberKycModel_To__i9$PhoneNumberKycEntity(
          (model as _i8.PhoneNumberKycModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.PhoneNumberKycEntity>() ||
            sourceTypeOf == _typeOf<_i9.PhoneNumberKycEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.PhoneNumberKycModel>() ||
            targetTypeOf == _typeOf<_i8.PhoneNumberKycModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$PhoneNumberKycEntity_To__i8$PhoneNumberKycModel(
          (model as _i9.PhoneNumberKycEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.LivenessResetRequestStatusModel>() ||
            sourceTypeOf == _typeOf<_i10.LivenessResetRequestStatusModel?>()) &&
        (targetTypeOf == _typeOf<_i11.LivenessResetRequestStatusEntity>() ||
            targetTypeOf ==
                _typeOf<_i11.LivenessResetRequestStatusEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$LivenessResetRequestStatusModel_To__i11$LivenessResetRequestStatusEntity(
          (model as _i10.LivenessResetRequestStatusModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.LivenessResetRequestStatusEntity>() ||
            sourceTypeOf ==
                _typeOf<_i11.LivenessResetRequestStatusEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.LivenessResetRequestStatusModel>() ||
            targetTypeOf == _typeOf<_i10.LivenessResetRequestStatusModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$LivenessResetRequestStatusEntity_To__i10$LivenessResetRequestStatusModel(
          (model as _i11.LivenessResetRequestStatusEntity?)) as TARGET);
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
  /// {@macro package:domain/src/passcode/_mappers/passcode_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.ResetPasscodeChallengeEntity
      _map__i2$ResetPasscodeChallengeModel_To__i3$ResetPasscodeChallengeEntity(
          _i2.ResetPasscodeChallengeModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ResetPasscodeChallengeModel → ResetPasscodeChallengeEntity failed because ResetPasscodeChallengeModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ResetPasscodeChallengeModel, ResetPasscodeChallengeEntity> to handle null values during mapping.');
    }
    return _i3.ResetPasscodeChallengeEntity(
      id: model.id,
      challengeDescription: model.challengeDescription,
      clientId: model.clientId,
    );
  }

  _i2.ResetPasscodeChallengeModel
      _map__i3$ResetPasscodeChallengeEntity_To__i2$ResetPasscodeChallengeModel(
          _i3.ResetPasscodeChallengeEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ResetPasscodeChallengeEntity → ResetPasscodeChallengeModel failed because ResetPasscodeChallengeEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ResetPasscodeChallengeEntity, ResetPasscodeChallengeModel> to handle null values during mapping.');
    }
    return _i2.ResetPasscodeChallengeModel(
      id: model.id,
      challengeDescription: model.challengeDescription,
      clientId: model.clientId,
    );
  }

  _i5.PhoneNumberResetEntity
      _map__i4$PhoneNumberResetModel_To__i5$PhoneNumberResetEntity(
          _i4.PhoneNumberResetModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberResetModel → PhoneNumberResetEntity failed because PhoneNumberResetModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberResetModel, PhoneNumberResetEntity> to handle null values during mapping.');
    }
    return _i5.PhoneNumberResetEntity(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      deletedAt: model.deletedAt,
      isActive: model.isActive,
      searchableText: model.searchableText,
      trials: model.trials,
      code: model.code,
      isVerified: model.isVerified,
      type: model.type,
      phoneNumber:
          _map__i6$PhoneNumberModel_To__i7$PhoneNumberEntity(model.phoneNumber),
    );
  }

  _i4.PhoneNumberResetModel
      _map__i5$PhoneNumberResetEntity_To__i4$PhoneNumberResetModel(
          _i5.PhoneNumberResetEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberResetEntity → PhoneNumberResetModel failed because PhoneNumberResetEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberResetEntity, PhoneNumberResetModel> to handle null values during mapping.');
    }
    return _i4.PhoneNumberResetModel(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      deletedAt: model.deletedAt,
      isActive: model.isActive,
      searchableText: model.searchableText,
      trials: model.trials,
      code: model.code,
      isVerified: model.isVerified,
      type: model.type,
      phoneNumber:
          _map__i7$PhoneNumberEntity_To__i6$PhoneNumberModel(model.phoneNumber),
    );
  }

  _i7.PhoneNumberEntity _map__i6$PhoneNumberModel_To__i7$PhoneNumberEntity(
      _i6.PhoneNumberModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberModel → PhoneNumberEntity failed because PhoneNumberModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberModel, PhoneNumberEntity> to handle null values during mapping.');
    }
    return _i7.PhoneNumberEntity(
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
      kyc: _map__i8$PhoneNumberKycModel_To__i9$PhoneNumberKycEntity(model.kyc),
    );
  }

  _i6.PhoneNumberModel _map__i7$PhoneNumberEntity_To__i6$PhoneNumberModel(
      _i7.PhoneNumberEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberEntity → PhoneNumberModel failed because PhoneNumberEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberEntity, PhoneNumberModel> to handle null values during mapping.');
    }
    return _i6.PhoneNumberModel(
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
      kyc: _map__i9$PhoneNumberKycEntity_To__i8$PhoneNumberKycModel(model.kyc),
    );
  }

  _i9.PhoneNumberKycEntity
      _map__i8$PhoneNumberKycModel_To__i9$PhoneNumberKycEntity(
          _i8.PhoneNumberKycModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberKycModel → PhoneNumberKycEntity failed because PhoneNumberKycModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberKycModel, PhoneNumberKycEntity> to handle null values during mapping.');
    }
    return _i9.PhoneNumberKycEntity(
      firstName: model.firstName,
      lastName: model.lastName,
      email: model.email,
      gender: model.gender,
      dateOfBirth: model.dateOfBirth,
      status: model.status,
    );
  }

  _i8.PhoneNumberKycModel
      _map__i9$PhoneNumberKycEntity_To__i8$PhoneNumberKycModel(
          _i9.PhoneNumberKycEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PhoneNumberKycEntity → PhoneNumberKycModel failed because PhoneNumberKycEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PhoneNumberKycEntity, PhoneNumberKycModel> to handle null values during mapping.');
    }
    return _i8.PhoneNumberKycModel(
      firstName: model.firstName,
      lastName: model.lastName,
      email: model.email,
      gender: model.gender,
      dateOfBirth: model.dateOfBirth,
      status: model.status,
    );
  }

  _i11.LivenessResetRequestStatusEntity
      _map__i10$LivenessResetRequestStatusModel_To__i11$LivenessResetRequestStatusEntity(
          _i10.LivenessResetRequestStatusModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LivenessResetRequestStatusModel → LivenessResetRequestStatusEntity failed because LivenessResetRequestStatusModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LivenessResetRequestStatusModel, LivenessResetRequestStatusEntity> to handle null values during mapping.');
    }
    return _i11.LivenessResetRequestStatusEntity(
      id: model.id,
      status: model.status,
    );
  }

  _i10.LivenessResetRequestStatusModel
      _map__i11$LivenessResetRequestStatusEntity_To__i10$LivenessResetRequestStatusModel(
          _i11.LivenessResetRequestStatusEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LivenessResetRequestStatusEntity → LivenessResetRequestStatusModel failed because LivenessResetRequestStatusEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LivenessResetRequestStatusEntity, LivenessResetRequestStatusModel> to handle null values during mapping.');
    }
    return _i10.LivenessResetRequestStatusModel(
      id: model.id,
      status: model.status,
    );
  }
}
