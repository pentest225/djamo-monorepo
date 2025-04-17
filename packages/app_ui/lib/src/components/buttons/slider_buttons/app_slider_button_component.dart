import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

part '_builder.dart';

class AppSliderButtonComponent extends StatelessWidget {
  const AppSliderButtonComponent({
    required this.sliderValue,
    super.key,
    this.maxValue = 100,
    this.divisions,
    this.activeColor,
    this.thumbColor,
    this.inactiveColor,
    this.onChanged,
    this.showLabel = true,
    this.hideMarksOnDivisions = false,
    this.horizontalPadding,
  });

  final double sliderValue;
  final double? maxValue;
  final int? divisions;
  final Color? activeColor;
  final Color? thumbColor;
  final Color? inactiveColor;
  final bool showLabel;
  final bool hideMarksOnDivisions;
  final EdgeInsetsGeometry? horizontalPadding;
  final void Function(double currentSliderValue)? onChanged;
  @override
  Widget build(BuildContext context) {
    return _SliderButtonBuilder(
      sliderValue: sliderValue,
      maxValue: maxValue!,
      divisions: divisions,
      activeColor: activeColor,
      thumbColor: thumbColor,
      inactiveColor: inactiveColor,
      onChanged: onChanged,
      showLabel: showLabel,
      hideMarksOnDivisions: hideMarksOnDivisions,
      horizontalPadding: horizontalPadding,
    );
  }
}
