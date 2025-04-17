part of 'app_order_incentive_component.dart';

class _IncreaseVCCeiling extends AppOrderIncentiveComponent {
  const _IncreaseVCCeiling({required super.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.info(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.increaseYourLimit,
      titleMaxLines: 1,
      contentText: context.l10n.verifyIdentityToIncreaseLimit,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.document),
    );
  }
}
