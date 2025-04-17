import 'package:flutter/material.dart';

/// Extension on List<Widget> to add padding to all widgets in the list
extension PaddingWidgetListX on List<Widget> {
  /// Add padding to all widgets in the list
  List<Widget> addPadding(EdgeInsets padding) {
    return map(
      (widget) => Padding(
        padding: padding,
        child: widget,
      ),
    ).toList();
  }
}
