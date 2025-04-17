import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/loans/entities/loan_score_criteria_entity.dart';

class LoanScoreDataEntity extends BaseEntity {
  const LoanScoreDataEntity({
    this.djamoActivities = LoanScoreCriteriaEntity.empty,
    this.financialResponsibility = LoanScoreCriteriaEntity.empty,
    this.incomeStability = LoanScoreCriteriaEntity.empty,
    this.reimbursementCallToAction = LoanScoreCriteriaEntity.empty,
  });

  final LoanScoreCriteriaEntity djamoActivities;
  final LoanScoreCriteriaEntity financialResponsibility;
  final LoanScoreCriteriaEntity incomeStability;
  final LoanScoreCriteriaEntity reimbursementCallToAction;

  static const empty = LoanScoreDataEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        djamoActivities,
        financialResponsibility,
        incomeStability,
        reimbursementCallToAction,
      ];
}

extension LoanScoreDataEntityDomainExtension on LoanScoreDataEntity {}
