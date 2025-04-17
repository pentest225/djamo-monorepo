import 'package:domain/src/_core/_core.dart';

typedef SupportArticlesEntity = List<SupportArticleEntity>;

class SupportArticleEntity extends BaseEntity {
  const SupportArticleEntity({
    this.id = 0,
    this.parentId = 0,
    this.title = emptyString,
    this.type = emptyString,
    this.body = emptyString,
    this.workspaceId = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.defaultLocale = emptyString,
    this.translatedContent = const {},
    this.description = emptyString,
    this.url = emptyString,
    this.statistics = const {},
  });

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

  static const empty = SupportArticleEntity();
  bool get isEmpty => this == empty;

  bool hasMatchWithSearchKey(String key) {
    final normalizedKey = key.toLowerCase().trim();
    return title.toLowerCase().trim().startsWith(normalizedKey) || title.toLowerCase().trim().contains(normalizedKey);
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

extension SupportArticleEntityDomainExtension on SupportArticleEntity {}
