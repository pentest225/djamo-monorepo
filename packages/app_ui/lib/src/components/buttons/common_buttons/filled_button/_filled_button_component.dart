part of '../app_common_button_component.dart';

class _FilledButtonComponent extends AppCommonButtonComponent {
  const _FilledButtonComponent({
    required super.label,
    super.icon,
    super.isLarge,
    super.isEnabled,
    super.fullMaxWidth,
    super.onPressed,
    this.backgroundColor,
    super.foregroundColor,
    super.key,
  });

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return _FilledButtonComponentBuilder(
      label: label,
      buttonIcon: icon,
      onPressed: onPressed,
      isLarge: isLarge,
      isEnabled: isEnabled,
      fullMaxWidth: fullMaxWidth,
      backgroundColor: backgroundColor ?? context.colorScheme.primary,
      foregroundColor: foregroundColor ?? context.colorScheme.onPrimary,
      disabledBackgroundColor: context.colorScheme.onSurface.withOpacity(.12),
      disabledForegroundColor: context.colorScheme.onSurface.withOpacity(.38),
    );
  }
}
