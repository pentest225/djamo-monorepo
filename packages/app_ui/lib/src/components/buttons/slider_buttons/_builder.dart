part of 'app_slider_button_component.dart';

class _SliderButtonBuilder extends StatelessWidget {
  const _SliderButtonBuilder({
    required this.sliderValue,
    required this.maxValue,
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
  final double maxValue;
  final int? divisions;
  final Color? activeColor;
  final Color? thumbColor;
  final Color? inactiveColor;
  final bool showLabel;
  final bool hideMarksOnDivisions;
  final void Function(double currentSliderValue)? onChanged;
  final EdgeInsetsGeometry? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontalPadding ?? AppPaddings.s16.horizontal,
      child: SliderTheme(
        data: context.theme.sliderTheme.copyWith(
          tickMarkShape: !hideMarksOnDivisions ? null : SliderTickMarkShape.noTickMark,
          trackShape: const _CustomSliderTrackShape(),
        ),
        child: Slider(
          value: sliderValue,
          max: maxValue,
          inactiveColor: inactiveColor ?? (onChanged == null ? context.colorScheme.surfaceContainerHighest : context.colorScheme.onSurface.withOpacity(0.12)),
          divisions: divisions,
          thumbColor: thumbColor ?? context.colorScheme.primary,
          activeColor: activeColor ?? context.colorScheme.primary,
          label: showLabel ? sliderValue.round().toString() : null,
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class _CustomSliderTrackShape extends RoundedRectSliderTrackShape {
  const _CustomSliderTrackShape();
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    Offset offset = Offset.zero,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
