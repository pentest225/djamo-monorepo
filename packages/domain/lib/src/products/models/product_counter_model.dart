import 'package:domain/src/_core/_core.dart';

class ProductCounterModel extends BaseModel {
  const ProductCounterModel({
    required this.id,
    required this.label,
    required this.transactionLabel,
    required this.billingLabel,
    required this.type,
  });

  factory ProductCounterModel.fromJson(Map<String, dynamic> json) {
    return ProductCounterModel(
      id: DP.asString(json['id']),
      label: DP.asString(json['label']),
      transactionLabel: DP.asString(json['transactionLabel']),
      billingLabel: DP.asString(json['billingLabel']),
      type: DP.asString(json['type']),
    );
  }

  final String id;
  final String label;
  final String transactionLabel;
  final String billingLabel;
  final String type;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'transactionLabel': transactionLabel,
      'billingLabel': billingLabel,
      'type': type,
    };
  }

  @override
  List<Object?> get props => [
        id,
        label,
        transactionLabel,
        billingLabel,
        type,
      ];
}

extension ProductPropertyModelExtension on ProductCounterModel {}
