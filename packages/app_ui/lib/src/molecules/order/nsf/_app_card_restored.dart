part of 'app_card_destroyed_component.dart';

class _AppCardRestoredTooltip extends AppCardDestroyedTooltipComponent {
  const _AppCardRestoredTooltip({
    required super.onPressed,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.warning(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.cardDestroyedRecreatedTitle,
      titleMaxLines: 1,
      contentText: context.l10n.cardDestroyedRecreatedContent,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.card),
    );
  }
}
