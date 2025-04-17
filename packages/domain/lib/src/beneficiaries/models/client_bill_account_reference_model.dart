import 'package:domain/src/_core/_core.dart';

typedef ClientBillAccountReferenceModels = List<ClientBillAccountReferenceModel>;

class ClientBillAccountReferenceModel extends BaseModel {
  const ClientBillAccountReferenceModel({
    required this.id,
    required this.billerId,
    required this.subscriptionReference,
    required this.isActive,
    required this.clientId,
    required this.label,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory ClientBillAccountReferenceModel.fromJson(Map<String, dynamic> json) {
    return ClientBillAccountReferenceModel(
      id: DP.asString(json['id']),
      billerId: DP.asString(json['billerId']),
      subscriptionReference: DP.asString(json['subscriptionReference']),
      isActive: DP.asBool(json['isActive']),
      clientId: DP.asString(json['clientId']),
      label: DP.asString(json['label']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
      deletedAt: DP.asString(json['deletedAt']),
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
  final String deletedAt;

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
      'deletedAt': deletedAt,
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
        deletedAt,
      ];
}

extension ClientBillAccountReferenceModelDomainExtension on ClientBillAccountReferenceModel {}
