part of 'app_icon_button_component.dart';

class _Standard extends AppIconButtonComponent {
  const _Standard({
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
      disabledForegroundColor: context.colorScheme.onSurface.withOpacity(.38),
    );
  }
}
