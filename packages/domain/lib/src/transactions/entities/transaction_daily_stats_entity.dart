import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/_core.dart';

typedef TransactionDailyStatsEntities = List<TransactionDailyStatsEntity>;

class TransactionDailyStatsEntity extends BaseEntity {
  const TransactionDailyStatsEntity({
    this.date = emptyString,
    this.totalCredit = 0.0,
    this.totalDebit = 0.0,
  });

  final String date;
  final double totalCredit;
  final double totalDebit;

  static const empty = TransactionDailyStatsEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        date,
        totalCredit,
        totalDebit,
      ];
}

extension TransactionDailyStatsEntityDomainExtension on TransactionDailyStatsEntity {
  num get getDay => date.split('-').last.toDouble();
}
