import 'package:domain/src/_core/_core.dart';

typedef ServiceModels = List<ServiceModel>;

class ServiceModel extends BaseModel {
  const ServiceModel({
    required this.id,
    required this.name,
    required this.label,
    required this.identifier,
    required this.iconUrl,
    required this.isActive,
    required this.accountTypes,
    required this.category,
    required this.order,
    required this.configuration,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      label: DP.asString(json['label']),
      identifier: DP.asString(json['identifier']),
      iconUrl: DP.asString(json['iconUrl']),
      isActive: DP.asBool(json['isActive']),
      accountTypes: DP.asListOf(json['accountTypes']),
      category: DP.asString(json['category']),
      order: DP.asInt(json['order']),
      configuration: DP.asMap(json['configuration']),
    );
  }

  final String id;
  final String name;
  final String label;
  final String identifier;
  final String iconUrl;
  final bool isActive;
  final List<String> accountTypes;
  final String category;
  final int order;
  final Map<String, dynamic> configuration;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'label': label,
      'identifier': identifier,
      'iconUrl': iconUrl,
      'isActive': isActive,
      'accountTypes': accountTypes,
      'category': category,
      'order': order,
      'configuration': configuration,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        label,
        identifier,
        iconUrl,
        isActive,
        accountTypes,
        category,
        order,
        configuration,
      ];
}

extension ServiceModelExtension on ServiceModel {}
