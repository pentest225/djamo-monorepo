import 'package:domain/src/_core/_core.dart';

typedef SupportArticlesModel = List<SupportArticleModel>;

class SupportArticleModel extends BaseModel {
  const SupportArticleModel({
    required this.id,
    required this.parentId,
    required this.title,
    required this.type,
    required this.body,
    required this.workspaceId,
    required this.createdAt,
    required this.updatedAt,
    required this.defaultLocale,
    required this.translatedContent,
    required this.description,
    required this.url,
    required this.statistics,
  });

  factory SupportArticleModel.fromJson(Map<String, dynamic> json) {
    return SupportArticleModel(
      id: DP.asInt(json['id']),
      parentId: DP.asInt(json['parentId']),
      title: DP.asString(json['title']),
      type: DP.asString(json['type']),
      body: DP.asString(json['body']),
      workspaceId: DP.asString(json['workspace_id']),
      createdAt: DP.asString(json['created_at']),
      updatedAt: DP.asString(json['updated_at']),
      defaultLocale: DP.asString(json['default_locale']),
      translatedContent: DP.asMap(json['translated_content']),
      description: DP.asString(json['description']),
      url: DP.asString(json['url']),
      statistics: DP.asMap(json['statistics']),
    );
  }

  final int id;
  final int parentId;
  final String title;
  final String type;
  final String body;
  final String workspaceId;
  final String createdAt;
  final String updatedAt;
  final String defaultLocale;
  final Map<String, dynamic> translatedContent;
  final String description;
  final String url;
  final Map<String, dynamic> statistics;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'parentId': parentId,
      'title': title,
      'type': type,
      'body': body,
      'workspace_id': workspaceId,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'default_locale': defaultLocale,
      'translated_content': translatedContent,
      'description': description,
      'url': url,
      'statistics': statistics,
    };
  }

  @override
  List<Object?> get props => [
        id,
        parentId,
        title,
        type,
        body,
        workspaceId,
        createdAt,
        updatedAt,
        defaultLocale,
        translatedContent,
        description,
        url,
        statistics,
      ];
}

extension SupportArticleModelDomainExtension on SupportArticleModel {}
