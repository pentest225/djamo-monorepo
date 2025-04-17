import 'package:domain/src/_core/_core.dart';

typedef InvestSubscriptionModels = List<InvestSubscriptionModel>;

class InvestSubscriptionModel extends BaseModel {
  const InvestSubscriptionModel({
    required this.id,
    required this.share,
    required this.accountId,
    required this.productId,
    required this.amount,
    required this.fees,
    required this.externalId,
    required this.isActive,
    required this.status,
    required this.reference,
    required this.createdAt,
    required this.updatedAt,
  });

  factory InvestSubscriptionModel.fromJson(Map<String, dynamic> json) {
    return InvestSubscriptionModel(
      id: DP.asString(json['id']),
      share: DP.asDouble(json['share']),
      accountId: DP.asString(json['accountId']),
      productId: DP.asString(json['productId']),
      amount: DP.asDouble(json['amount']),
      fees: DP.asDouble(json['fees']),
      externalId: DP.asInt(json['externalId']),
      isActive: DP.asBool(json['isActive']),
      status: DP.asString(json['status']),
      reference: DP.asString(json['reference']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
    );
  }

  final String id;
  final double share;
  final String accountId;
  final String productId;
  final double amount;
  final double fees;
  final int externalId;
  final bool isActive;
  final String status;
  final String reference;
  final String createdAt;
  final String updatedAt;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'share': share,
      'accountId': accountId,
      'productId': productId,
      'amount': amount,
      'fees': fees,
      'externalId': externalId,
      'isActive': isActive,
      'status': status,
      'reference': reference,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  List<Object?> get props => [
        id,
        share,
        accountId,
        productId,
        amount,
        fees,
        externalId,
        isActive,
        status,
        reference,
        createdAt,
        updatedAt,
      ];
}

extension InvestSubscriptionModelExtension on InvestSubscriptionModel {}
