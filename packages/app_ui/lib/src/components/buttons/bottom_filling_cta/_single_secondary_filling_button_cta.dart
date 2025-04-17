part of 'app_bottom_filling_cta_button_component.dart';

class _SingleSecondaryFillingButtonCta extends AppBottomFillingCtaButtonComponent {
  const _SingleSecondaryFillingButtonCta({
    required super.label,
    super.isEnabled,
    super.fullMaxWidth,
    super.onPressed,
    super.foregroundColor,
    super.borderColor,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AppCommonButtonComponent.outlinedButton(
      label: label,
      isEnabled: isEnabled!,
      isLarge: true,
      fullMaxWidth: fullMaxWidth!,
      onPressed: onPressed,
      foregroundColor: foregroundColor,
      borderColor: borderColor,
    );
  }
}
