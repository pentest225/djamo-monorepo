import 'package:domain/src/_core/_core.dart';

typedef TransactionDailyStatsModels = List<TransactionDailyStatsModel>;

class TransactionDailyStatsModel extends BaseModel {
  const TransactionDailyStatsModel({
    required this.date,
    required this.totalCredit,
    required this.totalDebit,
  });

  factory TransactionDailyStatsModel.fromJson(Map<String, dynamic> json) {
    return TransactionDailyStatsModel(
      date: DP.asString(json['date']),
      totalCredit: DP.asDouble(json['totalCredit']),
      totalDebit: DP.asDouble(json['totalDebit']),
    );
  }

  final String date;
  final double totalCredit;
  final double totalDebit;

  @override
  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'totalCredit': totalCredit,
      'totalDebit': totalDebit,
    };
  }

  @override
  List<Object?> get props => [
        date,
        totalCredit,
        totalDebit,
      ];
}

extension TransactionDailyStatsModelDomainExtension on TransactionDailyStatsModel {}
