part of 'app_kyc_tracking_component.dart';

class _Rejected extends AppKYCTrackingComponent {
  const _Rejected({
    super.onPressed,
    super.message,
  });

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.error(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.identityIssue,
      titleMaxLines: 1,
      contentText: message.orNull ?? context.l10n.invalidIdentityData,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.error),
    );
  }
}
