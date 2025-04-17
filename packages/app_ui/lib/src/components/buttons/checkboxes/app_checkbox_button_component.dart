import 'package:flutter/material.dart';

part '_builder.dart';

class AppCheckboxButtonComponent extends StatelessWidget {
  const AppCheckboxButtonComponent({
    this.isChecked,
    super.key,
    this.onChanged,
    this.isError = false,
    this.tristate = false,
    this.isEnabled = true,
  });

  final bool? isChecked;
  final bool? tristate;
  final bool? isError;
  final bool? isEnabled;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return _CheckboxBuilder(
      isChecked: isChecked,
      onChanged: onChanged,
      isError: isError,
      tristate: tristate,
      isEnabled: isEnabled,
    );
  }
}
