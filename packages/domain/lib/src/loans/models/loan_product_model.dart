import 'package:domain/src/_core/_core.dart';

typedef LoanProductModels = List<LoanProductModel>;

class LoanProductModel extends BaseModel {
  const LoanProductModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.description,
    required this.iconUrl,
    required this.externalId,
    required this.interestRateFrequencyType,
    required this.interestRatePerPeriod,
    required this.facilitationFeesRate,
    required this.disbursementFees,
    required this.repaymentEvery,
    required this.repaymentFrequencyType,
  });

  factory LoanProductModel.fromJson(Map<String, dynamic> json) {
    return LoanProductModel(
      id: DP.asString(json['id']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['createdAt']),
      name: DP.asString(json['name']),
      description: DP.asString(json['description']),
      iconUrl: DP.asString(json['iconUrl']),
      externalId: DP.asString(json['externalId']),
      interestRateFrequencyType: DP.asString(json['interestRateFrequencyType']),
      interestRatePerPeriod: DP.asDouble(json['interestRatePerPeriod']),
      facilitationFeesRate: DP.asDouble(json['facilitationFeesRate']),
      disbursementFees: DP.asDouble(json['disbursementFees']),
      repaymentEvery: DP.asDouble(json['repaymentEvery']),
      repaymentFrequencyType: DP.asString(json['repaymentFrequencyType']),
    );
  }

  final String id;
  final String createdAt;
  final String updatedAt;
  final String name;
  final String description;
  final String iconUrl;
  final String externalId;
  final String interestRateFrequencyType;
  final double interestRatePerPeriod;
  final double facilitationFeesRate;
  final double disbursementFees;
  final double repaymentEvery;
  final String repaymentFrequencyType;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'name': name,
      'description': description,
      'iconUrl': iconUrl,
      'externalId': externalId,
      'interestRateFrequencyType': interestRateFrequencyType,
      'interestRatePerPeriod': interestRatePerPeriod,
      'facilitationFeesRate': facilitationFeesRate,
      'disbursementFees': disbursementFees,
      'repaymentEvery': repaymentEvery,
      'repaymentFrequencyType': repaymentFrequencyType,
    };
  }

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        name,
        description,
        iconUrl,
        externalId,
        interestRateFrequencyType,
        interestRatePerPeriod,
        facilitationFeesRate,
        disbursementFees,
        repaymentEvery,
        repaymentFrequencyType,
      ];
}

extension LoanProductModelDomainExtension on LoanProductModel {
// Add extension methods here
}
