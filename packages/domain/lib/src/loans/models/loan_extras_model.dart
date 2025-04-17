import 'package:domain/src/_core/_core.dart';

class LoanExtrasModel extends BaseModel {
  const LoanExtrasModel({
    required this.facilitationFees,
    required this.facilitationFeesRate,
    required this.interestRatePerPeriod,
    required this.interest,
    required this.disbursementFees,
    required this.loanPeriod,
    required this.loanPeriodType,
    required this.disbursementAmount,
    required this.repaymentAmount,
    required this.penaltyChargesOutstanding,
    required this.penaltyChargesCharged,
    required this.penaltyFees,
  });

  factory LoanExtrasModel.fromJson(Map<String, dynamic> json) {
    return LoanExtrasModel(
      facilitationFees: DP.asDouble(json['facilitationFees']),
      facilitationFeesRate: DP.asDouble(json['facilitationFeesRate']),
      interestRatePerPeriod: DP.asDouble(json['interestRatePerPeriod']),
      interest: DP.asDouble(json['interest']),
      disbursementFees: DP.asDouble(json['disbursementFees']),
      loanPeriod: DP.asDouble(json['loanPeriod']),
      loanPeriodType: DP.asString(json['loanPeriodType']),
      disbursementAmount: DP.asDouble(json['disbursementAmount']),
      repaymentAmount: DP.asDouble(json['repaymentAmount']),
      penaltyChargesOutstanding: DP.asDouble(json['penaltyChargesOutstanding']),
      penaltyChargesCharged: DP.asDouble(json['penaltyChargesCharged']),
      penaltyFees: DP.asDouble(json['penaltyFees']),
    );
  }

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
  final double penaltyFees;

  @override
  Map<String, dynamic> toJson() {
    return {
      'facilitationFees': facilitationFees,
      'facilitationFeesRate': facilitationFeesRate,
      'interestRatePerPeriod': interestRatePerPeriod,
      'interest': interest,
      'disbursementFees': disbursementFees,
      'loanPeriod': loanPeriod,
      'loanPeriodType': loanPeriodType,
      'disbursementAmount': disbursementAmount,
      'repaymentAmount': repaymentAmount,
      'penaltyChargesOutstanding': penaltyChargesOutstanding,
      'penaltyChargesCharged': penaltyChargesCharged,
      'penaltyFees': penaltyFees,
    };
  }

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
        penaltyFees,
      ];
}

extension LoanExtrasModelDomainExtension on LoanExtrasModel {}
