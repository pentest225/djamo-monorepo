import 'package:domain/src/_core/_core.dart';

typedef TransactionCategoryModels = List<TransactionCategoryModel>;

class TransactionCategoryModel extends BaseModel {
  const TransactionCategoryModel({
    required this.id,
    required this.identifier,
    required this.icon,
    required this.label,
    required this.description,
    required this.isDefault,
    required this.isActive,
    required this.order,
  });

  factory TransactionCategoryModel.fromJson(Map<String, dynamic> json) {
    return TransactionCategoryModel(
      id: DP.asString(json['id']),
      identifier: DP.asString(json['identifier']),
      icon: DP.asImageUrlString(json['icon']),
      label: DP.asString(json['label']),
      description: DP.asString(json['description']),
      isDefault: DP.asBool(json['isDefault']),
      isActive: DP.asBool(json['isActive']),
      order: DP.asInt(json['order']),
    );
  }

  final String id;
  final String identifier;
  final String icon;
  final String label;
  final String description;
  final bool isDefault;
  final bool isActive;
  final int order;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'identifier': identifier,
      'icon': icon,
      'label': label,
      'description': description,
      'isDefault': isDefault,
      'isActive': isActive,
      'order': order,
    };
  }

  @override
  List<Object?> get props => [
        id,
        identifier,
        icon,
        label,
        description,
        isDefault,
        isActive,
        order,
      ];
}

extension TransactionCategoryModelDomainExtension on TransactionCategoryModel {}
