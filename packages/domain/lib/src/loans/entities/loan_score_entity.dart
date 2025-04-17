import 'package:domain/domain.dart';

class LoanScoreEntity extends BaseEntity {
  const LoanScoreEntity({
    this.title = emptyString,
    this.globalTitle = emptyString,
    this.subTitle = emptyString,
    this.description = emptyString,
    this.icon = emptyString,
    this.recommendedAmount = emptyString,
    this.data = LoanScoreDataEntity.empty,
    this.scoreClass = 0.0,
  });

  final String title;
  final String globalTitle;
  final String subTitle;
  final String description;
  final String icon;
  final String recommendedAmount;
  final LoanScoreDataEntity data;
  final double scoreClass;

  static const empty = LoanScoreEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        globalTitle,
        title,
        subTitle,
        description,
        icon,
        recommendedAmount,
        data,
        scoreClass,
      ];
}

extension LoanScoreEntityDomainExtension on LoanScoreEntity {
  LoansScoreCriteriaEntities get criterias => [
        data.djamoActivities,
        data.financialResponsibility,
        data.incomeStability,
      ];
}
