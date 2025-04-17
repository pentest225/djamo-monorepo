import 'package:app_ui/app_ui.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

part '_input_bottom_sheet_builder.dart';
part '_app_dropdown_field_widget.dart';

class AppDropdownBottomSheet<T> extends StatelessWidget {
  const AppDropdownBottomSheet({
    required this.title,
    required this.label,
    required this.hasFocused,
    required this.items,
    required this.onItemChanged,
    required this.onMenuStateChange,
    this.buttonKey,
    this.value,
    this.decoration,
    this.itemValueFormatter,
    this.primaryCTALabel,
    this.onPrimaryCTAPressed,
    this.secondaryCTALabel,
    this.onSecondaryCTAPressed,
    this.isPrimaryCTAEnabled = true,
    this.isSecondaryCTAEnabled = true,
    this.autoHeight = true,
    this.height,
    super.key,
  });

  final String title;
  final String? primaryCTALabel;
  final void Function(BuildContext)? onPrimaryCTAPressed;
  final String? secondaryCTALabel;
  final void Function(BuildContext)? onSecondaryCTAPressed;
  final bool isPrimaryCTAEnabled;
  final bool isSecondaryCTAEnabled;
  final bool autoHeight;
  final double? height;
  final T? value;
  final String label;
  final bool hasFocused;
  final AppDropdownDecoration? decoration;
  final List<T> items;
  final void Function(T?) onItemChanged;
  final ValueChanged<bool> onMenuStateChange;
  final String Function(T?)? itemValueFormatter;
  final GlobalKey? buttonKey;

  @override
  Widget build(BuildContext context) {
    return _InputBottomSheetBuilder(
      title: title,
      label: label,
      hasFocused: hasFocused,
      items: items,
      onItemChanged: onItemChanged,
      onMenuStateChange: onMenuStateChange,
      buttonKey: buttonKey,
      value: value,
      decoration: decoration,
      itemValueFormatter: itemValueFormatter,
      primaryCTALabel: primaryCTALabel ?? 'Primary CTA Label',
      secondaryCTALabel: secondaryCTALabel ?? 'Secondary CTA Label',
      onPrimaryCTAPressed: onPrimaryCTAPressed,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isSecondaryCTAEnabled,
      autoHeight: autoHeight,
      height: height,
    );
  }
}
