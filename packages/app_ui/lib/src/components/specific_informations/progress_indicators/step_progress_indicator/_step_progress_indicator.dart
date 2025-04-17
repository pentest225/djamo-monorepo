part of '../app_progress_indicator_component.dart';

class _StepProgressIndicator extends AppProgressIndicatorComponent {
  const _StepProgressIndicator({
    required super.currentStep,
    required super.totalSteps,
    required super.startCount,
    super.hideIcon = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _StepProgressIndicatorBuilder(
      currentStep: currentStep!,
      totalSteps: totalSteps!,
      startCount: startCount,
      hideIcon: hideIcon,
    );
  }
}
