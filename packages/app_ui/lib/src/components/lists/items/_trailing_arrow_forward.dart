part of 'app_list_item_component.dart';

class _TrailingArrowForward<T extends Object?> extends AppListItemComponent<T> {
  const _TrailingArrowForward({
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
    super.titleColor,
    super.foregroundColor,
    super.horizontalPadding,
    super.key,
  });

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
      titleAlignment: tileAlignment,
      titleColor: titleColor,
      leadingWidget: leadingWidget,
      horizontalPadding: horizontalPadding,
      trailing: Assets.icons.navigateNext.svg(
        colorFilter: (foregroundColor ?? context.colorScheme.onSurface).toSrcMode(),
        height: AppSizes.h.s24,
        width: AppSizes.h.s24,
      ),
      thirdLine: thirdLine,
      foregroundColor: foregroundColor,
    );
  }
}
