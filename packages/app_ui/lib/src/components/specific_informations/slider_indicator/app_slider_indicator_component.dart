import 'package:app_ui/app_ui.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class AppSliderIndicatorComponent extends StatelessWidget {
  const AppSliderIndicatorComponent({
    required this.currentSlideIndex,
    required this.totalSteps,
    super.key,
  });

  final int currentSlideIndex;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {
    if (totalSteps <= 1) return const SizedBox.shrink();
    return DotsIndicator(
      animate: true,
      dotsCount: totalSteps,
      position: currentSlideIndex.toDouble(),
      decorator: DotsDecorator(
        color: context.colorScheme.onSurface,
        activeColor: context.colorScheme.onSurface,
        size: Size.square(AppSizes.h.s4),
        activeSize: Size(AppSizes.w.s32, AppSizes.h.s4),
        spacing: AppPaddings.s4.horizontal,
        activeShape: RoundedRectangleBorder(borderRadius: AppBorderRadius.s4.all),
      ),
    );
  }
}
