import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/loans/enums/loan_eligibility_criteria_enum.dart';

typedef LoanEligibilityCriteriaEntities = List<LoanEligibilityCriteriaEntity>;

class LoanEligibilityCriteriaEntity extends BaseEntity {
  const LoanEligibilityCriteriaEntity({
    this.title = emptyString,
    this.description = emptyString,
    this.expectedDepositAmount = 0.0,
    this.callToAction = emptyString,
    this.isActive = false,
    this.value = false,
    this.totalOfDepositAmount = 0.0,
    this.type = emptyString,
  });

  final String title;
  final String description;
  final double expectedDepositAmount;
  final String callToAction;
  final bool isActive;
  final bool value;
  final double totalOfDepositAmount;
  final String type;

  static const empty = LoanEligibilityCriteriaEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        title,
        description,
        expectedDepositAmount,
        callToAction,
        isActive,
        value,
        totalOfDepositAmount,
        type,
      ];
}

extension LoanEligibilityCriteriaEntityDomainExtension on LoanEligibilityCriteriaEntity {
  LoanEligibilityCriteriaTypeEnum get typeEnum => LoanEligibilityCriteriaTypeEnum(type);

  bool get isCardType => typeEnum.isCard;
}
