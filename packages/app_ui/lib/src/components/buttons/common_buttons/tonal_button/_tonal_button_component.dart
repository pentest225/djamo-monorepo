part of '../app_common_button_component.dart';

class _TonalButtonComponent extends AppCommonButtonComponent {
  const _TonalButtonComponent({
    required super.label,
    super.icon,
    super.isEnabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return _TonalButtonComponentBuilder(
      label: label,
      buttonIcon: icon,
      isEnabled: isEnabled,
      onPressed: onPressed,
      foregroundColor: context.colorScheme.onSecondaryContainer,
      backgroundColor: context.colorScheme.secondaryContainer,
      disabledForegroundColor: context.colorScheme.onSurface.withOpacity(.38),
      disabledBackgroundColor: context.colorScheme.onSurface.withOpacity(.12),
    );
  }
}
