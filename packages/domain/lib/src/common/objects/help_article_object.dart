import 'package:domain/src/_core/helpers/dynamic_parser.dart';
import 'package:equatable/equatable.dart';

typedef HelpArticleObjects = List<HelpArticleObject>;

class HelpArticleObject extends Equatable {
  const HelpArticleObject({
    required this.intercomId,
    required this.thumbnailUrl,
    required this.title,
    required this.order,
  });

  factory HelpArticleObject.fromJson(Map<String, dynamic> json) {
    return HelpArticleObject(
      intercomId: DP.asString(json['intercom_article_id']),
      thumbnailUrl: DP.asString(json['thumbnailUrl']),
      title: DP.asString(json['title']),
      order: DP.asInt(json['order']),
    );
  }

  final String intercomId;
  final String title;

  final String thumbnailUrl;
  final int order;

  Map<String, dynamic> toJson() => {
        'intercom_article_id': intercomId,
        'thumbnailUrl': thumbnailUrl,
        'title': title,
        'order': order,
      };

  @override
  List<Object> get props => [intercomId, thumbnailUrl, title, order];
}
