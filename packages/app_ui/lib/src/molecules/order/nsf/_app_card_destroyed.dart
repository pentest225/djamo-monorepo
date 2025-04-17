part of 'app_card_destroyed_component.dart';

class _AppCardDestroyedTooltip extends AppCardDestroyedTooltipComponent {
  const _AppCardDestroyedTooltip({
    required super.onPressed,
    required this.isPhysicalCard,
    required this.nsfCount,
    super.key,
  });

  final bool isPhysicalCard;
  final String nsfCount;

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.warning(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.cardDestroyedNSFTitle,
      titleMaxLines: 1,
      contentText: isPhysicalCard ? context.l10n.cardDestroyedNSFPhysicalContent(nsfCount) : context.l10n.cardDestroyedNSFVirtualContent(nsfCount),
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.card),
    );
  }
}
