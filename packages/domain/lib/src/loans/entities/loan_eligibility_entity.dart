import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/loans/entities/loan_eligibility_criteria_entity.dart';

class LoanEligibilityEntity extends BaseEntity {
  const LoanEligibilityEntity({
    this.havePhysicalCard = LoanEligibilityCriteriaEntity.empty,
    this.haveReachedExpectedDeposit = LoanEligibilityCriteriaEntity.empty,
  });

  final LoanEligibilityCriteriaEntity havePhysicalCard;
  final LoanEligibilityCriteriaEntity haveReachedExpectedDeposit;

  static const empty = LoanEligibilityEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        havePhysicalCard,
        haveReachedExpectedDeposit,
      ];
}

extension LoanEligibilityEntityDomainExtension on LoanEligibilityEntity {
  LoanEligibilityCriteriaEntities get _activeCriteria => [haveReachedExpectedDeposit, havePhysicalCard]
      .where(
        (c) => c.isActive,
      )
      .toList();

  LoanEligibilityCriteriaEntities get criteria => [
        ..._activeCriteria.where((c) => !c.value),
        ..._activeCriteria.where((c) => c.value),
      ];

  bool isVerified({required bool hasPhysicalCard}) {
    return criteria.isEmpty || criteria.every((ctr) => ctr.isCardType ? (ctr.value || hasPhysicalCard) : ctr.value);
  }
}
