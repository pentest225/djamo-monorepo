part of 'app_prospectus_reader_view.dart';

class UIProspectusItem extends Equatable {
  const UIProspectusItem({
    required this.title,
    required this.content,
  });

  factory UIProspectusItem.fromMap(Map<String, dynamic> json) {
    try {
      final c = List<Map<String, dynamic>>.from(json['content'] as List? ?? []);
      return UIProspectusItem(
        title: json['title'].toString(),
        content: c.map(UIProspectusContentItem.fromMap).toList(),
      );
    } catch (_, __) {
      return const UIProspectusItem(title: '', content: []);
    }
  }

  final String title;
  final List<UIProspectusContentItem> content;

  @override
  List<Object> get props => [title, content];
}

@internal
class UIProspectusContentItem extends Equatable {
  const UIProspectusContentItem({
    required this.type,
    required this.title,
    required this.content,
  });

  factory UIProspectusContentItem.fromMap(Map<String, dynamic> json) {
    return UIProspectusContentItem(
      type: UIProspectusContentType.fromString(json['type'].toString()),
      title: json['title'].toString(),
      content: json['content'].toString(),
    );
  }

  final UIProspectusContentType type;
  final String title;
  final String content;

  @override
  List<Object> get props => [type, title, content];
}

@internal
enum UIProspectusContentType {
  accordion,
  imageUrl,
  text,
  ;

  factory UIProspectusContentType.fromString(String type) {
    return {
      'accordion': UIProspectusContentType.accordion,
      'imageUrl': UIProspectusContentType.imageUrl,
      'text': UIProspectusContentType.text,
    }.getOrElse(type, () => text);
  }

  bool get isAccordion {
    return this == UIProspectusContentType.accordion;
  }

  bool get isImageUrl {
    return this == UIProspectusContentType.imageUrl;
  }

  bool get isText {
    return this == UIProspectusContentType.text;
  }
}
