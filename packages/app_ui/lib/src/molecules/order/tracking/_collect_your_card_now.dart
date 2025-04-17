part of 'app_order_tracking_component.dart';

class _CollectYourCardNow extends AppOrderTrackingComponent {
  const _CollectYourCardNow({
    super.onPressed,
    super.message,
  });

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.warning(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.collectYourCardNow,
      titleMaxLines: 1,
      contentText: message.orNull ?? context.l10n.collectYourCardFromAgent,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.card),
    );
  }
}
