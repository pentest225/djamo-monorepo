part of 'app_order_tracking_component.dart';

class _HelpFromAgentForKYC extends AppOrderTrackingComponent {
  const _HelpFromAgentForKYC({
    super.onPressed,
    super.message,
  });

  @override
  Widget build(BuildContext context) {
    return AppBannersComponent.warning(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.needHelpWithIdentity,
      titleMaxLines: 1,
      contentText: message.orNull ?? context.l10n.getAssistanceAtRelayPoint,
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.error),
    );
  }
}
