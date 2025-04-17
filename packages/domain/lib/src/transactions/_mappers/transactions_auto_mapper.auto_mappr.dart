// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/debit_by_category_entity.dart' as _i17;
import '../entities/monthly_category_stats_entity.dart' as _i3;
import '../entities/monthly_transaction_summary_entity.dart' as _i11;
import '../entities/monthly_transactions_entity.dart' as _i9;
import '../entities/transaction_category_entity.dart' as _i7;
import '../entities/transaction_daily_stats_entity.dart' as _i5;
import '../entities/transaction_entity.dart' as _i15;
import '../entities/transaction_tag_entity.dart' as _i13;
import '../models/debit_by_category_model.dart' as _i16;
import '../models/monthly_category_stats_model.dart' as _i2;
import '../models/monthly_transaction_summary_model.dart' as _i10;
import '../models/monthly_transactions_model.dart' as _i8;
import '../models/transaction_category_model.dart' as _i6;
import '../models/transaction_daily_stats_model.dart' as _i4;
import '../models/transaction_model.dart' as _i14;
import '../models/transaction_tag_model.dart' as _i12;

/// {@template package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
/// Available mappings:
/// - `MonthlyCategoryStatsModel` → `MonthlyCategoryStatsEntity`.
/// - `MonthlyCategoryStatsEntity` → `MonthlyCategoryStatsModel`.
/// - `TransactionDailyStatsModel` → `TransactionDailyStatsEntity`.
/// - `TransactionDailyStatsEntity` → `TransactionDailyStatsModel`.
/// - `TransactionCategoryModel` → `TransactionCategoryEntity`.
/// - `TransactionCategoryEntity` → `TransactionCategoryModel`.
/// - `MonthlyTransactionsModel` → `MonthlyTransactionsEntity`.
/// - `MonthlyTransactionsEntity` → `MonthlyTransactionsModel`.
/// - `MonthlyTransactionSummaryModel` → `MonthlyTransactionSummaryEntity`.
/// - `MonthlyTransactionSummaryEntity` → `MonthlyTransactionSummaryModel`.
/// - `TransactionTagModel` → `TransactionTagEntity`.
/// - `TransactionTagEntity` → `TransactionTagModel`.
/// - `TransactionModel` → `TransactionEntity`.
/// - `TransactionEntity` → `TransactionModel`.
/// - `DebitByCategoryModel` → `DebitByCategoryEntity`.
/// - `DebitByCategoryEntity` → `DebitByCategoryModel`.
/// {@endtemplate}
class $TransactionsAutoMapper implements _i1.AutoMapprInterface {
  const $TransactionsAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.MonthlyCategoryStatsModel>() ||
            sourceTypeOf == _typeOf<_i2.MonthlyCategoryStatsModel?>()) &&
        (targetTypeOf == _typeOf<_i3.MonthlyCategoryStatsEntity>() ||
            targetTypeOf == _typeOf<_i3.MonthlyCategoryStatsEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.MonthlyCategoryStatsEntity>() ||
            sourceTypeOf == _typeOf<_i3.MonthlyCategoryStatsEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.MonthlyCategoryStatsModel>() ||
            targetTypeOf == _typeOf<_i2.MonthlyCategoryStatsModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.TransactionDailyStatsModel>() ||
            sourceTypeOf == _typeOf<_i4.TransactionDailyStatsModel?>()) &&
        (targetTypeOf == _typeOf<_i5.TransactionDailyStatsEntity>() ||
            targetTypeOf == _typeOf<_i5.TransactionDailyStatsEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.TransactionDailyStatsEntity>() ||
            sourceTypeOf == _typeOf<_i5.TransactionDailyStatsEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.TransactionDailyStatsModel>() ||
            targetTypeOf == _typeOf<_i4.TransactionDailyStatsModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.TransactionCategoryModel>() ||
            sourceTypeOf == _typeOf<_i6.TransactionCategoryModel?>()) &&
        (targetTypeOf == _typeOf<_i7.TransactionCategoryEntity>() ||
            targetTypeOf == _typeOf<_i7.TransactionCategoryEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.TransactionCategoryEntity>() ||
            sourceTypeOf == _typeOf<_i7.TransactionCategoryEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.TransactionCategoryModel>() ||
            targetTypeOf == _typeOf<_i6.TransactionCategoryModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.MonthlyTransactionsModel>() ||
            sourceTypeOf == _typeOf<_i8.MonthlyTransactionsModel?>()) &&
        (targetTypeOf == _typeOf<_i9.MonthlyTransactionsEntity>() ||
            targetTypeOf == _typeOf<_i9.MonthlyTransactionsEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.MonthlyTransactionsEntity>() ||
            sourceTypeOf == _typeOf<_i9.MonthlyTransactionsEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.MonthlyTransactionsModel>() ||
            targetTypeOf == _typeOf<_i8.MonthlyTransactionsModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.MonthlyTransactionSummaryModel>() ||
            sourceTypeOf == _typeOf<_i10.MonthlyTransactionSummaryModel?>()) &&
        (targetTypeOf == _typeOf<_i11.MonthlyTransactionSummaryEntity>() ||
            targetTypeOf == _typeOf<_i11.MonthlyTransactionSummaryEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.MonthlyTransactionSummaryEntity>() ||
            sourceTypeOf == _typeOf<_i11.MonthlyTransactionSummaryEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.MonthlyTransactionSummaryModel>() ||
            targetTypeOf == _typeOf<_i10.MonthlyTransactionSummaryModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.TransactionTagModel>() ||
            sourceTypeOf == _typeOf<_i12.TransactionTagModel?>()) &&
        (targetTypeOf == _typeOf<_i13.TransactionTagEntity>() ||
            targetTypeOf == _typeOf<_i13.TransactionTagEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i13.TransactionTagEntity>() ||
            sourceTypeOf == _typeOf<_i13.TransactionTagEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.TransactionTagModel>() ||
            targetTypeOf == _typeOf<_i12.TransactionTagModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i14.TransactionModel>() ||
            sourceTypeOf == _typeOf<_i14.TransactionModel?>()) &&
        (targetTypeOf == _typeOf<_i15.TransactionEntity>() ||
            targetTypeOf == _typeOf<_i15.TransactionEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i15.TransactionEntity>() ||
            sourceTypeOf == _typeOf<_i15.TransactionEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.TransactionModel>() ||
            targetTypeOf == _typeOf<_i14.TransactionModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i16.DebitByCategoryModel>() ||
            sourceTypeOf == _typeOf<_i16.DebitByCategoryModel?>()) &&
        (targetTypeOf == _typeOf<_i17.DebitByCategoryEntity>() ||
            targetTypeOf == _typeOf<_i17.DebitByCategoryEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i17.DebitByCategoryEntity>() ||
            sourceTypeOf == _typeOf<_i17.DebitByCategoryEntity?>()) &&
        (targetTypeOf == _typeOf<_i16.DebitByCategoryModel>() ||
            targetTypeOf == _typeOf<_i16.DebitByCategoryModel?>())) {
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
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
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
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
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
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
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
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
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
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
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
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
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
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
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
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.MonthlyCategoryStatsModel>() ||
            sourceTypeOf == _typeOf<_i2.MonthlyCategoryStatsModel?>()) &&
        (targetTypeOf == _typeOf<_i3.MonthlyCategoryStatsEntity>() ||
            targetTypeOf == _typeOf<_i3.MonthlyCategoryStatsEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$MonthlyCategoryStatsModel_To__i3$MonthlyCategoryStatsEntity(
          (model as _i2.MonthlyCategoryStatsModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.MonthlyCategoryStatsEntity>() ||
            sourceTypeOf == _typeOf<_i3.MonthlyCategoryStatsEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.MonthlyCategoryStatsModel>() ||
            targetTypeOf == _typeOf<_i2.MonthlyCategoryStatsModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$MonthlyCategoryStatsEntity_To__i2$MonthlyCategoryStatsModel(
          (model as _i3.MonthlyCategoryStatsEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.TransactionDailyStatsModel>() ||
            sourceTypeOf == _typeOf<_i4.TransactionDailyStatsModel?>()) &&
        (targetTypeOf == _typeOf<_i5.TransactionDailyStatsEntity>() ||
            targetTypeOf == _typeOf<_i5.TransactionDailyStatsEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$TransactionDailyStatsModel_To__i5$TransactionDailyStatsEntity(
          (model as _i4.TransactionDailyStatsModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.TransactionDailyStatsEntity>() ||
            sourceTypeOf == _typeOf<_i5.TransactionDailyStatsEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.TransactionDailyStatsModel>() ||
            targetTypeOf == _typeOf<_i4.TransactionDailyStatsModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$TransactionDailyStatsEntity_To__i4$TransactionDailyStatsModel(
          (model as _i5.TransactionDailyStatsEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.TransactionCategoryModel>() ||
            sourceTypeOf == _typeOf<_i6.TransactionCategoryModel?>()) &&
        (targetTypeOf == _typeOf<_i7.TransactionCategoryEntity>() ||
            targetTypeOf == _typeOf<_i7.TransactionCategoryEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$TransactionCategoryModel_To__i7$TransactionCategoryEntity(
          (model as _i6.TransactionCategoryModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.TransactionCategoryEntity>() ||
            sourceTypeOf == _typeOf<_i7.TransactionCategoryEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.TransactionCategoryModel>() ||
            targetTypeOf == _typeOf<_i6.TransactionCategoryModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$TransactionCategoryEntity_To__i6$TransactionCategoryModel(
          (model as _i7.TransactionCategoryEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.MonthlyTransactionsModel>() ||
            sourceTypeOf == _typeOf<_i8.MonthlyTransactionsModel?>()) &&
        (targetTypeOf == _typeOf<_i9.MonthlyTransactionsEntity>() ||
            targetTypeOf == _typeOf<_i9.MonthlyTransactionsEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$MonthlyTransactionsModel_To__i9$MonthlyTransactionsEntity(
          (model as _i8.MonthlyTransactionsModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.MonthlyTransactionsEntity>() ||
            sourceTypeOf == _typeOf<_i9.MonthlyTransactionsEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.MonthlyTransactionsModel>() ||
            targetTypeOf == _typeOf<_i8.MonthlyTransactionsModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$MonthlyTransactionsEntity_To__i8$MonthlyTransactionsModel(
          (model as _i9.MonthlyTransactionsEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.MonthlyTransactionSummaryModel>() ||
            sourceTypeOf == _typeOf<_i10.MonthlyTransactionSummaryModel?>()) &&
        (targetTypeOf == _typeOf<_i11.MonthlyTransactionSummaryEntity>() ||
            targetTypeOf == _typeOf<_i11.MonthlyTransactionSummaryEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$MonthlyTransactionSummaryModel_To__i11$MonthlyTransactionSummaryEntity(
          (model as _i10.MonthlyTransactionSummaryModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.MonthlyTransactionSummaryEntity>() ||
            sourceTypeOf == _typeOf<_i11.MonthlyTransactionSummaryEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.MonthlyTransactionSummaryModel>() ||
            targetTypeOf == _typeOf<_i10.MonthlyTransactionSummaryModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$MonthlyTransactionSummaryEntity_To__i10$MonthlyTransactionSummaryModel(
          (model as _i11.MonthlyTransactionSummaryEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.TransactionTagModel>() ||
            sourceTypeOf == _typeOf<_i12.TransactionTagModel?>()) &&
        (targetTypeOf == _typeOf<_i13.TransactionTagEntity>() ||
            targetTypeOf == _typeOf<_i13.TransactionTagEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$TransactionTagModel_To__i13$TransactionTagEntity(
          (model as _i12.TransactionTagModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i13.TransactionTagEntity>() ||
            sourceTypeOf == _typeOf<_i13.TransactionTagEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.TransactionTagModel>() ||
            targetTypeOf == _typeOf<_i12.TransactionTagModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i13$TransactionTagEntity_To__i12$TransactionTagModel(
          (model as _i13.TransactionTagEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i14.TransactionModel>() ||
            sourceTypeOf == _typeOf<_i14.TransactionModel?>()) &&
        (targetTypeOf == _typeOf<_i15.TransactionEntity>() ||
            targetTypeOf == _typeOf<_i15.TransactionEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i14$TransactionModel_To__i15$TransactionEntity(
          (model as _i14.TransactionModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i15.TransactionEntity>() ||
            sourceTypeOf == _typeOf<_i15.TransactionEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.TransactionModel>() ||
            targetTypeOf == _typeOf<_i14.TransactionModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i15$TransactionEntity_To__i14$TransactionModel(
          (model as _i15.TransactionEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i16.DebitByCategoryModel>() ||
            sourceTypeOf == _typeOf<_i16.DebitByCategoryModel?>()) &&
        (targetTypeOf == _typeOf<_i17.DebitByCategoryEntity>() ||
            targetTypeOf == _typeOf<_i17.DebitByCategoryEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i16$DebitByCategoryModel_To__i17$DebitByCategoryEntity(
          (model as _i16.DebitByCategoryModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i17.DebitByCategoryEntity>() ||
            sourceTypeOf == _typeOf<_i17.DebitByCategoryEntity?>()) &&
        (targetTypeOf == _typeOf<_i16.DebitByCategoryModel>() ||
            targetTypeOf == _typeOf<_i16.DebitByCategoryModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i17$DebitByCategoryEntity_To__i16$DebitByCategoryModel(
          (model as _i17.DebitByCategoryEntity?)) as TARGET);
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
  /// {@macro package:domain/src/transactions/_mappers/transactions_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.MonthlyCategoryStatsEntity
      _map__i2$MonthlyCategoryStatsModel_To__i3$MonthlyCategoryStatsEntity(
          _i2.MonthlyCategoryStatsModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MonthlyCategoryStatsModel → MonthlyCategoryStatsEntity failed because MonthlyCategoryStatsModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MonthlyCategoryStatsModel, MonthlyCategoryStatsEntity> to handle null values during mapping.');
    }
    return _i3.MonthlyCategoryStatsEntity(
      categoryId: model.categoryId,
      totalDebit: model.totalDebit,
      totalCredit: model.totalCredit,
      countCredit: model.countCredit,
      countDebit: model.countDebit,
    );
  }

  _i2.MonthlyCategoryStatsModel
      _map__i3$MonthlyCategoryStatsEntity_To__i2$MonthlyCategoryStatsModel(
          _i3.MonthlyCategoryStatsEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MonthlyCategoryStatsEntity → MonthlyCategoryStatsModel failed because MonthlyCategoryStatsEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MonthlyCategoryStatsEntity, MonthlyCategoryStatsModel> to handle null values during mapping.');
    }
    return _i2.MonthlyCategoryStatsModel(
      categoryId: model.categoryId,
      totalDebit: model.totalDebit,
      totalCredit: model.totalCredit,
      countCredit: model.countCredit,
      countDebit: model.countDebit,
    );
  }

  _i5.TransactionDailyStatsEntity
      _map__i4$TransactionDailyStatsModel_To__i5$TransactionDailyStatsEntity(
          _i4.TransactionDailyStatsModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionDailyStatsModel → TransactionDailyStatsEntity failed because TransactionDailyStatsModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionDailyStatsModel, TransactionDailyStatsEntity> to handle null values during mapping.');
    }
    return _i5.TransactionDailyStatsEntity(
      date: model.date,
      totalCredit: model.totalCredit,
      totalDebit: model.totalDebit,
    );
  }

  _i4.TransactionDailyStatsModel
      _map__i5$TransactionDailyStatsEntity_To__i4$TransactionDailyStatsModel(
          _i5.TransactionDailyStatsEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionDailyStatsEntity → TransactionDailyStatsModel failed because TransactionDailyStatsEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionDailyStatsEntity, TransactionDailyStatsModel> to handle null values during mapping.');
    }
    return _i4.TransactionDailyStatsModel(
      date: model.date,
      totalCredit: model.totalCredit,
      totalDebit: model.totalDebit,
    );
  }

  _i7.TransactionCategoryEntity
      _map__i6$TransactionCategoryModel_To__i7$TransactionCategoryEntity(
          _i6.TransactionCategoryModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionCategoryModel → TransactionCategoryEntity failed because TransactionCategoryModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionCategoryModel, TransactionCategoryEntity> to handle null values during mapping.');
    }
    return _i7.TransactionCategoryEntity(
      id: model.id,
      identifier: model.identifier,
      icon: model.icon,
      label: model.label,
      description: model.description,
      isDefault: model.isDefault,
      isActive: model.isActive,
      order: model.order,
    );
  }

  _i6.TransactionCategoryModel
      _map__i7$TransactionCategoryEntity_To__i6$TransactionCategoryModel(
          _i7.TransactionCategoryEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionCategoryEntity → TransactionCategoryModel failed because TransactionCategoryEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionCategoryEntity, TransactionCategoryModel> to handle null values during mapping.');
    }
    return _i6.TransactionCategoryModel(
      id: model.id,
      identifier: model.identifier,
      icon: model.icon,
      label: model.label,
      description: model.description,
      isDefault: model.isDefault,
      isActive: model.isActive,
      order: model.order,
    );
  }

  _i9.MonthlyTransactionsEntity
      _map__i8$MonthlyTransactionsModel_To__i9$MonthlyTransactionsEntity(
          _i8.MonthlyTransactionsModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MonthlyTransactionsModel → MonthlyTransactionsEntity failed because MonthlyTransactionsModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MonthlyTransactionsModel, MonthlyTransactionsEntity> to handle null values during mapping.');
    }
    return _i9.MonthlyTransactionsEntity(
      month: model.month,
      debit: model.debit
          .map<_i15.TransactionEntity>((value) =>
              _map__i14$TransactionModel_To__i15$TransactionEntity(value))
          .toList(),
      credit: model.credit
          .map<_i15.TransactionEntity>((value) =>
              _map__i14$TransactionModel_To__i15$TransactionEntity(value))
          .toList(),
    );
  }

  _i8.MonthlyTransactionsModel
      _map__i9$MonthlyTransactionsEntity_To__i8$MonthlyTransactionsModel(
          _i9.MonthlyTransactionsEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MonthlyTransactionsEntity → MonthlyTransactionsModel failed because MonthlyTransactionsEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MonthlyTransactionsEntity, MonthlyTransactionsModel> to handle null values during mapping.');
    }
    return _i8.MonthlyTransactionsModel(
      month: model.month,
      debit: model.debit
          .map<_i14.TransactionModel>((value) =>
              _map__i15$TransactionEntity_To__i14$TransactionModel(value))
          .toList(),
      credit: model.credit
          .map<_i14.TransactionModel>((value) =>
              _map__i15$TransactionEntity_To__i14$TransactionModel(value))
          .toList(),
    );
  }

  _i11.MonthlyTransactionSummaryEntity
      _map__i10$MonthlyTransactionSummaryModel_To__i11$MonthlyTransactionSummaryEntity(
          _i10.MonthlyTransactionSummaryModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MonthlyTransactionSummaryModel → MonthlyTransactionSummaryEntity failed because MonthlyTransactionSummaryModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MonthlyTransactionSummaryModel, MonthlyTransactionSummaryEntity> to handle null values during mapping.');
    }
    return _i11.MonthlyTransactionSummaryEntity(
      month: model.month,
      monthName: model.monthName,
      totalCredit: model.totalCredit,
      totalDebit: model.totalDebit,
      monthStartDate: model.monthStartDate,
      monthEndDate: model.monthEndDate,
    );
  }

  _i10.MonthlyTransactionSummaryModel
      _map__i11$MonthlyTransactionSummaryEntity_To__i10$MonthlyTransactionSummaryModel(
          _i11.MonthlyTransactionSummaryEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MonthlyTransactionSummaryEntity → MonthlyTransactionSummaryModel failed because MonthlyTransactionSummaryEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MonthlyTransactionSummaryEntity, MonthlyTransactionSummaryModel> to handle null values during mapping.');
    }
    return _i10.MonthlyTransactionSummaryModel(
      month: model.month,
      monthName: model.monthName,
      totalCredit: model.totalCredit,
      totalDebit: model.totalDebit,
      monthStartDate: model.monthStartDate,
      monthEndDate: model.monthEndDate,
    );
  }

  _i13.TransactionTagEntity
      _map__i12$TransactionTagModel_To__i13$TransactionTagEntity(
          _i12.TransactionTagModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionTagModel → TransactionTagEntity failed because TransactionTagModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionTagModel, TransactionTagEntity> to handle null values during mapping.');
    }
    return _i13.TransactionTagEntity(
      label: model.label,
      bgColor: model.bgColor,
      textColor: model.textColor,
    );
  }

  _i12.TransactionTagModel
      _map__i13$TransactionTagEntity_To__i12$TransactionTagModel(
          _i13.TransactionTagEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionTagEntity → TransactionTagModel failed because TransactionTagEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionTagEntity, TransactionTagModel> to handle null values during mapping.');
    }
    return _i12.TransactionTagModel(
      label: model.label,
      bgColor: model.bgColor,
      textColor: model.textColor,
    );
  }

  _i15.TransactionEntity _map__i14$TransactionModel_To__i15$TransactionEntity(
      _i14.TransactionModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionModel → TransactionEntity failed because TransactionModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionModel, TransactionEntity> to handle null values during mapping.');
    }
    return _i15.TransactionEntity(
      id: model.id,
      accountId: model.accountId,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      reference: model.reference,
      amount: model.amount,
      fees: model.fees,
      chargedAmount: model.chargedAmount,
      fxRate: model.fxRate,
      originalAmount: model.originalAmount,
      balanceAfter: model.balanceAfter,
      label: model.label,
      date: model.date,
      iconUrl: model.iconUrl,
      type: model.type,
      status: model.status,
      hasGif: model.hasGif,
      transactionServiceName: model.transactionServiceName,
      tag:
          _map__i12$TransactionTagModel_To__i13$TransactionTagEntity(model.tag),
      note: model.note,
      illustrationUrl: model.illustrationUrl,
      description: model.description,
      parentTransactionId: model.parentTransactionId,
      transactionVerificationStatus: model.transactionVerificationStatus,
      recipientE164: model.recipientE164,
      recipientLabel: model.recipientLabel,
      senderE164: model.senderE164,
      senderLabel: model.senderLabel,
      categoryId: model.categoryId,
      operator: model.operator,
      transferStatus: model.transferStatus,
      depositStatus: model.depositStatus,
      operatorValidationUrl: model.operatorValidationUrl,
      operatorFees: model.operatorFees,
    );
  }

  _i14.TransactionModel _map__i15$TransactionEntity_To__i14$TransactionModel(
      _i15.TransactionEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TransactionEntity → TransactionModel failed because TransactionEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TransactionEntity, TransactionModel> to handle null values during mapping.');
    }
    return _i14.TransactionModel(
      id: model.id,
      accountId: model.accountId,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      reference: model.reference,
      chargedAmount: model.chargedAmount,
      amount: model.amount,
      fees: model.fees,
      originalAmount: model.originalAmount,
      fxRate: model.fxRate,
      balanceAfter: model.balanceAfter,
      label: model.label,
      date: model.date,
      iconUrl: model.iconUrl,
      type: model.type,
      status: model.status,
      hasGif: model.hasGif,
      transactionServiceName: model.transactionServiceName,
      tag:
          _map__i13$TransactionTagEntity_To__i12$TransactionTagModel(model.tag),
      note: model.note,
      illustrationUrl: model.illustrationUrl,
      description: model.description,
      parentTransactionId: model.parentTransactionId,
      transactionVerificationStatus: model.transactionVerificationStatus,
      recipientE164: model.recipientE164,
      recipientLabel: model.recipientLabel,
      senderE164: model.senderE164,
      senderLabel: model.senderLabel,
      categoryId: model.categoryId,
      operator: model.operator,
      transferStatus: model.transferStatus,
      depositStatus: model.depositStatus,
      operatorValidationUrl: model.operatorValidationUrl,
      operatorFees: model.operatorFees,
    );
  }

  _i17.DebitByCategoryEntity
      _map__i16$DebitByCategoryModel_To__i17$DebitByCategoryEntity(
          _i16.DebitByCategoryModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping DebitByCategoryModel → DebitByCategoryEntity failed because DebitByCategoryModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<DebitByCategoryModel, DebitByCategoryEntity> to handle null values during mapping.');
    }
    return _i17.DebitByCategoryEntity(
      categoryId: model.categoryId,
      categoryLabel: model.categoryLabel,
      categoryIcon: model.categoryIcon,
      categoryTotalDebit: model.categoryTotalDebit,
      budgetLimit: model.budgetLimit,
      budgetId: model.budgetId,
    );
  }

  _i16.DebitByCategoryModel
      _map__i17$DebitByCategoryEntity_To__i16$DebitByCategoryModel(
          _i17.DebitByCategoryEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping DebitByCategoryEntity → DebitByCategoryModel failed because DebitByCategoryEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<DebitByCategoryEntity, DebitByCategoryModel> to handle null values during mapping.');
    }
    return _i16.DebitByCategoryModel(
      categoryId: model.categoryId,
      categoryLabel: model.categoryLabel,
      categoryIcon: model.categoryIcon,
      categoryTotalDebit: model.categoryTotalDebit,
      budgetLimit: model.budgetLimit,
      budgetId: model.budgetId,
    );
  }
}
