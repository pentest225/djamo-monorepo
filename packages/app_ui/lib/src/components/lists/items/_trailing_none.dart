part of 'app_list_item_component.dart';

class _TrailingNone<T extends Object?> extends AppListItemComponent<T> {
  const _TrailingNone({
    required super.title,
    super.subtitle,
    super.highlight,
    super.thirdLine,
    super.titleMaxLines,
    super.subtitleMaxLines,
    super.leading,
    super.leadingWidget,
    super.onPressed,
    super.tileAlignment,
    super.horizontalPadding,
    super.key,
    super.titleColor,
    super.useRichText,
  });

  @override
  Widget build(BuildContext context) {
    return _CustomListTile(
      title: title,
      subtitle: subtitle,
      highlight: highlight,
      thirdLine: thirdLine,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      onPressed: onPressed,
      leading: leading,
      titleAlignment: tileAlignment,
      titleColor: titleColor,
      leadingWidget: leadingWidget,
      horizontalPadding: horizontalPadding,
      useRichText: useRichText,
    );
  }
}
