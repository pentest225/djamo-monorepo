import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// This Widget helps pick a Date and displays it in a
/// field.
/// If the [value] is null than it will display nothing in the field.
/// [onDatePicked] is called when a date has been selected by the user.
class AppDatePickerComponent extends StatelessWidget {
  const AppDatePickerComponent({
    required this.onDatePicked, super.key,
    this.value,
  });
  final DateTime? value;
  final ValueChanged<DateTime?> onDatePicked;

  @override
  Widget build(BuildContext context) {
    return AppTextFieldComponent(
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: context,
          firstDate: DateTime(2017),
          lastDate: DateTime.now(),
        );
        onDatePicked(selectedDate);
      },
      readOnly: true,
      controller: TextEditingController(
        text: value?.formatToPattern(context, pattern: 'yMd') ?? '',
      ),
      trailingIcon: AppAssetBuilder.svg(
        config: const AssetBuilderConfig(
          size: 24,
        ),
        svg: Assets.icons.today,
      ),
    );
  }
}
