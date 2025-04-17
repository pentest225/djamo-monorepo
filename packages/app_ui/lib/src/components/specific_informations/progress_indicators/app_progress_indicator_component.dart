import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

part '_circular_progress_indicator.dart';
part '_linear_progress_indicator.dart';
part 'step_progress_indicator/_builder.dart';
part 'step_progress_indicator/_step_progress_indicator.dart';

abstract class AppProgressIndicatorComponent extends StatelessWidget {
  const AppProgressIndicatorComponent({
    super.key,
    this.progressIndicatorColor,
    this.animationControllerValue,
    this.currentStep,
    this.totalSteps,
    this.startCount = 0,
    this.hideIcon = false,
  });

  const factory AppProgressIndicatorComponent.linear({
    Color? progressIndicatorColor,
    double? animationControllerValue,
    Key? key,
  }) = _LinearProgressIndicator;

  const factory AppProgressIndicatorComponent.circular({
    Color? progressIndicatorColor,
    double? animationControllerValue,
    double? strokeWidth,
    Key? key,
  }) = _CircularProgressIndicator;

  const factory AppProgressIndicatorComponent.step({
    required int currentStep,
    required int totalSteps,
    required int startCount,
    bool hideIcon,
    Key? key,
  }) = _StepProgressIndicator;

  final Color? progressIndicatorColor;
  final double? animationControllerValue;
  final int? currentStep;
  final int? totalSteps;
  final int startCount;
  final bool hideIcon;
}
