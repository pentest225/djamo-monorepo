import 'package:domain/src/_core/_core.dart';

typedef SupportSectionsEntity = List<SupportSectionEntity>;

class SupportSectionEntity extends BaseEntity {
  const SupportSectionEntity({
    this.id = 0,
    this.name = emptyString,
    this.order = 0,
    this.parentId = 0,
    this.isExpanded = false,
  });

  final int id;
  final String name;
  final int order;
  final int parentId;
  final bool isExpanded;

  static const empty = SupportSectionEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        name,
        order,
        parentId,
        isExpanded,
      ];
}

extension SupportSectionEntityDomainExtension on SupportSectionEntity {}
