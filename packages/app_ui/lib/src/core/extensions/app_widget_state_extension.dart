import 'package:flutter/material.dart';

extension WidgetStateX on WidgetState {
  ///hovered
  bool get isHovered => this == WidgetState.hovered;

  ///focused
  bool get isFocused => this == WidgetState.focused;

  ///pressed
  bool get isPressed => this == WidgetState.pressed;

  ///dragged
  bool get isDragged => this == WidgetState.dragged;

  ///selected
  bool get isSelected => this == WidgetState.selected;

  ///scrolledUnder
  bool get isScrolledUnder => this == WidgetState.scrolledUnder;

  ///disabled
  bool get isDisabled => this == WidgetState.disabled;

  ///error
  bool get isError => this == WidgetState.error;
}
