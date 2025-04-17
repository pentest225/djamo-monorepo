import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

part '_builder.dart';

class AppSegmentedButtonComponent<T> extends StatelessWidget {
  const AppSegmentedButtonComponent({
    required this.items,
    required this.selectedValue,
    super.key,
    this.onSelectionChanged,
    this.multiSelectionEnabled = false,
    this.selectedItemColor,
    this.unSelectedItemColor,
    this.fillMaxWidth = false,
    this.showSelectedIcon = true,
    this.contentPadding,
  });

  final List<SegmentItem<T>> items;
  final Set<T> selectedValue;
  final void Function(Set<T>)? onSelectionChanged;
  final bool? multiSelectionEnabled;
  final Color? selectedItemColor;
  final Color? unSelectedItemColor;
  final bool fillMaxWidth;
  final bool showSelectedIcon;
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return _SegmentedButtonBuilder(
      items: items,
      selectedValue: selectedValue,
      onSelectionChanged: onSelectionChanged,
      multiSelectionEnabled: multiSelectionEnabled!,
      selectedItemColor: selectedItemColor,
      unSelectedItemColor: unSelectedItemColor,
      fillMaxWidth: fillMaxWidth,
      showSelectedIcon: showSelectedIcon,
      contentPadding: contentPadding,
    );
  }
}
