import 'package:domain/src/_core/_core.dart';

typedef MonthlyCategoryStatsEntities = List<MonthlyCategoryStatsEntity>;

class MonthlyCategoryStatsEntity extends BaseEntity {
  const MonthlyCategoryStatsEntity({
    this.categoryId = emptyString,
    this.totalDebit = 0.0,
    this.totalCredit = 0.0,
    this.countCredit = 0,
    this.countDebit = 0,
  });

  final String categoryId;
  final double totalDebit;
  final double totalCredit;
  final int countCredit;
  final int countDebit;

  static const empty = MonthlyCategoryStatsEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        categoryId,
        totalDebit,
        totalCredit,
        countCredit,
        countDebit,
      ];
}

extension MonthlyCategoryStatsEntityDomainExtension on MonthlyCategoryStatsEntity {}
