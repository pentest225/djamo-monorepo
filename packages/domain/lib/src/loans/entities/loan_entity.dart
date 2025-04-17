import 'package:domain/domain.dart';

typedef LoanEntities = List<LoanEntity>;

class LoanEntity extends BaseEntity {
  const LoanEntity({
    this.id = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.timestamp = emptyString,
    this.externalId = emptyString,
    this.fees = 0.0,
    this.principal = 0.0,
    this.interest = 0.0,
    this.facilitationFees = 0.0,
    this.penaltyFees = 0.0,
    this.disbursedAmount = 0.0,
    this.repaymentAmount = 0.0,
    this.lastRepaymentAmount = 0.0,
    this.interestRatePerPeriod = 0.0,
    this.facilitationFeesRate = 0.0,
    this.clientFullName = emptyString,
    this.accountExternalId = emptyString,
    this.status = emptyString,
    this.maturityDate = emptyString,
    this.disbursementDate = emptyString,
    this.expectedDisbursementDate = emptyString,
    this.accountId = emptyString,
    this.offerId = emptyString,
    this.lastRepaymentAttemptedAt = emptyString,
    this.repaymentTrials = 0.0,
    this.expressLoanFees = 0.0,
  });

  // local
  factory LoanEntity.local({
    required double amount,
    required double expressLoanFees,
    String? createdAt,
  }) =>
      LoanEntity(
        principal: amount,
        expressLoanFees: expressLoanFees,
        createdAt: createdAt ?? DateTime.now().toIso8601String(),
        status: LoanStatusEnum.unknown.identifier,
      );

  final String id;
  final String createdAt;
  final String updatedAt;
  final String timestamp;
  final String externalId;
  final double fees;
  final double principal;
  final double interest;
  final double facilitationFees;
  final double penaltyFees;
  final double disbursedAmount;
  final double repaymentAmount;
  final double lastRepaymentAmount;
  final double interestRatePerPeriod;
  final double facilitationFeesRate;
  final String clientFullName;
  final String accountExternalId;
  final String status;
  final String maturityDate;
  final String disbursementDate;
  final String expectedDisbursementDate;
  final String accountId;
  final String offerId;
  final String lastRepaymentAttemptedAt;
  final double repaymentTrials;
  final double expressLoanFees;

  static const empty = LoanEntity();

  bool get isEmpty => this == empty;

  @override // final LoanExtrasEntity extras;

  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        timestamp,
        externalId,
        fees,
        principal,
        interest,
        facilitationFees,
        penaltyFees,
        disbursedAmount,
        repaymentAmount,
        lastRepaymentAmount,
        interestRatePerPeriod,
        facilitationFeesRate,
        clientFullName,
        accountExternalId,
        status,
        maturityDate,
        disbursementDate,
        expectedDisbursementDate,
        accountId,
        offerId,
        lastRepaymentAttemptedAt,
        repaymentTrials,
        expressLoanFees,
      ];
}

extension LoanEntityDomainExtension on LoanEntity {
  LoanStatusEnum get statusEnum {
    return LoanStatusEnum.fromIdentifier(status);
  }

  DateTime get maturityDateTime {
    return DateTime.tryParse(maturityDate) ?? DateTime.now();
  }

  DateTime get timestampDateTime {
    return DateTime.tryParse(timestamp) ?? DateTime.now();
  }

  DateTime get disbursementDateTime {
    return DateTime.tryParse(disbursementDate) ?? DateTime.now();
  }

  DateTime get expectedDisbursementDateTime {
    return DateTime.tryParse(expectedDisbursementDate) ?? DateTime.now();
  }

  DateTime get lastRepaymentAttemptedDateTime {
    return DateTime.tryParse(lastRepaymentAttemptedAt) ?? DateTime.now();
  }

  DateTime get createdAtDateTime {
    return DateTime.tryParse(createdAt) ?? DateTime.now();
  }

  DateTime get updatedAtDateTime {
    return DateTime.tryParse(updatedAt) ?? DateTime.now();
  }

  TransactionTypeEnum get getType {
    return TransactionTypeEnum.fromString(status);
  }

  double get getInterest => interest;

  double get getInterestRatePerPeriod => interestRatePerPeriod;

  double get getDisbursementFees => expressLoanFees;

  double get getFacilitationFeesRate => facilitationFeesRate;

  // TransactionStatusEnum get getStatus => TransactionStatusEnum.fromIdentifier(status);

  bool get isPending => statusEnum.isPendingApproval || statusEnum.isUnknown || statusEnum.isApproved || statusEnum.isDisbursed;

  bool get isPendingWithoutDisbursed => statusEnum.isPendingApproval || statusEnum.isUnknown || statusEnum.isApproved;

  bool get isApproved => statusEnum.isApproved;

  bool get isDisbursed => statusEnum.isDisbursed;

  bool get isPendingApproval => statusEnum.isPendingApproval;

  bool get isGranted => statusEnum.isDisbursed;

  bool get isPaid => statusEnum.isPaid;

  bool get isDue => statusEnum.isDue;

  bool get isPastDue => statusEnum.isPastDue;

  bool get isRejected => statusEnum.isRejected;

  ///final remainingDays = currentLoan.maturityDateTime.difference(currentLoan.timestampDateTime).inDays;
  int get remainingDays {
    if (!isGranted) return 0;
    return maturityDateTime.difference(timestampDateTime).inDays;
  }

  bool get isDueSoon {
    if (!isGranted) return false;
    return remainingDays <= 10;
  }

  bool get shouldDisplayGrantedTooltip {
    final daysAfterTakeLoan = DateTime.now().difference(disbursementDateTime).inDays;
    return isGranted && daysAfterTakeLoan >= 7;
  }
}

extension LoanEntitesDomainExtension on LoanEntities {
  LoanEntity get getCurrentLoan => firstWhere(
        (element) => !element.isPaid,
        orElse: () => LoanEntity.empty,
      );
}
