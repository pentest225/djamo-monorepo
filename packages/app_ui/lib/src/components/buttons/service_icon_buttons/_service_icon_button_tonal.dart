part of 'app_service_icon_button_component.dart';

class _ServiceIconButtonTonal extends AppServiceIconButtonComponent {
  const _ServiceIconButtonTonal({
    required super.label,
    required super.icon,
    super.isEnabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return _ServiceIconButtonBuilder(
      appIconButtonComponent: AppIconButtonComponent.tonal(
        icon: icon,
        isEnabled: isEnabled,
        onPressed: onPressed,
      ),
      serviceText: label,
    );
  }
}
