part of 'app_service_icon_button_component.dart';

class _ServiceIconButtonPrimary extends AppServiceIconButtonComponent {
  const _ServiceIconButtonPrimary({
    required super.label,
    required super.icon,
    super.isEnabled,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: _ServiceIconButtonBuilder(
        appIconButtonComponent: AppIconButtonComponent.primary(
          icon: icon,
          isEnabled: isEnabled,
          onPressed: onPressed,
        ),
        serviceText: label,
      ),
    );
  }
}
