import 'package:domain/src/_core/_core.dart';

typedef TooltipMessageModels = List<TooltipMessageModel>;

class TooltipMessageModel extends BaseModel {
  const TooltipMessageModel({
    required this.id,
    required this.order,
    required this.status,
    required this.title,
    required this.content,
    required this.iconUrl,
    required this.actionType,
    required this.actionLink,
    required this.hidden,
    required this.config,
  });

  factory TooltipMessageModel.fromJson(Map<String, dynamic> json) {
    return TooltipMessageModel(
      id: DP.asString(json['id']),
      order: DP.asInt(json['order']),
      status: DP.asBool(json['status']),
      title: DP.asString(json['title']),
      content: DP.asString(json['content']),
      iconUrl: DP.asString(json['iconUrl']),
      actionType: DP.asString(json['actionType']),
      actionLink: DP.asString(json['actionLink']),
      hidden: DP.asBool(json['hidden']),
      config: DP.asMap(json['config']),
    );
  }

  final String id;
  final int order;
  final bool status;
  final String title;
  final String content;
  final String iconUrl;
  final String actionType;
  final String actionLink;
  final bool hidden;
  final Map<String, dynamic> config;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order': order,
      'status': status,
      'title': title,
      'content': content,
      'iconUrl': iconUrl,
      'actionType': actionType,
      'actionLink': actionLink,
      'hidden': hidden,
      'config': config,
    };
  }

  @override
  List<Object?> get props => [
        id,
        order,
        status,
        title,
        content,
        iconUrl,
        actionType,
        actionLink,
        hidden,
        config,
      ];
}

extension TooltipMessageModelDomainExtension on TooltipMessageModel {}
