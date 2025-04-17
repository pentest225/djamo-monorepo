part of 'app_order_tracking_component.dart';

class _PreferDelivery extends AppOrderTrackingComponent {
  const _PreferDelivery({
    super.onPressed,
    super.message,
  });

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.warning(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.preferDelivery,
      titleMaxLines: 1,
      contentText: message.orNull ?? context.l10n.scheduleFreeDelivery,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.bike),
    );
  }
}
