import 'package:domain/src/_core/_core.dart';

class OrderProductModel extends BaseModel {
  const OrderProductModel({
    required this.id,
    required this.name,
    required this.identifier,
  });

  factory OrderProductModel.fromJson(Map<String, dynamic> json) {
    return OrderProductModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      identifier: DP.asString(json['identifier']),
    );
  }

  final String id;
  final String name;
  final String identifier;

  @override
  List<Object?> get props => [
        id,
        name,
        identifier,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'identifier': identifier,
    };
  }
}

extension OrderProductModelExtension on OrderProductModel {}
