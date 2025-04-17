part of '../app_common_button_component.dart';

class _TextButtonComponent extends AppCommonButtonComponent {
  const _TextButtonComponent({
    required super.label,
    super.icon,
    super.isEnabled,
    super.foregroundColor,
    super.contentPadding,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return _TextButtonComponentBuilder(
      label: label,
      buttonIcon: icon,
      isEnabled: isEnabled,
      onPressed: onPressed,
      foregroundColor: foregroundColor ?? context.colorScheme.primary,
      contentPadding: contentPadding,
      disabledForegroundColor: context.colorScheme.onSurface.withOpacity(.38),
    );
  }
}
