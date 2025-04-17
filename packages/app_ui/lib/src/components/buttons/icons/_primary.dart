part of 'app_icon_button_component.dart';

class _Primary extends AppIconButtonComponent {
  const _Primary({
    required super.icon,
    super.key,
    super.isEnabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return _IconButtonBuilder(
      key: key,
      buttonIcon: icon,
      isEnabled: isEnabled,
      onPressed: onPressed,
      backgroundColor: context.colorScheme.primary,
      foregroundColor: context.colorScheme.onPrimary,
      disabledBackgroundColor: context.colorScheme.onSurface.withOpacity(.12),
      disabledForegroundColor: context.colorScheme.onSurface.withOpacity(.38),
    );
  }
}
