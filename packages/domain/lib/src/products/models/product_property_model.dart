import 'package:domain/src/_core/_core.dart';

class ProductPropertyModel extends BaseModel {
  const ProductPropertyModel({
    required this.id,
    required this.isActive,
    required this.label,
    required this.order,
  });

  factory ProductPropertyModel.fromJson(Map<String, dynamic> json) {
    return ProductPropertyModel(
      id: DP.asString(json['id']),
      isActive: DP.asBool(json['isActive']),
      label: DP.asString(json['label']),
      order: DP.asInt(json['order']),
    );
  }

  final String id;
  final bool isActive;
  final String label;
  final int order;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'isActive': isActive,
      'label': label,
      'order': order,
    };
  }

  @override
  List<Object?> get props => [
        id,
        isActive,
        label,
        order,
      ];
}

extension ProductPropertyModelDomainExtension on ProductPropertyModel {}
