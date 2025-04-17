part of '../app_common_button_component.dart';

class _OutlinedButtonComponent extends AppCommonButtonComponent {
  const _OutlinedButtonComponent({
    required super.label,
    super.icon,
    super.isLarge,
    super.isEnabled,
    super.fullMaxWidth,
    super.foregroundColor,
    super.borderColor,
    super.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _OutlinedButtonComponentBuilder(
      label: label,
      buttonIcon: icon,
      onPressed: onPressed,
      isLarge: isLarge,
      isEnabled: isEnabled,
      fullMaxWidth: fullMaxWidth,
      foregroundColor: foregroundColor ?? context.colorScheme.primary,
      disabledForegroundColor: context.colorScheme.onSurface.withOpacity(.38),
      borderColor: borderColor ?? context.colorScheme.outline,
      disabledBorderColor: context.colorScheme.onSurface.withOpacity(.12),
    );
  }
}
