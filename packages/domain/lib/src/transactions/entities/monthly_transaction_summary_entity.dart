import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/_core.dart';

typedef MonthlyTransactionSummaryEntities = List<MonthlyTransactionSummaryEntity>;
typedef AccountMonthlyTransactionSummaryEntities = Map<String, MonthlyTransactionSummaryEntities>;

class MonthlyTransactionSummaryEntity extends BaseEntity {
  const MonthlyTransactionSummaryEntity({
    this.month = emptyString,
    this.monthName = emptyString,
    this.totalCredit = 0.0,
    this.totalDebit = 0.0,
    this.monthStartDate = emptyString,
    this.monthEndDate = emptyString,
  });

  final String month;
  final String monthName;
  final double totalCredit;
  final double totalDebit;
  final String monthStartDate;
  final String monthEndDate;

  String get formattedName {
    final date = DateTime.tryParse(monthStartDate);
    if (date == null) return monthName;
    if (date.isAtSameYearAs(DateTime.now())) {
      return monthName;
    }
    return '$monthName ${date.year}';
  }

  static const empty = MonthlyTransactionSummaryEntity();

  bool get isEmpty => this == empty;

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

extension MonthlyTransactionSummaryEntityExtension on MonthlyTransactionSummaryEntity {}
