part of 'app_bottom_filling_cta_button_component.dart';

class _SinglePrimaryFillingButtonCta extends AppBottomFillingCtaButtonComponent {
  const _SinglePrimaryFillingButtonCta({
    required super.label,
    super.isEnabled,
    super.fullMaxWidth,
    super.onPressed,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AppCommonButtonComponent.filledButton(
      label: label,
      isEnabled: isEnabled!,
      isLarge: true,
      fullMaxWidth: fullMaxWidth!,
      onPressed: onPressed,
    );
  }
}
