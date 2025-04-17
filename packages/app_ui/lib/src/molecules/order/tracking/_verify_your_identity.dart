part of 'app_order_tracking_component.dart';

class _VerifyYourIdentity extends AppOrderTrackingComponent {
  const _VerifyYourIdentity({
    super.onPressed,
    super.message,
  });

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.info(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.verifyYourIdentity,
      titleMaxLines: 1,
      contentText: message.orNull ?? context.l10n.completeIdentificationToFinishOrder,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.document),
    );
  }
}
