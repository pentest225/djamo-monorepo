import 'package:domain/src/_core/_core.dart';

typedef SupportCategoriesEntity = List<SupportCategoryEntity>;

class SupportCategoryEntity extends BaseEntity {
  const SupportCategoryEntity({
    this.id = 0,
    this.name = emptyString,
    this.description = emptyString,
    this.icon = emptyString,
    this.iconUrl = emptyString,
    this.type = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.workspaceId = emptyString,
    this.url = emptyString,
    this.order = 0,
  });

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

  static const empty = SupportCategoryEntity();
  bool get isEmpty => this == empty;

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

extension SupportCategoryEntityDomainExtension on SupportCategoryEntity {}
