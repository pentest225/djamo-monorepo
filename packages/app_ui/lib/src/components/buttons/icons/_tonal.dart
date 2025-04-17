part of 'app_icon_button_component.dart';

class _Tonal extends AppIconButtonComponent {
  const _Tonal({
    required super.icon,
    super.key,
    super.isEnabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return _IconButtonBuilder(
      buttonIcon: icon,
      isEnabled: isEnabled,
      onPressed: onPressed,
      backgroundColor: context.colorScheme.primaryContainer,
      foregroundColor: context.colorScheme.primary,
      disabledBackgroundColor: context.colorScheme.onSurface.withOpacity(.12),
      disabledForegroundColor: context.colorScheme.primary.withOpacity(.38),
    );
  }
}
