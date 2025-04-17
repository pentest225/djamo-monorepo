import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/loans/models/loan_score_criteria_model.dart';

class LoanScoreDataModel extends BaseModel {
  const LoanScoreDataModel({
    required this.djamoActivities,
    required this.financialResponsibility,
    required this.incomeStability,
    required this.reimbursementCallToAction,
  });

  factory LoanScoreDataModel.fromJson(Map<String, dynamic> json) {
    return LoanScoreDataModel(
      djamoActivities: LoanScoreCriteriaModel.fromJson(DP.asMap(json['djamoActivities'])),
      financialResponsibility: LoanScoreCriteriaModel.fromJson(DP.asMap(json['financialResponsibility'])),
      incomeStability: LoanScoreCriteriaModel.fromJson(DP.asMap(json['incomeStability'])),
      reimbursementCallToAction: LoanScoreCriteriaModel.fromJson(DP.asMap(json['reimbursementCallToAction'])),
    );
  }

  final LoanScoreCriteriaModel djamoActivities;
  final LoanScoreCriteriaModel financialResponsibility;
  final LoanScoreCriteriaModel incomeStability;
  final LoanScoreCriteriaModel reimbursementCallToAction;

  @override
  Map<String, dynamic> toJson() {
    return {
      'djamoActivities': djamoActivities.toJson(),
      'financialResponsibility': financialResponsibility.toJson(),
      'incomeStability': incomeStability.toJson(),
      'reimbursementCallToAction': reimbursementCallToAction.toJson(),
    };
  }

  @override
  List<Object?> get props => [
        djamoActivities,
        financialResponsibility,
        incomeStability,
        reimbursementCallToAction,
      ];
}

extension LoanScoreDataModelDomainExtension on LoanScoreDataModel {}
