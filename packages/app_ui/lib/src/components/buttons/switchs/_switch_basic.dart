part of 'app_switch_button_component.dart';

class _SwitchBasic extends AppSwitchButtonComponent {
  const _SwitchBasic({
    required super.isSelected,
    super.trackColor,
    super.onChanged,
    super.disabledBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return _SwitchBuilder(
      isSelected: isSelected,
      trackColor: trackColor,
      onChanged: onChanged,
      disabledBackgroundColor: context.colorScheme.onSurface.withOpacity(.12),
    );
  }
}
