part of 'app_checkbox_button_component.dart';

class _CheckboxBuilder extends StatelessWidget {
  const _CheckboxBuilder({
    this.isChecked,
    this.onChanged,
    this.isError,
    this.tristate,
    this.isEnabled,
  });
  final bool? isChecked;
  final bool? tristate;
  final bool? isError;
  final bool? isEnabled;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      tristate: tristate!,
      value: isChecked,
      isError: isError!,
      onChanged: isEnabled! ? onChanged : null,
    );
  }
}
