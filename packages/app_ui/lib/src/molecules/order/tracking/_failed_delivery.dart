part of 'app_order_tracking_component.dart';

class _FailedDelivery extends AppOrderTrackingComponent {
  const _FailedDelivery({
    super.onPressed,
    super.message,
  });

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.error(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.deliveryFailed,
      titleMaxLines: 1,
      contentText: message.orNull ?? context.l10n.deliveryRescheduled,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.error),
    );
  }
}
