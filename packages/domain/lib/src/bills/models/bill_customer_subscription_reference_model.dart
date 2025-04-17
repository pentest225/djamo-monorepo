import 'package:domain/src/_core/_core.dart';

typedef BillCustomerSubscriptionReferenceModels = List<BillCustomerSubscriptionReferenceModel>;

class BillCustomerSubscriptionReferenceModel extends BaseModel {
  const BillCustomerSubscriptionReferenceModel({
    required this.id,
    required this.billerId,
    required this.subscriptionReference,
    required this.isActive,
    required this.clientId,
    required this.label,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BillCustomerSubscriptionReferenceModel.fromJson(Map<String, dynamic> json) {
    return BillCustomerSubscriptionReferenceModel(
      id: DP.asString(json['id']),
      billerId: DP.asString(json['billerId']),
      subscriptionReference: DP.asString(json['subscriptionReference']),
      isActive: DP.asBool(json['isActive']),
      clientId: DP.asString(json['clientId']),
      label: DP.asString(json['label']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
    );
  }

  final String id;
  final String billerId;
  final String subscriptionReference;
  final bool isActive;
  final String clientId;
  final String label;
  final String createdAt;
  final String updatedAt;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'billerId': billerId,
      'subscriptionReference': subscriptionReference,
      'isActive': isActive,
      'clientId': clientId,
      'label': label,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  List<Object?> get props => [
        id,
        billerId,
        subscriptionReference,
        isActive,
        clientId,
        label,
        createdAt,
        updatedAt,
      ];
}

extension BillCustomerSubscriptionReferenceModelExtension on BillCustomerSubscriptionReferenceModel {}
