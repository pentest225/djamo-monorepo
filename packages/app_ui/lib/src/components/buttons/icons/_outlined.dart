part of 'app_icon_button_component.dart';

class _Outlined extends AppIconButtonComponent {
  const _Outlined({
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
      foregroundColor: context.colorScheme.onSurface,
      borderColor: context.colorScheme.onSurfaceVariant,
      disabledForegroundColor: context.colorScheme.onSurface.withOpacity(.38),
      disabledBorderColor: context.colorScheme.onSurface.withOpacity(.12),
    );
  }
}
