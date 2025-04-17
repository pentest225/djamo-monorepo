import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/transactions/_mappers/transactions_auto_mapper.auto_mappr.dart';
import 'package:domain/src/transactions/entities/entities.dart';
import 'package:domain/src/transactions/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<MonthlyCategoryStatsModel, MonthlyCategoryStatsEntity>(reverse: true),
  MapType<TransactionDailyStatsModel, TransactionDailyStatsEntity>(reverse: true),
  MapType<TransactionCategoryModel, TransactionCategoryEntity>(reverse: true),
  MapType<MonthlyTransactionsModel, MonthlyTransactionsEntity>(
    reverse: true,
  ),
  MapType<MonthlyTransactionSummaryModel, MonthlyTransactionSummaryEntity>(
    reverse: true,
  ),
  MapType<TransactionTagModel, TransactionTagEntity>(reverse: true),
  MapType<TransactionModel, TransactionEntity>(reverse: true),
  MapType<DebitByCategoryModel, DebitByCategoryEntity>(reverse: true),
])
class TransactionsAutoMapper extends $TransactionsAutoMapper {
  const TransactionsAutoMapper();
}
