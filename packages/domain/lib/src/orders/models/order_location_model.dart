import 'package:domain/src/_core/_core.dart';

class OrderLocationModel extends BaseModel {
  const OrderLocationModel({
    required this.id,
    required this.name,
  });

  factory OrderLocationModel.fromJson(Map<String, dynamic> json) {
    return OrderLocationModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
    );
  }

  final String id;
  final String name;

  @override
  List<Object?> get props => [
        id,
        name,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

extension OrderLocationModelExtension on OrderLocationModel {}
