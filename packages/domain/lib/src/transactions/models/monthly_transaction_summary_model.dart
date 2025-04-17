import 'package:domain/src/_core/_core.dart';

typedef MonthlyTransactionSummaryModels = List<MonthlyTransactionSummaryModel>;

class MonthlyTransactionSummaryModel extends BaseModel {
  const MonthlyTransactionSummaryModel({
    required this.month,
    required this.monthName,
    required this.totalCredit,
    required this.totalDebit,
    required this.monthStartDate,
    required this.monthEndDate,
  });

  factory MonthlyTransactionSummaryModel.fromJson(Map<String, dynamic> json) {
    return MonthlyTransactionSummaryModel(
      month: DP.asString(json['month']),
      monthName: DP.asString(json['monthName']),
      totalCredit: DP.asDouble(json['totalCredit']),
      totalDebit: DP.asDouble(json['totalDebit']),
      monthStartDate: DP.asString(json['monthStartDate']),
      monthEndDate: DP.asString(json['monthEndDate']),
    );
  }

  final String month;
  final String monthName;
  final double totalCredit;
  final double totalDebit;
  final String monthStartDate;
  final String monthEndDate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'month': month,
      'monthName': monthName,
      'totalCredit': totalCredit,
      'totalDebit': totalDebit,
      'monthStartDate': monthStartDate,
      'monthEndDate': monthEndDate,
    };
  }

  @override
  List<Object?> get props => [
        month,
        monthName,
        totalCredit,
        totalDebit,
        monthStartDate,
        monthEndDate,
      ];
}

extension MonthlyTransactionSummaryModelModelExtension on MonthlyTransactionSummaryModel {}
