import 'package:domain/src/_core/_core.dart';

class LoanEligibilityCriteriaModel extends BaseModel {
  const LoanEligibilityCriteriaModel({
    required this.title,
    required this.description,
    required this.expectedDepositAmount,
    required this.callToAction,
    required this.isActive,
    required this.value,
    required this.totalOfDepositAmount,
    required this.type,
  });

  factory LoanEligibilityCriteriaModel.fromJson(Map<String, dynamic> json) {
    return LoanEligibilityCriteriaModel(
      title: DP.asString(json['title']),
      description: DP.asString(json['description']),
      expectedDepositAmount: DP.asDouble(json['expectedDepositAmount']),
      callToAction: DP.asString(json['callToAction']),
      isActive: DP.asBool(json['isActive']),
      value: DP.asBool(json['value']),
      totalOfDepositAmount: DP.asDouble(json['totalOfDepositAmount']),
      type: DP.asString(json['type']),
    );
  }

  final String title;
  final String description;
  final double expectedDepositAmount;
  final String callToAction;
  final bool isActive;
  final bool value;
  final double totalOfDepositAmount;
  final String type;

  @override
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'expectedDepositAmount': expectedDepositAmount,
      'callToAction': callToAction,
      'isActive': isActive,
      'value': value,
      'totalOfDepositAmount': totalOfDepositAmount,
      'type': type,
    };
  }

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

extension LoanEligibilityCriteriaModelDomainExtension on LoanEligibilityCriteriaModel {}
