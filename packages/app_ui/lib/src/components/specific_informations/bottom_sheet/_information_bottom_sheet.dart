part of 'app_bottom_sheet_component.dart';

class _InformationBottomSheet extends AppBottomSheetComponent {
  const _InformationBottomSheet({
    required super.title,
    required super.illustrationWidget,
    super.infoCard,
    super.confirmationInfo,
    super.primaryCTALabel,
    super.secondaryCTALabel,
    super.onPrimaryCTAPressed,
    super.onSecondaryCTAPressed,
    super.isPrimaryCTAEnabled,
    super.isSecondaryCTAEnabled,
    super.autoHeight = true,
    super.height,
    this.inputTextFieldComponent,
    super.showCloseButton = false,
    this.primaryButtonKey,
    this.secondaryButtonKey,
  });

  final Widget? inputTextFieldComponent;
  final Key? primaryButtonKey;
  final Key? secondaryButtonKey;
  @override
  Widget build(BuildContext context) {
    return _AppBottomSheetBuilder(
      title: title!,
      showCloseButton: showCloseButton,
      illustrationWidget: illustrationWidget,
      infoCard: infoCard,
      primaryCTALabel: primaryCTALabel,
      secondaryCTALabel: secondaryCTALabel,
      onPrimaryCTAPressed: onPrimaryCTAPressed,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isSecondaryCTAEnabled,
      autoHeight: autoHeight,
      height: height,
      confirmationInfo: confirmationInfo,
      inputTextFieldComponent: inputTextFieldComponent,
      primaryButtonKey: primaryButtonKey,
      secondaryButtonKey: secondaryButtonKey,
    );
  }
}
