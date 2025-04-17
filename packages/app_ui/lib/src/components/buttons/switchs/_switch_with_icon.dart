part of 'app_switch_button_component.dart';

class _SwitchWithIcon extends AppSwitchButtonComponent {
  const _SwitchWithIcon({
    required super.isSelected,
    super.trackColor,
    super.onChanged,
    super.iconSelected,
    super.iconDisabled,
    super.disabledBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return _SwitchBuilder(
      isSelected: isSelected,
      trackColor: trackColor,
      onChanged: onChanged,
      iconSelected: Icons.done,
      iconDisabled: Icons.close,
      disabledBackgroundColor: context.colorScheme.onSurface.withOpacity(.12),
    );
  }
}
