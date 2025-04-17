import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/transactions/models/transaction_model.dart';

class MonthlyTransactionsModel extends BaseModel {
  const MonthlyTransactionsModel({
    required this.month,
    required this.debit,
    required this.credit,
    this.hasReachedEndForDebit = false,
    this.hasReachedEndForCredit = false,
    this.hasReachedEndForBoth = false,
  });

  factory MonthlyTransactionsModel.fromJson(Map<String, dynamic> json) {
    return MonthlyTransactionsModel(
      month: DP.asString(json['month']),
      debit: DP.asListOf<JsonMap>(json['debit']).map(TransactionModel.fromJson).toList(),
      credit: DP.asListOf<JsonMap>(json['credit']).map(TransactionModel.fromJson).toList(),
      hasReachedEndForBoth: DP.asBool(json['hasReachedEndForBoth']),
      hasReachedEndForDebit: DP.asBool(json['hasReachedEndForDebit']),
      hasReachedEndForCredit: DP.asBool(json['hasReachedEndForCredit']),
    );
  }

  final String month;
  final LedgerTransactionModels debit;
  final LedgerTransactionModels credit;
  final bool hasReachedEndForDebit;
  final bool hasReachedEndForCredit;
  final bool hasReachedEndForBoth;

  @override
  Map<String, dynamic> toJson() {
    return {
      'month': month,
      'debit': debit.map((e) => e.toJson()).toList(),
      'credit': credit.map((e) => e.toJson()).toList(),
      'hasReachedEndForDebit': hasReachedEndForDebit,
      'hasReachedEndForCredit': hasReachedEndForCredit,
      'hasReachedEndForBoth': hasReachedEndForBoth,
    };
  }

  @override
  List<Object?> get props => [
        month,
        debit,
        credit,
        hasReachedEndForDebit,
        hasReachedEndForCredit,
        hasReachedEndForBoth,
      ];
}

extension MonthlyTransactionsModelDomainExtension on MonthlyTransactionsModel {}
