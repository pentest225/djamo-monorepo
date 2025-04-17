import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/products/models/product_counter_model.dart';
import 'package:domain/src/products/models/product_property_model.dart';

typedef ProductModels = List<ProductModel>;

class ProductModel extends BaseModel {
  const ProductModel({
    required this.id,
    required this.name,
    required this.type,
    required this.identifier,
    required this.counters,
    required this.properties,
    required this.configuration,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      type: DP.asString(json['type']),
      identifier: DP.asString(json['identifier']),
      counters: DP.asListOf<JsonMap>(json['counters']).map(ProductCounterModel.fromJson).toList(),
      properties: DP.asListOf<JsonMap>(json['properties']).map(ProductPropertyModel.fromJson).toList(),
      configuration: DP.asMap(json['configuration']),
    );
  }

  final String id;
  final String name;
  final String type;
  final String identifier;
  final List<ProductCounterModel> counters;
  final List<ProductPropertyModel> properties;
  final Map<String, dynamic> configuration;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'identifier': identifier,
      'counters': counters.map((e) => e.toJson()).toList(),
      'properties': properties.map((e) => e.toJson()).toList(),
      'configuration': configuration,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        type,
        identifier,
        counters,
        properties,
        configuration,
      ];
}

extension ProductModelExtension on ProductModel {}
