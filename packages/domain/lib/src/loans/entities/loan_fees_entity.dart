import 'package:domain/src/_core/_core.dart';

class LoanFeesEntity extends BaseEntity {
  const LoanFeesEntity({
    this.facilitationFees = 0.0,
    this.facilitationFeesRate = 0.0,
    this.interestRatePerPeriod = 0.0,
    this.interest = 0.0,
    this.disbursementFees = 0.0,
    this.loanPeriod = 0.0,
    this.loanPeriodType = emptyString,
    this.disbursementAmount = 0.0,
    this.repaymentAmount = 0.0,
    this.penaltyChargesOutstanding = 0.0,
    this.penaltyChargesCharged = 0.0,
    this.expressLoanFees = 0.0,
  });

  final double facilitationFees;
  final double facilitationFeesRate;
  final double interestRatePerPeriod;
  final double interest;
  final double disbursementFees;
  final double loanPeriod;
  final String loanPeriodType;
  final double disbursementAmount;
  final double repaymentAmount;
  final double penaltyChargesOutstanding;
  final double penaltyChargesCharged;
  final double expressLoanFees;

  static const empty = LoanFeesEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        facilitationFees,
        facilitationFeesRate,
        interestRatePerPeriod,
        interest,
        disbursementFees,
        loanPeriod,
        loanPeriodType,
        disbursementAmount,
        repaymentAmount,
        penaltyChargesOutstanding,
        penaltyChargesCharged,
        expressLoanFees,
      ];
}

extension LoanFeesEntityDomainExtension on LoanFeesEntity {}
