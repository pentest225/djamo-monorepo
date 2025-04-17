import 'package:domain/src/_core/_core.dart';

typedef LoanOfferEntities = List<LoanOfferEntity>;

class LoanOfferEntity extends BaseEntity {
  const LoanOfferEntity({
    this.id = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.externalId = emptyString,
    this.clientId = emptyString,
    this.externalLoanId = emptyString,
    this.isActive = false,
    this.loanOfferClass = emptyString,
    this.amount = 0,
    this.scoringStrategyId = emptyString,
    this.recommendationStrategyId = emptyString,
    this.currentStatus = emptyString,
    this.currentStatusDate = emptyString,
    this.expiryMode = emptyString,
    this.expiryReason = emptyString,
  });

  final String id;
  final String createdAt;
  final String updatedAt;
  final String externalId;
  final String clientId;
  final String externalLoanId;
  final bool isActive;
  final String loanOfferClass;
  final double amount;
  final String scoringStrategyId;
  final String recommendationStrategyId;
  final String currentStatus;
  final String currentStatusDate;
  final String expiryMode;
  final String expiryReason;

  static const empty = LoanOfferEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        externalId,
        clientId,
        externalLoanId,
        isActive,
        loanOfferClass,
        amount,
        scoringStrategyId,
        recommendationStrategyId,
        currentStatus,
        currentStatusDate,
        expiryMode,
        expiryReason,
      ];
}

extension LoanOfferEntityDomainExtension on LoanOfferEntity {}
