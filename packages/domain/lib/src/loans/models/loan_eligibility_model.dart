import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/loans/models/loan_eligibility_criteria_model.dart';

class LoanEligibilityModel extends BaseModel {
  const LoanEligibilityModel({
    required this.havePhysicalCard,
    required this.haveReachedExpectedDeposit,
  });

  factory LoanEligibilityModel.fromJson(Map<String, dynamic> json) {
    return LoanEligibilityModel(
      havePhysicalCard: LoanEligibilityCriteriaModel.fromJson(DP.asMap(json['havePhysicalCard'])),
      haveReachedExpectedDeposit: LoanEligibilityCriteriaModel.fromJson(DP.asMap(json['haveReachedExpectedDeposit'])),
    );
  }

  final LoanEligibilityCriteriaModel havePhysicalCard;
  final LoanEligibilityCriteriaModel haveReachedExpectedDeposit;

  @override
  Map<String, dynamic> toJson() {
    return {
      'havePhysicalCard': havePhysicalCard.toJson(),
      'haveReachedExpectedDeposit': haveReachedExpectedDeposit.toJson(),
    };
  }

  @override
  List<Object?> get props => [
        havePhysicalCard,
        haveReachedExpectedDeposit,
      ];
}

extension LoanEligibilityModelDomainExtension on LoanEligibilityModel {}
