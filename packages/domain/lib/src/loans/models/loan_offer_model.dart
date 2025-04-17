import 'package:domain/src/_core/_core.dart';

typedef LoanOfferModels = List<LoanOfferModel>;

class LoanOfferModel extends BaseModel {
  const LoanOfferModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.externalId,
    required this.clientId,
    required this.externalLoanId,
    required this.isActive,
    required this.loanOfferClass,
    required this.amount,
    required this.scoringStrategyId,
    required this.recommendationStrategyId,
    required this.currentStatus,
    required this.currentStatusDate,
    required this.expiryMode,
    required this.expiryReason,
  });

  factory LoanOfferModel.fromJson(Map<String, dynamic> json) {
    return LoanOfferModel(
      id: DP.asString(json['id']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
      externalId: DP.asString(json['externalId']),
      clientId: DP.asString(json['clientId']),
      externalLoanId: DP.asString(json['externalLoanId']),
      isActive: DP.asBool(json['isActive']),
      loanOfferClass: DP.asString(json['loanOfferClass']),
      amount: DP.asDouble(json['amount']),
      scoringStrategyId: DP.asString(json['scoringStrategyId']),
      recommendationStrategyId: DP.asString(json['recommendationStrategyId']),
      currentStatus: DP.asString(json['currentStatus']),
      currentStatusDate: DP.asString(json['currentStatusDate']),
      expiryMode: DP.asString(json['expiryMode']),
      expiryReason: DP.asString(json['expiryReason']),
    );
  }

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'externalId': externalId,
      'clientId': clientId,
      'externalLoanId': externalLoanId,
      'isActive': isActive,
      'loanOfferClass': loanOfferClass,
      'amount': amount,
      'scoringStrategyId': scoringStrategyId,
      'recommendationStrategyId': recommendationStrategyId,
      'currentStatus': currentStatus,
      'currentStatusDate': currentStatusDate,
      'expiryMode': expiryMode,
      'expiryReason': expiryReason,
    };
  }

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

extension LoanOfferModelDomainExtension on LoanOfferModel {}
