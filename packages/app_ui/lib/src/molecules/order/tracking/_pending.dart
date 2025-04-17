part of 'app_order_tracking_component.dart';

class _Pending extends AppOrderTrackingComponent {
  const _Pending({
    super.onPressed,
    super.message,
  });

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.info(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.orderBeingProcessed,
      titleMaxLines: 1,
      contentText: message.orNull ?? context.l10n.pleaseWaitSupportContact,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.hourglass),
    );
  }
}
