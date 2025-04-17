import 'package:domain/src/_core/_core.dart';

typedef SupportCategoriesModel = List<SupportCategoryModel>;

class SupportCategoryModel extends BaseModel {
  const SupportCategoryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.iconUrl,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    required this.workspaceId,
    required this.url,
    required this.order,
  });

  factory SupportCategoryModel.fromJson(Map<String, dynamic> json) {
    return SupportCategoryModel(
      id: DP.asInt(json['id']),
      name: DP.asString(json['name']),
      description: DP.asString(json['description']),
      icon: DP.asString(json['icon']),
      iconUrl: DP.asString(json['iconUrl']),
      type: DP.asString(json['type']),
      createdAt: DP.asString(json['created_at']),
      updatedAt: DP.asString(json['updated_at']),
      workspaceId: DP.asString(json['workspace_id']),
      url: DP.asString(json['url']),
      order: DP.asInt(json['order']),
    );
  }

  final int id;
  final String name;
  final String description;
  final String icon;
  final String iconUrl;
  final String type;
  final String createdAt;
  final String updatedAt;
  final String workspaceId;
  final String url;
  final int order;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'icon': icon,
      'iconUrl': iconUrl,
      'type': type,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'workspace_id': workspaceId,
      'url': url,
      'order': order,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        icon,
        iconUrl,
        type,
        createdAt,
        updatedAt,
        workspaceId,
        url,
        order,
      ];
}

extension SupportCategoryModelDomainExtension on SupportCategoryModel {}
