part of 'app_order_tracking_component.dart';

class _ReadyForPickup extends AppOrderTrackingComponent {
  const _ReadyForPickup({
    super.onPressed,
    super.message,
  });

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.info(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.yourCardIsReady,
      titleMaxLines: 1,
      contentText: message.orNull ?? context.l10n.collectFromDjamoAgent,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.card),
    );
  }
}
