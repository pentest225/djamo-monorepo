part of '../app_common_button_component.dart';

class _ElevatedButtonComponent extends AppCommonButtonComponent {
  const _ElevatedButtonComponent({
    required super.label,
    super.icon,
    super.isEnabled,
    super.fullMaxWidth,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return _ElevatedButtonComponentBuilder(
      label: label,
      buttonIcon: icon,
      isEnabled: isEnabled,
      fullMaxWidth: fullMaxWidth,
      onPressed: onPressed,
      foregroundColor: context.colorScheme.primary,
      disabledForegroundColor: context.colorScheme.onSurface.withOpacity(.38),
    );
  }
}
