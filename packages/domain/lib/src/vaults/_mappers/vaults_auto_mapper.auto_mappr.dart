// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/challenge_entity.dart' as _i5;
import '../entities/client_challenges_entity.dart' as _i7;
import '../entities/vault_entity.dart' as _i9;
import '../entities/vault_saving_product_entity.dart' as _i3;
import '../models/challenge_model.dart' as _i4;
import '../models/client_challenges_model.dart' as _i6;
import '../models/vault_model.dart' as _i8;
import '../models/vault_saving_product_model.dart' as _i2;

/// {@template package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
/// Available mappings:
/// - `VaultSavingProductModel` → `VaultSavingProductEntity`.
/// - `VaultSavingProductEntity` → `VaultSavingProductModel`.
/// - `ChallengeModel` → `ChallengeEntity`.
/// - `ChallengeEntity` → `ChallengeModel`.
/// - `ClientChallengesModel` → `ClientChallengesEntity`.
/// - `ClientChallengesEntity` → `ClientChallengesModel`.
/// - `VaultModel` → `VaultEntity`.
/// - `VaultEntity` → `VaultModel`.
/// {@endtemplate}
class $VaultsAutoMapper implements _i1.AutoMapprInterface {
  const $VaultsAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.VaultSavingProductModel>() ||
            sourceTypeOf == _typeOf<_i2.VaultSavingProductModel?>()) &&
        (targetTypeOf == _typeOf<_i3.VaultSavingProductEntity>() ||
            targetTypeOf == _typeOf<_i3.VaultSavingProductEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.VaultSavingProductEntity>() ||
            sourceTypeOf == _typeOf<_i3.VaultSavingProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.VaultSavingProductModel>() ||
            targetTypeOf == _typeOf<_i2.VaultSavingProductModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.ChallengeModel>() ||
            sourceTypeOf == _typeOf<_i4.ChallengeModel?>()) &&
        (targetTypeOf == _typeOf<_i5.ChallengeEntity>() ||
            targetTypeOf == _typeOf<_i5.ChallengeEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.ChallengeEntity>() ||
            sourceTypeOf == _typeOf<_i5.ChallengeEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.ChallengeModel>() ||
            targetTypeOf == _typeOf<_i4.ChallengeModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.ClientChallengesModel>() ||
            sourceTypeOf == _typeOf<_i6.ClientChallengesModel?>()) &&
        (targetTypeOf == _typeOf<_i7.ClientChallengesEntity>() ||
            targetTypeOf == _typeOf<_i7.ClientChallengesEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.ClientChallengesEntity>() ||
            sourceTypeOf == _typeOf<_i7.ClientChallengesEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.ClientChallengesModel>() ||
            targetTypeOf == _typeOf<_i6.ClientChallengesModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.VaultModel>() ||
            sourceTypeOf == _typeOf<_i8.VaultModel?>()) &&
        (targetTypeOf == _typeOf<_i9.VaultEntity>() ||
            targetTypeOf == _typeOf<_i9.VaultEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.VaultEntity>() ||
            sourceTypeOf == _typeOf<_i9.VaultEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.VaultModel>() ||
            targetTypeOf == _typeOf<_i8.VaultModel?>())) {
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
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
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
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
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
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
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
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
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
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
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
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
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
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
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
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.VaultSavingProductModel>() ||
            sourceTypeOf == _typeOf<_i2.VaultSavingProductModel?>()) &&
        (targetTypeOf == _typeOf<_i3.VaultSavingProductEntity>() ||
            targetTypeOf == _typeOf<_i3.VaultSavingProductEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$VaultSavingProductModel_To__i3$VaultSavingProductEntity(
          (model as _i2.VaultSavingProductModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.VaultSavingProductEntity>() ||
            sourceTypeOf == _typeOf<_i3.VaultSavingProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.VaultSavingProductModel>() ||
            targetTypeOf == _typeOf<_i2.VaultSavingProductModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$VaultSavingProductEntity_To__i2$VaultSavingProductModel(
          (model as _i3.VaultSavingProductEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.ChallengeModel>() ||
            sourceTypeOf == _typeOf<_i4.ChallengeModel?>()) &&
        (targetTypeOf == _typeOf<_i5.ChallengeEntity>() ||
            targetTypeOf == _typeOf<_i5.ChallengeEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$ChallengeModel_To__i5$ChallengeEntity(
          (model as _i4.ChallengeModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.ChallengeEntity>() ||
            sourceTypeOf == _typeOf<_i5.ChallengeEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.ChallengeModel>() ||
            targetTypeOf == _typeOf<_i4.ChallengeModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$ChallengeEntity_To__i4$ChallengeModel(
          (model as _i5.ChallengeEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.ClientChallengesModel>() ||
            sourceTypeOf == _typeOf<_i6.ClientChallengesModel?>()) &&
        (targetTypeOf == _typeOf<_i7.ClientChallengesEntity>() ||
            targetTypeOf == _typeOf<_i7.ClientChallengesEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$ClientChallengesModel_To__i7$ClientChallengesEntity(
          (model as _i6.ClientChallengesModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.ClientChallengesEntity>() ||
            sourceTypeOf == _typeOf<_i7.ClientChallengesEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.ClientChallengesModel>() ||
            targetTypeOf == _typeOf<_i6.ClientChallengesModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$ClientChallengesEntity_To__i6$ClientChallengesModel(
          (model as _i7.ClientChallengesEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.VaultModel>() ||
            sourceTypeOf == _typeOf<_i8.VaultModel?>()) &&
        (targetTypeOf == _typeOf<_i9.VaultEntity>() ||
            targetTypeOf == _typeOf<_i9.VaultEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$VaultModel_To__i9$VaultEntity((model as _i8.VaultModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.VaultEntity>() ||
            sourceTypeOf == _typeOf<_i9.VaultEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.VaultModel>() ||
            targetTypeOf == _typeOf<_i8.VaultModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$VaultEntity_To__i8$VaultModel(
          (model as _i9.VaultEntity?)) as TARGET);
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
  /// {@macro package:domain/src/vaults/_mappers/vaults_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.VaultSavingProductEntity
      _map__i2$VaultSavingProductModel_To__i3$VaultSavingProductEntity(
          _i2.VaultSavingProductModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping VaultSavingProductModel → VaultSavingProductEntity failed because VaultSavingProductModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<VaultSavingProductModel, VaultSavingProductEntity> to handle null values during mapping.');
    }
    return _i3.VaultSavingProductEntity(
      id: model.id,
      isBlocked: model.isBlocked,
      blockedDurationDays: model.blockedDurationDays,
      blockedDurationLabel: model.blockedDurationLabel,
      interestRate: model.interestRate,
    );
  }

  _i2.VaultSavingProductModel
      _map__i3$VaultSavingProductEntity_To__i2$VaultSavingProductModel(
          _i3.VaultSavingProductEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping VaultSavingProductEntity → VaultSavingProductModel failed because VaultSavingProductEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<VaultSavingProductEntity, VaultSavingProductModel> to handle null values during mapping.');
    }
    return _i2.VaultSavingProductModel(
      id: model.id,
      isBlocked: model.isBlocked,
      blockedDurationDays: model.blockedDurationDays,
      blockedDurationLabel: model.blockedDurationLabel,
      interestRate: model.interestRate,
    );
  }

  _i5.ChallengeEntity _map__i4$ChallengeModel_To__i5$ChallengeEntity(
      _i4.ChallengeModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ChallengeModel → ChallengeEntity failed because ChallengeModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ChallengeModel, ChallengeEntity> to handle null values during mapping.');
    }
    return _i5.ChallengeEntity(
      id: model.id,
      label: model.label,
      description: model.description,
      iconUrl: model.iconUrl,
      targetAmount: model.targetAmount,
      reward: model.reward,
      deadline: model.deadline,
      createdAt: model.createdAt,
      participantNumber: model.participantNumber,
      winnerNumber: model.winnerNumber,
      hasChangeAutoCredit: model.hasChangeAutoCredit,
      hasRecurringAutoCredit: model.hasRecurringAutoCredit,
      recurringAutoCreditAmount: model.recurringAutoCreditAmount,
      recurringAutoCreditFrequency: model.recurringAutoCreditFrequency,
      changeAutoCreditMultiplier: model.changeAutoCreditMultiplier,
      minimumDeposit: model.minimumDeposit,
      termsOfUseIntercomId: model.termsOfUseIntercomId,
      vaultType: model.vaultType,
    );
  }

  _i4.ChallengeModel _map__i5$ChallengeEntity_To__i4$ChallengeModel(
      _i5.ChallengeEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ChallengeEntity → ChallengeModel failed because ChallengeEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ChallengeEntity, ChallengeModel> to handle null values during mapping.');
    }
    return _i4.ChallengeModel(
      id: model.id,
      label: model.label,
      description: model.description,
      iconUrl: model.iconUrl,
      targetAmount: model.targetAmount,
      reward: model.reward,
      deadline: model.deadline,
      createdAt: model.createdAt,
      participantNumber: model.participantNumber,
      winnerNumber: model.winnerNumber,
      hasChangeAutoCredit: model.hasChangeAutoCredit,
      hasRecurringAutoCredit: model.hasRecurringAutoCredit,
      recurringAutoCreditAmount: model.recurringAutoCreditAmount,
      recurringAutoCreditFrequency: model.recurringAutoCreditFrequency,
      changeAutoCreditMultiplier: model.changeAutoCreditMultiplier,
      minimumDeposit: model.minimumDeposit,
      termsOfUseIntercomId: model.termsOfUseIntercomId,
      vaultType: model.vaultType,
    );
  }

  _i7.ClientChallengesEntity
      _map__i6$ClientChallengesModel_To__i7$ClientChallengesEntity(
          _i6.ClientChallengesModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ClientChallengesModel → ClientChallengesEntity failed because ClientChallengesModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ClientChallengesModel, ClientChallengesEntity> to handle null values during mapping.');
    }
    return _i7.ClientChallengesEntity(
      clientChallenge: model.clientChallenge
          .map<_i5.ChallengeEntity>(
              (value) => _map__i4$ChallengeModel_To__i5$ChallengeEntity(value))
          .toList(),
      otherChallenge: model.otherChallenge
          .map<_i5.ChallengeEntity>(
              (value) => _map__i4$ChallengeModel_To__i5$ChallengeEntity(value))
          .toList(),
    );
  }

  _i6.ClientChallengesModel
      _map__i7$ClientChallengesEntity_To__i6$ClientChallengesModel(
          _i7.ClientChallengesEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ClientChallengesEntity → ClientChallengesModel failed because ClientChallengesEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ClientChallengesEntity, ClientChallengesModel> to handle null values during mapping.');
    }
    return _i6.ClientChallengesModel(
      clientChallenge: model.clientChallenge
          .map<_i4.ChallengeModel>(
              (value) => _map__i5$ChallengeEntity_To__i4$ChallengeModel(value))
          .toList(),
      otherChallenge: model.otherChallenge
          .map<_i4.ChallengeModel>(
              (value) => _map__i5$ChallengeEntity_To__i4$ChallengeModel(value))
          .toList(),
    );
  }

  _i9.VaultEntity _map__i8$VaultModel_To__i9$VaultEntity(
      _i8.VaultModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping VaultModel → VaultEntity failed because VaultModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<VaultModel, VaultEntity> to handle null values during mapping.');
    }
    return _i9.VaultEntity(
      id: model.id,
      description: model.description,
      deadline: model.deadline,
      targetAmount: model.targetAmount,
      hasChangeAutoCredit: model.hasChangeAutoCredit,
      changeAutoCreditMultiplier: model.changeAutoCreditMultiplier,
      hasRecurringAutoCredit: model.hasRecurringAutoCredit,
      recurringAutoCreditAmount: model.recurringAutoCreditAmount,
      recurringAutoCreditFrequency: model.recurringAutoCreditFrequency,
      iconUrl: model.iconUrl,
      accountId: model.accountId,
      vaultBalance: model.vaultBalance,
      createdAt: model.createdAt,
      vaultChallenge: model.vaultChallenge,
      type: model.type,
      interestEarned: model.interestEarned,
      interestPosted: model.interestPosted,
      interestRate: model.interestRate,
      productId: model.productId,
    );
  }

  _i8.VaultModel _map__i9$VaultEntity_To__i8$VaultModel(
      _i9.VaultEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping VaultEntity → VaultModel failed because VaultEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<VaultEntity, VaultModel> to handle null values during mapping.');
    }
    return _i8.VaultModel(
      id: model.id,
      description: model.description,
      deadline: model.deadline,
      targetAmount: model.targetAmount,
      hasChangeAutoCredit: model.hasChangeAutoCredit,
      changeAutoCreditMultiplier: model.changeAutoCreditMultiplier,
      hasRecurringAutoCredit: model.hasRecurringAutoCredit,
      recurringAutoCreditAmount: model.recurringAutoCreditAmount,
      recurringAutoCreditFrequency: model.recurringAutoCreditFrequency,
      iconUrl: model.iconUrl,
      accountId: model.accountId,
      vaultBalance: model.vaultBalance,
      createdAt: model.createdAt,
      vaultChallenge: model.vaultChallenge,
      type: model.type,
      interestEarned: model.interestEarned,
      interestPosted: model.interestPosted,
      interestRate: model.interestRate,
      productId: model.productId,
    );
  }
}
