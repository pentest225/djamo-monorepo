part of 'app_bottom_sheet_component.dart';

class _ConfirmationBottomSheet extends AppBottomSheetComponent {
  const _ConfirmationBottomSheet({
    required super.title,
    required super.infoCard,
    required super.confirmationInfo,
    super.primaryCTALabel,
    super.secondaryCTALabel,
    super.onPrimaryCTAPressed,
    super.onSecondaryCTAPressed,
    super.isPrimaryCTAEnabled = true,
    super.isSecondaryCTAEnabled = true,
    super.autoHeight = true,
    super.height,
    super.confirmationInfoType,
    super.showCloseButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return _AppBottomSheetBuilder(
      title: title!,
      showCloseButton: showCloseButton,
      infoCard: infoCard,
      confirmationInfo: confirmationInfo,
      primaryCTALabel: primaryCTALabel ?? 'Primary CTA Label',
      secondaryCTALabel: secondaryCTALabel,
      onPrimaryCTAPressed: onPrimaryCTAPressed,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isPrimaryCTAEnabled,
      autoHeight: autoHeight,
      height: height,
      confirmationInfoType: confirmationInfoType,
      key: key,
    );
  }
}
