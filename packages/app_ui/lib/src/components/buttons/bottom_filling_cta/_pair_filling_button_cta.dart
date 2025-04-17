part of 'app_bottom_filling_cta_button_component.dart';

class _PairFillingButtonCta extends AppBottomFillingCtaButtonComponent {
  const _PairFillingButtonCta({
    required super.primaryCTALabel,
    required super.secondaryCTALabel,
    super.onPrimaryCTAPressed,
    super.onSecondaryCTAPressed,
    super.isPrimaryCTAEnabled,
    super.isSecondaryCTAEnabled,
    super.secondaryCTAForegroundColor,
    super.secondaryCTABorderColor,
    this.hideSecondaryButton = false,
    super.key,
  });
  final bool hideSecondaryButton;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppCommonButtonComponent.filledButton(
          label: primaryCTALabel!,
          isEnabled: isPrimaryCTAEnabled,
          isLarge: true,
          fullMaxWidth: true,
          onPressed: onPrimaryCTAPressed,
        ),
        if (!hideSecondaryButton) ...[
          AppGaps.ver.s8,
          AppCommonButtonComponent.outlinedButton(
            label: secondaryCTALabel!,
            isEnabled: isSecondaryCTAEnabled,
            isLarge: true,
            fullMaxWidth: true,
            onPressed: onSecondaryCTAPressed,
            foregroundColor: secondaryCTAForegroundColor,
            borderColor: secondaryCTABorderColor,
          ),
        ],
      ],
    );
  }
}
