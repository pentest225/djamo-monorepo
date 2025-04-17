part of 'app_order_incentive_component.dart';

class _OrderPhysicalCard extends AppOrderIncentiveComponent {
  const _OrderPhysicalCard({required super.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.info(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.orderPhysicalCard,
      titleMaxLines: 1,
      contentText: context.l10n.physicalCardBenefits,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.card),
    );
  }
}
