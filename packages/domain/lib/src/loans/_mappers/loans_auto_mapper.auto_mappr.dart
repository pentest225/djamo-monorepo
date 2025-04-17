// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/loan_eligibility_criteria_entity.dart' as _i17;
import '../entities/loan_eligibility_entity.dart' as _i7;
import '../entities/loan_entity.dart' as _i19;
import '../entities/loan_exclusion_reason_entity.dart' as _i5;
import '../entities/loan_extras_entity.dart' as _i21;
import '../entities/loan_fees_entity.dart' as _i9;
import '../entities/loan_offer_entity.dart' as _i23;
import '../entities/loan_product_entity.dart' as _i3;
import '../entities/loan_score_criteria_entity.dart' as _i15;
import '../entities/loan_score_data_entity.dart' as _i13;
import '../entities/loan_score_entity.dart' as _i11;
import '../models/loan_eligibility_criteria_model.dart' as _i16;
import '../models/loan_eligibility_model.dart' as _i6;
import '../models/loan_exclusion_reason_model.dart' as _i4;
import '../models/loan_extras_model.dart' as _i20;
import '../models/loan_fees_model.dart' as _i8;
import '../models/loan_model.dart' as _i18;
import '../models/loan_offer_model.dart' as _i22;
import '../models/loan_product_model.dart' as _i2;
import '../models/loan_score_criteria_model.dart' as _i14;
import '../models/loan_score_data_model.dart' as _i12;
import '../models/loan_score_model.dart' as _i10;

/// {@template package:domain/src/loans/_mappers/loans_auto_mapper.dart}
/// Available mappings:
/// - `LoanProductModel` → `LoanProductEntity`.
/// - `LoanProductEntity` → `LoanProductModel`.
/// - `LoanExclusionReasonModel` → `LoanExclusionReasonEntity`.
/// - `LoanExclusionReasonEntity` → `LoanExclusionReasonModel`.
/// - `LoanEligibilityModel` → `LoanEligibilityEntity`.
/// - `LoanEligibilityEntity` → `LoanEligibilityModel`.
/// - `LoanFeesModel` → `LoanFeesEntity`.
/// - `LoanFeesEntity` → `LoanFeesModel`.
/// - `LoanScoreModel` → `LoanScoreEntity`.
/// - `LoanScoreEntity` → `LoanScoreModel`.
/// - `LoanScoreDataModel` → `LoanScoreDataEntity`.
/// - `LoanScoreDataEntity` → `LoanScoreDataModel`.
/// - `LoanScoreCriteriaModel` → `LoanScoreCriteriaEntity`.
/// - `LoanScoreCriteriaEntity` → `LoanScoreCriteriaModel`.
/// - `LoanEligibilityCriteriaModel` → `LoanEligibilityCriteriaEntity`.
/// - `LoanEligibilityCriteriaEntity` → `LoanEligibilityCriteriaModel`.
/// - `LoanModel` → `LoanEntity`.
/// - `LoanEntity` → `LoanModel`.
/// - `LoanExtrasModel` → `LoanExtrasEntity`.
/// - `LoanExtrasEntity` → `LoanExtrasModel`.
/// - `LoanOfferModel` → `LoanOfferEntity`.
/// - `LoanOfferEntity` → `LoanOfferModel`.
/// {@endtemplate}
class $LoansAutoMapper implements _i1.AutoMapprInterface {
  const $LoansAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.LoanProductModel>() ||
            sourceTypeOf == _typeOf<_i2.LoanProductModel?>()) &&
        (targetTypeOf == _typeOf<_i3.LoanProductEntity>() ||
            targetTypeOf == _typeOf<_i3.LoanProductEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.LoanProductEntity>() ||
            sourceTypeOf == _typeOf<_i3.LoanProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.LoanProductModel>() ||
            targetTypeOf == _typeOf<_i2.LoanProductModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.LoanExclusionReasonModel>() ||
            sourceTypeOf == _typeOf<_i4.LoanExclusionReasonModel?>()) &&
        (targetTypeOf == _typeOf<_i5.LoanExclusionReasonEntity>() ||
            targetTypeOf == _typeOf<_i5.LoanExclusionReasonEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.LoanExclusionReasonEntity>() ||
            sourceTypeOf == _typeOf<_i5.LoanExclusionReasonEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.LoanExclusionReasonModel>() ||
            targetTypeOf == _typeOf<_i4.LoanExclusionReasonModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.LoanEligibilityModel>() ||
            sourceTypeOf == _typeOf<_i6.LoanEligibilityModel?>()) &&
        (targetTypeOf == _typeOf<_i7.LoanEligibilityEntity>() ||
            targetTypeOf == _typeOf<_i7.LoanEligibilityEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.LoanEligibilityEntity>() ||
            sourceTypeOf == _typeOf<_i7.LoanEligibilityEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.LoanEligibilityModel>() ||
            targetTypeOf == _typeOf<_i6.LoanEligibilityModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.LoanFeesModel>() ||
            sourceTypeOf == _typeOf<_i8.LoanFeesModel?>()) &&
        (targetTypeOf == _typeOf<_i9.LoanFeesEntity>() ||
            targetTypeOf == _typeOf<_i9.LoanFeesEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.LoanFeesEntity>() ||
            sourceTypeOf == _typeOf<_i9.LoanFeesEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.LoanFeesModel>() ||
            targetTypeOf == _typeOf<_i8.LoanFeesModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.LoanScoreModel>() ||
            sourceTypeOf == _typeOf<_i10.LoanScoreModel?>()) &&
        (targetTypeOf == _typeOf<_i11.LoanScoreEntity>() ||
            targetTypeOf == _typeOf<_i11.LoanScoreEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.LoanScoreEntity>() ||
            sourceTypeOf == _typeOf<_i11.LoanScoreEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.LoanScoreModel>() ||
            targetTypeOf == _typeOf<_i10.LoanScoreModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.LoanScoreDataModel>() ||
            sourceTypeOf == _typeOf<_i12.LoanScoreDataModel?>()) &&
        (targetTypeOf == _typeOf<_i13.LoanScoreDataEntity>() ||
            targetTypeOf == _typeOf<_i13.LoanScoreDataEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i13.LoanScoreDataEntity>() ||
            sourceTypeOf == _typeOf<_i13.LoanScoreDataEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.LoanScoreDataModel>() ||
            targetTypeOf == _typeOf<_i12.LoanScoreDataModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i14.LoanScoreCriteriaModel>() ||
            sourceTypeOf == _typeOf<_i14.LoanScoreCriteriaModel?>()) &&
        (targetTypeOf == _typeOf<_i15.LoanScoreCriteriaEntity>() ||
            targetTypeOf == _typeOf<_i15.LoanScoreCriteriaEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i15.LoanScoreCriteriaEntity>() ||
            sourceTypeOf == _typeOf<_i15.LoanScoreCriteriaEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.LoanScoreCriteriaModel>() ||
            targetTypeOf == _typeOf<_i14.LoanScoreCriteriaModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i16.LoanEligibilityCriteriaModel>() ||
            sourceTypeOf == _typeOf<_i16.LoanEligibilityCriteriaModel?>()) &&
        (targetTypeOf == _typeOf<_i17.LoanEligibilityCriteriaEntity>() ||
            targetTypeOf == _typeOf<_i17.LoanEligibilityCriteriaEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i17.LoanEligibilityCriteriaEntity>() ||
            sourceTypeOf == _typeOf<_i17.LoanEligibilityCriteriaEntity?>()) &&
        (targetTypeOf == _typeOf<_i16.LoanEligibilityCriteriaModel>() ||
            targetTypeOf == _typeOf<_i16.LoanEligibilityCriteriaModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i18.LoanModel>() ||
            sourceTypeOf == _typeOf<_i18.LoanModel?>()) &&
        (targetTypeOf == _typeOf<_i19.LoanEntity>() ||
            targetTypeOf == _typeOf<_i19.LoanEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i19.LoanEntity>() ||
            sourceTypeOf == _typeOf<_i19.LoanEntity?>()) &&
        (targetTypeOf == _typeOf<_i18.LoanModel>() ||
            targetTypeOf == _typeOf<_i18.LoanModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i20.LoanExtrasModel>() ||
            sourceTypeOf == _typeOf<_i20.LoanExtrasModel?>()) &&
        (targetTypeOf == _typeOf<_i21.LoanExtrasEntity>() ||
            targetTypeOf == _typeOf<_i21.LoanExtrasEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i21.LoanExtrasEntity>() ||
            sourceTypeOf == _typeOf<_i21.LoanExtrasEntity?>()) &&
        (targetTypeOf == _typeOf<_i20.LoanExtrasModel>() ||
            targetTypeOf == _typeOf<_i20.LoanExtrasModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i22.LoanOfferModel>() ||
            sourceTypeOf == _typeOf<_i22.LoanOfferModel?>()) &&
        (targetTypeOf == _typeOf<_i23.LoanOfferEntity>() ||
            targetTypeOf == _typeOf<_i23.LoanOfferEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i23.LoanOfferEntity>() ||
            sourceTypeOf == _typeOf<_i23.LoanOfferEntity?>()) &&
        (targetTypeOf == _typeOf<_i22.LoanOfferModel>() ||
            targetTypeOf == _typeOf<_i22.LoanOfferModel?>())) {
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
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
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
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
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
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
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
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
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
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
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
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
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
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
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
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.LoanProductModel>() ||
            sourceTypeOf == _typeOf<_i2.LoanProductModel?>()) &&
        (targetTypeOf == _typeOf<_i3.LoanProductEntity>() ||
            targetTypeOf == _typeOf<_i3.LoanProductEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$LoanProductModel_To__i3$LoanProductEntity(
          (model as _i2.LoanProductModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.LoanProductEntity>() ||
            sourceTypeOf == _typeOf<_i3.LoanProductEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.LoanProductModel>() ||
            targetTypeOf == _typeOf<_i2.LoanProductModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$LoanProductEntity_To__i2$LoanProductModel(
          (model as _i3.LoanProductEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.LoanExclusionReasonModel>() ||
            sourceTypeOf == _typeOf<_i4.LoanExclusionReasonModel?>()) &&
        (targetTypeOf == _typeOf<_i5.LoanExclusionReasonEntity>() ||
            targetTypeOf == _typeOf<_i5.LoanExclusionReasonEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$LoanExclusionReasonModel_To__i5$LoanExclusionReasonEntity(
          (model as _i4.LoanExclusionReasonModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.LoanExclusionReasonEntity>() ||
            sourceTypeOf == _typeOf<_i5.LoanExclusionReasonEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.LoanExclusionReasonModel>() ||
            targetTypeOf == _typeOf<_i4.LoanExclusionReasonModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$LoanExclusionReasonEntity_To__i4$LoanExclusionReasonModel(
          (model as _i5.LoanExclusionReasonEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.LoanEligibilityModel>() ||
            sourceTypeOf == _typeOf<_i6.LoanEligibilityModel?>()) &&
        (targetTypeOf == _typeOf<_i7.LoanEligibilityEntity>() ||
            targetTypeOf == _typeOf<_i7.LoanEligibilityEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$LoanEligibilityModel_To__i7$LoanEligibilityEntity(
          (model as _i6.LoanEligibilityModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.LoanEligibilityEntity>() ||
            sourceTypeOf == _typeOf<_i7.LoanEligibilityEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.LoanEligibilityModel>() ||
            targetTypeOf == _typeOf<_i6.LoanEligibilityModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$LoanEligibilityEntity_To__i6$LoanEligibilityModel(
          (model as _i7.LoanEligibilityEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.LoanFeesModel>() ||
            sourceTypeOf == _typeOf<_i8.LoanFeesModel?>()) &&
        (targetTypeOf == _typeOf<_i9.LoanFeesEntity>() ||
            targetTypeOf == _typeOf<_i9.LoanFeesEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$LoanFeesModel_To__i9$LoanFeesEntity(
          (model as _i8.LoanFeesModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.LoanFeesEntity>() ||
            sourceTypeOf == _typeOf<_i9.LoanFeesEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.LoanFeesModel>() ||
            targetTypeOf == _typeOf<_i8.LoanFeesModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$LoanFeesEntity_To__i8$LoanFeesModel(
          (model as _i9.LoanFeesEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.LoanScoreModel>() ||
            sourceTypeOf == _typeOf<_i10.LoanScoreModel?>()) &&
        (targetTypeOf == _typeOf<_i11.LoanScoreEntity>() ||
            targetTypeOf == _typeOf<_i11.LoanScoreEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$LoanScoreModel_To__i11$LoanScoreEntity(
          (model as _i10.LoanScoreModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.LoanScoreEntity>() ||
            sourceTypeOf == _typeOf<_i11.LoanScoreEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.LoanScoreModel>() ||
            targetTypeOf == _typeOf<_i10.LoanScoreModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$LoanScoreEntity_To__i10$LoanScoreModel(
          (model as _i11.LoanScoreEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.LoanScoreDataModel>() ||
            sourceTypeOf == _typeOf<_i12.LoanScoreDataModel?>()) &&
        (targetTypeOf == _typeOf<_i13.LoanScoreDataEntity>() ||
            targetTypeOf == _typeOf<_i13.LoanScoreDataEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$LoanScoreDataModel_To__i13$LoanScoreDataEntity(
          (model as _i12.LoanScoreDataModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i13.LoanScoreDataEntity>() ||
            sourceTypeOf == _typeOf<_i13.LoanScoreDataEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.LoanScoreDataModel>() ||
            targetTypeOf == _typeOf<_i12.LoanScoreDataModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i13$LoanScoreDataEntity_To__i12$LoanScoreDataModel(
          (model as _i13.LoanScoreDataEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i14.LoanScoreCriteriaModel>() ||
            sourceTypeOf == _typeOf<_i14.LoanScoreCriteriaModel?>()) &&
        (targetTypeOf == _typeOf<_i15.LoanScoreCriteriaEntity>() ||
            targetTypeOf == _typeOf<_i15.LoanScoreCriteriaEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i14$LoanScoreCriteriaModel_To__i15$LoanScoreCriteriaEntity(
          (model as _i14.LoanScoreCriteriaModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i15.LoanScoreCriteriaEntity>() ||
            sourceTypeOf == _typeOf<_i15.LoanScoreCriteriaEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.LoanScoreCriteriaModel>() ||
            targetTypeOf == _typeOf<_i14.LoanScoreCriteriaModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i15$LoanScoreCriteriaEntity_To__i14$LoanScoreCriteriaModel(
          (model as _i15.LoanScoreCriteriaEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i16.LoanEligibilityCriteriaModel>() ||
            sourceTypeOf == _typeOf<_i16.LoanEligibilityCriteriaModel?>()) &&
        (targetTypeOf == _typeOf<_i17.LoanEligibilityCriteriaEntity>() ||
            targetTypeOf == _typeOf<_i17.LoanEligibilityCriteriaEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i16$LoanEligibilityCriteriaModel_To__i17$LoanEligibilityCriteriaEntity(
          (model as _i16.LoanEligibilityCriteriaModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i17.LoanEligibilityCriteriaEntity>() ||
            sourceTypeOf == _typeOf<_i17.LoanEligibilityCriteriaEntity?>()) &&
        (targetTypeOf == _typeOf<_i16.LoanEligibilityCriteriaModel>() ||
            targetTypeOf == _typeOf<_i16.LoanEligibilityCriteriaModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i17$LoanEligibilityCriteriaEntity_To__i16$LoanEligibilityCriteriaModel(
          (model as _i17.LoanEligibilityCriteriaEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i18.LoanModel>() ||
            sourceTypeOf == _typeOf<_i18.LoanModel?>()) &&
        (targetTypeOf == _typeOf<_i19.LoanEntity>() ||
            targetTypeOf == _typeOf<_i19.LoanEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i18$LoanModel_To__i19$LoanEntity((model as _i18.LoanModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i19.LoanEntity>() ||
            sourceTypeOf == _typeOf<_i19.LoanEntity?>()) &&
        (targetTypeOf == _typeOf<_i18.LoanModel>() ||
            targetTypeOf == _typeOf<_i18.LoanModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i19$LoanEntity_To__i18$LoanModel(
          (model as _i19.LoanEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i20.LoanExtrasModel>() ||
            sourceTypeOf == _typeOf<_i20.LoanExtrasModel?>()) &&
        (targetTypeOf == _typeOf<_i21.LoanExtrasEntity>() ||
            targetTypeOf == _typeOf<_i21.LoanExtrasEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i20$LoanExtrasModel_To__i21$LoanExtrasEntity(
          (model as _i20.LoanExtrasModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i21.LoanExtrasEntity>() ||
            sourceTypeOf == _typeOf<_i21.LoanExtrasEntity?>()) &&
        (targetTypeOf == _typeOf<_i20.LoanExtrasModel>() ||
            targetTypeOf == _typeOf<_i20.LoanExtrasModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i21$LoanExtrasEntity_To__i20$LoanExtrasModel(
          (model as _i21.LoanExtrasEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i22.LoanOfferModel>() ||
            sourceTypeOf == _typeOf<_i22.LoanOfferModel?>()) &&
        (targetTypeOf == _typeOf<_i23.LoanOfferEntity>() ||
            targetTypeOf == _typeOf<_i23.LoanOfferEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i22$LoanOfferModel_To__i23$LoanOfferEntity(
          (model as _i22.LoanOfferModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i23.LoanOfferEntity>() ||
            sourceTypeOf == _typeOf<_i23.LoanOfferEntity?>()) &&
        (targetTypeOf == _typeOf<_i22.LoanOfferModel>() ||
            targetTypeOf == _typeOf<_i22.LoanOfferModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i23$LoanOfferEntity_To__i22$LoanOfferModel(
          (model as _i23.LoanOfferEntity?)) as TARGET);
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
  /// {@macro package:domain/src/loans/_mappers/loans_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.LoanProductEntity _map__i2$LoanProductModel_To__i3$LoanProductEntity(
      _i2.LoanProductModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanProductModel → LoanProductEntity failed because LoanProductModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanProductModel, LoanProductEntity> to handle null values during mapping.');
    }
    return _i3.LoanProductEntity(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      name: model.name,
      description: model.description,
      iconUrl: model.iconUrl,
      externalId: model.externalId,
      interestRateFrequencyType: model.interestRateFrequencyType,
      interestRatePerPeriod: model.interestRatePerPeriod,
      facilitationFeesRate: model.facilitationFeesRate,
      disbursementFees: model.disbursementFees,
      repaymentEvery: model.repaymentEvery,
      repaymentFrequencyType: model.repaymentFrequencyType,
    );
  }

  _i2.LoanProductModel _map__i3$LoanProductEntity_To__i2$LoanProductModel(
      _i3.LoanProductEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanProductEntity → LoanProductModel failed because LoanProductEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanProductEntity, LoanProductModel> to handle null values during mapping.');
    }
    return _i2.LoanProductModel(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      name: model.name,
      description: model.description,
      iconUrl: model.iconUrl,
      externalId: model.externalId,
      interestRateFrequencyType: model.interestRateFrequencyType,
      interestRatePerPeriod: model.interestRatePerPeriod,
      facilitationFeesRate: model.facilitationFeesRate,
      disbursementFees: model.disbursementFees,
      repaymentEvery: model.repaymentEvery,
      repaymentFrequencyType: model.repaymentFrequencyType,
    );
  }

  _i5.LoanExclusionReasonEntity
      _map__i4$LoanExclusionReasonModel_To__i5$LoanExclusionReasonEntity(
          _i4.LoanExclusionReasonModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanExclusionReasonModel → LoanExclusionReasonEntity failed because LoanExclusionReasonModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanExclusionReasonModel, LoanExclusionReasonEntity> to handle null values during mapping.');
    }
    return _i5.LoanExclusionReasonEntity(
      emoji: model.emoji,
      title: model.title,
      level: model.level,
      subText: model.subText,
      name: model.name,
      description: model.description,
    );
  }

  _i4.LoanExclusionReasonModel
      _map__i5$LoanExclusionReasonEntity_To__i4$LoanExclusionReasonModel(
          _i5.LoanExclusionReasonEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanExclusionReasonEntity → LoanExclusionReasonModel failed because LoanExclusionReasonEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanExclusionReasonEntity, LoanExclusionReasonModel> to handle null values during mapping.');
    }
    return _i4.LoanExclusionReasonModel(
      emoji: model.emoji,
      title: model.title,
      level: model.level,
      subText: model.subText,
      name: model.name,
      description: model.description,
    );
  }

  _i7.LoanEligibilityEntity
      _map__i6$LoanEligibilityModel_To__i7$LoanEligibilityEntity(
          _i6.LoanEligibilityModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanEligibilityModel → LoanEligibilityEntity failed because LoanEligibilityModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanEligibilityModel, LoanEligibilityEntity> to handle null values during mapping.');
    }
    return _i7.LoanEligibilityEntity(
      havePhysicalCard:
          _map__i16$LoanEligibilityCriteriaModel_To__i17$LoanEligibilityCriteriaEntity(
              model.havePhysicalCard),
      haveReachedExpectedDeposit:
          _map__i16$LoanEligibilityCriteriaModel_To__i17$LoanEligibilityCriteriaEntity(
              model.haveReachedExpectedDeposit),
    );
  }

  _i6.LoanEligibilityModel
      _map__i7$LoanEligibilityEntity_To__i6$LoanEligibilityModel(
          _i7.LoanEligibilityEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanEligibilityEntity → LoanEligibilityModel failed because LoanEligibilityEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanEligibilityEntity, LoanEligibilityModel> to handle null values during mapping.');
    }
    return _i6.LoanEligibilityModel(
      havePhysicalCard:
          _map__i17$LoanEligibilityCriteriaEntity_To__i16$LoanEligibilityCriteriaModel(
              model.havePhysicalCard),
      haveReachedExpectedDeposit:
          _map__i17$LoanEligibilityCriteriaEntity_To__i16$LoanEligibilityCriteriaModel(
              model.haveReachedExpectedDeposit),
    );
  }

  _i9.LoanFeesEntity _map__i8$LoanFeesModel_To__i9$LoanFeesEntity(
      _i8.LoanFeesModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanFeesModel → LoanFeesEntity failed because LoanFeesModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanFeesModel, LoanFeesEntity> to handle null values during mapping.');
    }
    return _i9.LoanFeesEntity(
      facilitationFees: model.facilitationFees,
      facilitationFeesRate: model.facilitationFeesRate,
      interestRatePerPeriod: model.interestRatePerPeriod,
      interest: model.interest,
      disbursementFees: model.disbursementFees,
      loanPeriod: model.loanPeriod,
      loanPeriodType: model.loanPeriodType,
      disbursementAmount: model.disbursementAmount,
      repaymentAmount: model.repaymentAmount,
      penaltyChargesOutstanding: model.penaltyChargesOutstanding,
      penaltyChargesCharged: model.penaltyChargesCharged,
      expressLoanFees: model.expressLoanFees,
    );
  }

  _i8.LoanFeesModel _map__i9$LoanFeesEntity_To__i8$LoanFeesModel(
      _i9.LoanFeesEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanFeesEntity → LoanFeesModel failed because LoanFeesEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanFeesEntity, LoanFeesModel> to handle null values during mapping.');
    }
    return _i8.LoanFeesModel(
      facilitationFees: model.facilitationFees,
      facilitationFeesRate: model.facilitationFeesRate,
      interestRatePerPeriod: model.interestRatePerPeriod,
      interest: model.interest,
      disbursementFees: model.disbursementFees,
      loanPeriod: model.loanPeriod,
      loanPeriodType: model.loanPeriodType,
      disbursementAmount: model.disbursementAmount,
      repaymentAmount: model.repaymentAmount,
      penaltyChargesOutstanding: model.penaltyChargesOutstanding,
      penaltyChargesCharged: model.penaltyChargesCharged,
      expressLoanFees: model.expressLoanFees,
    );
  }

  _i11.LoanScoreEntity _map__i10$LoanScoreModel_To__i11$LoanScoreEntity(
      _i10.LoanScoreModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanScoreModel → LoanScoreEntity failed because LoanScoreModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanScoreModel, LoanScoreEntity> to handle null values during mapping.');
    }
    return _i11.LoanScoreEntity(
      title: model.title,
      globalTitle: model.globalTitle,
      subTitle: model.subTitle,
      description: model.description,
      icon: model.icon,
      recommendedAmount: model.recommendedAmount,
      data:
          _map__i12$LoanScoreDataModel_To__i13$LoanScoreDataEntity(model.data),
      scoreClass: model.scoreClass,
    );
  }

  _i10.LoanScoreModel _map__i11$LoanScoreEntity_To__i10$LoanScoreModel(
      _i11.LoanScoreEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanScoreEntity → LoanScoreModel failed because LoanScoreEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanScoreEntity, LoanScoreModel> to handle null values during mapping.');
    }
    return _i10.LoanScoreModel(
      title: model.title,
      globalTitle: model.globalTitle,
      subTitle: model.subTitle,
      description: model.description,
      icon: model.icon,
      recommendedAmount: model.recommendedAmount,
      data:
          _map__i13$LoanScoreDataEntity_To__i12$LoanScoreDataModel(model.data),
      scoreClass: model.scoreClass,
    );
  }

  _i13.LoanScoreDataEntity
      _map__i12$LoanScoreDataModel_To__i13$LoanScoreDataEntity(
          _i12.LoanScoreDataModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanScoreDataModel → LoanScoreDataEntity failed because LoanScoreDataModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanScoreDataModel, LoanScoreDataEntity> to handle null values during mapping.');
    }
    return _i13.LoanScoreDataEntity(
      djamoActivities:
          _map__i14$LoanScoreCriteriaModel_To__i15$LoanScoreCriteriaEntity(
              model.djamoActivities),
      financialResponsibility:
          _map__i14$LoanScoreCriteriaModel_To__i15$LoanScoreCriteriaEntity(
              model.financialResponsibility),
      incomeStability:
          _map__i14$LoanScoreCriteriaModel_To__i15$LoanScoreCriteriaEntity(
              model.incomeStability),
      reimbursementCallToAction:
          _map__i14$LoanScoreCriteriaModel_To__i15$LoanScoreCriteriaEntity(
              model.reimbursementCallToAction),
    );
  }

  _i12.LoanScoreDataModel
      _map__i13$LoanScoreDataEntity_To__i12$LoanScoreDataModel(
          _i13.LoanScoreDataEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanScoreDataEntity → LoanScoreDataModel failed because LoanScoreDataEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanScoreDataEntity, LoanScoreDataModel> to handle null values during mapping.');
    }
    return _i12.LoanScoreDataModel(
      djamoActivities:
          _map__i15$LoanScoreCriteriaEntity_To__i14$LoanScoreCriteriaModel(
              model.djamoActivities),
      financialResponsibility:
          _map__i15$LoanScoreCriteriaEntity_To__i14$LoanScoreCriteriaModel(
              model.financialResponsibility),
      incomeStability:
          _map__i15$LoanScoreCriteriaEntity_To__i14$LoanScoreCriteriaModel(
              model.incomeStability),
      reimbursementCallToAction:
          _map__i15$LoanScoreCriteriaEntity_To__i14$LoanScoreCriteriaModel(
              model.reimbursementCallToAction),
    );
  }

  _i15.LoanScoreCriteriaEntity
      _map__i14$LoanScoreCriteriaModel_To__i15$LoanScoreCriteriaEntity(
          _i14.LoanScoreCriteriaModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanScoreCriteriaModel → LoanScoreCriteriaEntity failed because LoanScoreCriteriaModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanScoreCriteriaModel, LoanScoreCriteriaEntity> to handle null values during mapping.');
    }
    return _i15.LoanScoreCriteriaEntity(
      title: model.title,
      description: model.description,
      icon: model.icon,
      value: model.value,
      valueCoefficient: model.valueCoefficient,
      componentType: model.componentType,
      remainingDate: model.remainingDate,
      body: model.body,
      tooltipTitle: model.tooltipTitle,
      tooltipBody: model.tooltipBody,
      isActiveTooltip: model.isActiveTooltip,
    );
  }

  _i14.LoanScoreCriteriaModel
      _map__i15$LoanScoreCriteriaEntity_To__i14$LoanScoreCriteriaModel(
          _i15.LoanScoreCriteriaEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanScoreCriteriaEntity → LoanScoreCriteriaModel failed because LoanScoreCriteriaEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanScoreCriteriaEntity, LoanScoreCriteriaModel> to handle null values during mapping.');
    }
    return _i14.LoanScoreCriteriaModel(
      title: model.title,
      description: model.description,
      icon: model.icon,
      value: model.value,
      valueCoefficient: model.valueCoefficient,
      componentType: model.componentType,
      remainingDate: model.remainingDate,
      body: model.body,
      tooltipTitle: model.tooltipTitle,
      tooltipBody: model.tooltipBody,
      isActiveTooltip: model.isActiveTooltip,
    );
  }

  _i17.LoanEligibilityCriteriaEntity
      _map__i16$LoanEligibilityCriteriaModel_To__i17$LoanEligibilityCriteriaEntity(
          _i16.LoanEligibilityCriteriaModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanEligibilityCriteriaModel → LoanEligibilityCriteriaEntity failed because LoanEligibilityCriteriaModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanEligibilityCriteriaModel, LoanEligibilityCriteriaEntity> to handle null values during mapping.');
    }
    return _i17.LoanEligibilityCriteriaEntity(
      title: model.title,
      description: model.description,
      expectedDepositAmount: model.expectedDepositAmount,
      callToAction: model.callToAction,
      isActive: model.isActive,
      value: model.value,
      totalOfDepositAmount: model.totalOfDepositAmount,
      type: model.type,
    );
  }

  _i16.LoanEligibilityCriteriaModel
      _map__i17$LoanEligibilityCriteriaEntity_To__i16$LoanEligibilityCriteriaModel(
          _i17.LoanEligibilityCriteriaEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanEligibilityCriteriaEntity → LoanEligibilityCriteriaModel failed because LoanEligibilityCriteriaEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanEligibilityCriteriaEntity, LoanEligibilityCriteriaModel> to handle null values during mapping.');
    }
    return _i16.LoanEligibilityCriteriaModel(
      title: model.title,
      description: model.description,
      expectedDepositAmount: model.expectedDepositAmount,
      callToAction: model.callToAction,
      isActive: model.isActive,
      value: model.value,
      totalOfDepositAmount: model.totalOfDepositAmount,
      type: model.type,
    );
  }

  _i19.LoanEntity _map__i18$LoanModel_To__i19$LoanEntity(
      _i18.LoanModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanModel → LoanEntity failed because LoanModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanModel, LoanEntity> to handle null values during mapping.');
    }
    return _i19.LoanEntity(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      timestamp: model.timestamp,
      externalId: model.externalId,
      fees: model.fees,
      principal: model.principal,
      interest: model.interest,
      facilitationFees: model.facilitationFees,
      penaltyFees: model.penaltyFees,
      disbursedAmount: model.disbursedAmount,
      repaymentAmount: model.repaymentAmount,
      lastRepaymentAmount: model.lastRepaymentAmount,
      interestRatePerPeriod: model.interestRatePerPeriod,
      facilitationFeesRate: model.facilitationFeesRate,
      clientFullName: model.clientFullName,
      accountExternalId: model.accountExternalId,
      status: model.status,
      maturityDate: model.maturityDate,
      disbursementDate: model.disbursementDate,
      expectedDisbursementDate: model.expectedDisbursementDate,
      accountId: model.accountId,
      offerId: model.offerId,
      lastRepaymentAttemptedAt: model.lastRepaymentAttemptedAt,
      repaymentTrials: model.repaymentTrials,
      expressLoanFees: model.expressLoanFees,
    );
  }

  _i18.LoanModel _map__i19$LoanEntity_To__i18$LoanModel(
      _i19.LoanEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanEntity → LoanModel failed because LoanEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanEntity, LoanModel> to handle null values during mapping.');
    }
    return _i18.LoanModel(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      timestamp: model.timestamp,
      externalId: model.externalId,
      fees: model.fees,
      principal: model.principal,
      interest: model.interest,
      facilitationFees: model.facilitationFees,
      penaltyFees: model.penaltyFees,
      disbursedAmount: model.disbursedAmount,
      repaymentAmount: model.repaymentAmount,
      lastRepaymentAmount: model.lastRepaymentAmount,
      interestRatePerPeriod: model.interestRatePerPeriod,
      facilitationFeesRate: model.facilitationFeesRate,
      clientFullName: model.clientFullName,
      accountExternalId: model.accountExternalId,
      status: model.status,
      maturityDate: model.maturityDate,
      disbursementDate: model.disbursementDate,
      expectedDisbursementDate: model.expectedDisbursementDate,
      accountId: model.accountId,
      offerId: model.offerId,
      lastRepaymentAttemptedAt: model.lastRepaymentAttemptedAt,
      repaymentTrials: model.repaymentTrials,
      expressLoanFees: model.expressLoanFees,
    );
  }

  _i21.LoanExtrasEntity _map__i20$LoanExtrasModel_To__i21$LoanExtrasEntity(
      _i20.LoanExtrasModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanExtrasModel → LoanExtrasEntity failed because LoanExtrasModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanExtrasModel, LoanExtrasEntity> to handle null values during mapping.');
    }
    return _i21.LoanExtrasEntity(
      facilitationFees: model.facilitationFees,
      facilitationFeesRate: model.facilitationFeesRate,
      interestRatePerPeriod: model.interestRatePerPeriod,
      interest: model.interest,
      disbursementFees: model.disbursementFees,
      loanPeriod: model.loanPeriod,
      loanPeriodType: model.loanPeriodType,
      disbursementAmount: model.disbursementAmount,
      repaymentAmount: model.repaymentAmount,
      penaltyChargesOutstanding: model.penaltyChargesOutstanding,
      penaltyChargesCharged: model.penaltyChargesCharged,
      penaltyFees: model.penaltyFees,
    );
  }

  _i20.LoanExtrasModel _map__i21$LoanExtrasEntity_To__i20$LoanExtrasModel(
      _i21.LoanExtrasEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanExtrasEntity → LoanExtrasModel failed because LoanExtrasEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanExtrasEntity, LoanExtrasModel> to handle null values during mapping.');
    }
    return _i20.LoanExtrasModel(
      facilitationFees: model.facilitationFees,
      facilitationFeesRate: model.facilitationFeesRate,
      interestRatePerPeriod: model.interestRatePerPeriod,
      interest: model.interest,
      disbursementFees: model.disbursementFees,
      loanPeriod: model.loanPeriod,
      loanPeriodType: model.loanPeriodType,
      disbursementAmount: model.disbursementAmount,
      repaymentAmount: model.repaymentAmount,
      penaltyChargesOutstanding: model.penaltyChargesOutstanding,
      penaltyChargesCharged: model.penaltyChargesCharged,
      penaltyFees: model.penaltyFees,
    );
  }

  _i23.LoanOfferEntity _map__i22$LoanOfferModel_To__i23$LoanOfferEntity(
      _i22.LoanOfferModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanOfferModel → LoanOfferEntity failed because LoanOfferModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanOfferModel, LoanOfferEntity> to handle null values during mapping.');
    }
    return _i23.LoanOfferEntity(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      externalId: model.externalId,
      clientId: model.clientId,
      externalLoanId: model.externalLoanId,
      isActive: model.isActive,
      loanOfferClass: model.loanOfferClass,
      amount: model.amount,
      scoringStrategyId: model.scoringStrategyId,
      recommendationStrategyId: model.recommendationStrategyId,
      currentStatus: model.currentStatus,
      currentStatusDate: model.currentStatusDate,
      expiryMode: model.expiryMode,
      expiryReason: model.expiryReason,
    );
  }

  _i22.LoanOfferModel _map__i23$LoanOfferEntity_To__i22$LoanOfferModel(
      _i23.LoanOfferEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LoanOfferEntity → LoanOfferModel failed because LoanOfferEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LoanOfferEntity, LoanOfferModel> to handle null values during mapping.');
    }
    return _i22.LoanOfferModel(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      externalId: model.externalId,
      clientId: model.clientId,
      externalLoanId: model.externalLoanId,
      isActive: model.isActive,
      loanOfferClass: model.loanOfferClass,
      amount: model.amount,
      scoringStrategyId: model.scoringStrategyId,
      recommendationStrategyId: model.recommendationStrategyId,
      currentStatus: model.currentStatus,
      currentStatusDate: model.currentStatusDate,
      expiryMode: model.expiryMode,
      expiryReason: model.expiryReason,
    );
  }
}
