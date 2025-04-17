import 'package:domain/src/_core/_core.dart';

typedef SupportSectionsModel = List<SupportSectionModel>;

class SupportSectionModel extends BaseModel {
  const SupportSectionModel({
    required this.id,
    required this.name,
    required this.order,
    required this.parentId,
    required this.isExpanded,
  });

  factory SupportSectionModel.fromJson(Map<String, dynamic> json) {
    return SupportSectionModel(
      id: DP.asInt(json['id']),
      name: DP.asString(json['name']),
      order: DP.asInt(json['order']),
      parentId: DP.asInt(json['parent_id']),
      isExpanded: DP.asBool(json['isExpanded']),
    );
  }

  final int id;
  final String name;
  final int order;
  final int parentId;
  final bool isExpanded;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'order': order,
      'parent_id': parentId,
      'isExpanded': isExpanded,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        order,
        parentId,
        isExpanded,
      ];
}

extension SupportSectionModelDomainExtension on SupportSectionModel {}
