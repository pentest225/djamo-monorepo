import 'package:domain/src/_core/_core.dart';

typedef InvestSellingModels = List<InvestSellingModel>;

class InvestSellingModel extends BaseModel {
  const InvestSellingModel({
    required this.id,
    required this.externalId,
    required this.submittedAmount,
    required this.amount,
    required this.fees,
    required this.share,
    required this.accountId,
    required this.productId,
    required this.isActive,
    required this.status,
    required this.reference,
    required this.sellingType,
    required this.createdAt,
    required this.updatedAt,
  });

  factory InvestSellingModel.fromJson(Map<String, dynamic> json) {
    return InvestSellingModel(
      id: DP.asString(json['id']),
      externalId: DP.asInt(json['externalId']),
      submittedAmount: DP.asDouble(json['submittedAmount']),
      amount: DP.asDouble(json['amount']),
      fees: DP.asDouble(json['fees']),
      share: DP.asDouble(json['share']),
      accountId: DP.asString(json['accountId']),
      productId: DP.asString(json['productId']),
      isActive: DP.asBool(json['isActive']),
      status: DP.asString(json['status']),
      reference: DP.asString(json['reference']),
      sellingType: DP.asString(json['sellingType']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
    );
  }

  final String id;
  final int externalId;
  final double submittedAmount;
  final double amount;
  final double fees;
  final double share;
  final String accountId;
  final String productId;
  final bool isActive;
  final String status;
  final String reference;
  final String sellingType;
  final String createdAt;
  final String updatedAt;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'externalId': externalId,
      'submittedAmount': submittedAmount,
      'amount': amount,
      'fees': fees,
      'share': share,
      'accountId': accountId,
      'productId': productId,
      'isActive': isActive,
      'status': status,
      'reference': reference,
      'sellingType': sellingType,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  List<Object?> get props => [
        id,
        externalId,
        submittedAmount,
        amount,
        fees,
        share,
        accountId,
        productId,
        isActive,
        status,
        reference,
        sellingType,
        createdAt,
        updatedAt,
      ];
}

extension InvestSellingModelExtension on InvestSellingModel {}
