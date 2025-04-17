part of 'app_offer_presentation_component.dart';

class UIOfferItem extends Equatable {
  const UIOfferItem({
    required this.name,
    required this.illustration,
    required this.content,
    required this.isSelectable,
    this.baseLine,
    this.tag,
  });

  final String name;
  final AppAssetBuilder illustration;
  final List<UIOfferContentItem> content;
  final bool isSelectable;
  final Widget? tag;
  final Widget? baseLine;

  @override
  List<Object?> get props => [
        name,
        illustration,
        content,
        isSelectable,
        baseLine,
        tag,
      ];
}

class UIOfferContentItem extends Equatable {
  const UIOfferContentItem({
    required this.content,
    required this.icon,
  });

  final String content;
  final AppAssetBuilder icon;

  @override
  List<Object> get props => [content, icon];
}
