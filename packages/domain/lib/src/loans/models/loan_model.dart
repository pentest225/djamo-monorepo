import 'package:domain/src/_core/_core.dart';

typedef LoanModels = List<LoanModel>;

class LoanModel extends BaseModel {
  const LoanModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.timestamp,
    required this.externalId,
    required this.fees,
    required this.principal,
    required this.interest,
    required this.facilitationFees,
    required this.penaltyFees,
    required this.disbursedAmount,
    required this.repaymentAmount,
    required this.lastRepaymentAmount,
    required this.interestRatePerPeriod,
    required this.facilitationFeesRate,
    required this.clientFullName,
    required this.accountExternalId,
    required this.status,
    required this.maturityDate,
    required this.disbursementDate,
    required this.expectedDisbursementDate,
    required this.accountId,
    required this.offerId,
    required this.lastRepaymentAttemptedAt,
    required this.repaymentTrials,
    required this.expressLoanFees,
  });

  factory LoanModel.fromJson(Map<String, dynamic> json) {
    return LoanModel(
      id: DP.asString(json['id']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
      timestamp: DP.asString(json['timestamp']),
      externalId: DP.asString(json['externalId']),
      fees: DP.asDouble(json['fees']),
      principal: DP.asDouble(json['principal']),
      interest: DP.asDouble(json['interest']),
      facilitationFees: DP.asDouble(json['facilitationFees']),
      penaltyFees: DP.asDouble(json['penaltyFees']),
      disbursedAmount: DP.asDouble(json['disbursedAmount']),
      repaymentAmount: DP.asDouble(json['repaymentAmount']),
      lastRepaymentAmount: DP.asDouble(json['lastRepaymentAmount']),
      interestRatePerPeriod: DP.asDouble(json['interestRatePerPeriod']),
      facilitationFeesRate: DP.asDouble(json['facilitationFeesRate']),
      clientFullName: DP.asString(json['clientFullName']),
      accountExternalId: DP.asString(json['accountExternalId']),
      status: DP.asString(json['status']),
      maturityDate: DP.asString(json['maturityDate']),
      disbursementDate: DP.asString(json['disbursementDate']),
      expectedDisbursementDate: DP.asString(json['expectedDisbursementDate']),
      accountId: DP.asString(json['accountId']),
      offerId: DP.asString(json['offerId']),
      lastRepaymentAttemptedAt: DP.asString(json['lastRepaymentAttemptedAt']),
      repaymentTrials: DP.asDouble(json['repaymentTrials']),
      expressLoanFees: DP.asDouble(json['expressLoanFees']),
    );
  }

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'timestamp': timestamp,
      'externalId': externalId,
      'fees': fees,
      'principal': principal,
      'interest': interest,
      'facilitationFees': facilitationFees,
      'penaltyFees': penaltyFees,
      'disbursedAmount': disbursedAmount,
      'repaymentAmount': repaymentAmount,
      'lastRepaymentAmount': lastRepaymentAmount,
      'interestRatePerPeriod': interestRatePerPeriod,
      'facilitationFeesRate': facilitationFeesRate,
      'clientFullName': clientFullName,
      'accountExternalId': accountExternalId,
      'status': status,
      'maturityDate': maturityDate,
      'disbursementDate': disbursementDate,
      'expectedDisbursementDate': expectedDisbursementDate,
      'accountId': accountId,
      'offerId': offerId,
      'lastRepaymentAttemptedAt': lastRepaymentAttemptedAt,
      'repaymentTrials': repaymentTrials,
      'expressLoanFees': expressLoanFees,
    };
  }

  @override
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

extension LoanModelDomainExtension on LoanModel {}
