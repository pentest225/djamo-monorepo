part of 'app_list_item_component.dart';

class _TrailingCustom<T extends Object?> extends AppListItemComponent<T> {
  const _TrailingCustom({
    required super.title,
    this.trailing,
    super.subtitle,
    super.thirdLine,
    super.titleMaxLines,
    super.subtitleMaxLines,
    super.leading,
    super.leadingWidget,
    super.highlight,
    super.onPressed,
    super.tileAlignment,
    super.key,
    super.titleColor,
    super.contentPadding,
    super.horizontalPadding,
    super.useRichText,
    super.foregroundColor,
  });

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return _CustomListTile(
      title: title,
      subtitle: subtitle,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      onPressed: onPressed,
      leading: leading,
      leadingWidget: leadingWidget,
      titleAlignment: tileAlignment,
      trailing: trailing,
      titleColor: titleColor,
      contentPadding: contentPadding,
      horizontalPadding: horizontalPadding,
      thirdLine: thirdLine,
      useRichText: useRichText,
      foregroundColor: foregroundColor,
    );
  }
}
