part of 'app_card_destroyed_component.dart';

class _AppCardExpiredTooltip extends AppCardDestroyedTooltipComponent {
  const _AppCardExpiredTooltip({
    required super.onPressed,
    required this.expiresInDays,
    super.key,
  });

  final int expiresInDays;
  @override
  Widget build(BuildContext context) {
    if (expiresInDays <= 0) {
      return AppBannersComponent.error(
        onPressed: onPressed,
        showLabelButton: false,
        title: context.l10n.cardExpiredTitle,
        titleMaxLines: 1,
        contentText: context.l10n.cardExpiredMessage,
        contentTextMaxLines: 2,
        customIcon: AppAssetBuilder.svg(svg: Assets.icons.card),
      );
    }
    return AppBannersComponent.warning(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.cardWillExpireTitle,
      titleMaxLines: 1,
      contentText: context.l10n.cardWillExpireMessage(expiresInDays.toString()),
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.card),
    );
  }
}
