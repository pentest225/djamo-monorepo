part of '../app_progress_indicator_component.dart';

class _StepProgressIndicatorBuilder extends StatelessWidget {
  const _StepProgressIndicatorBuilder({
    required this.currentStep,
    required this.totalSteps,
    required this.hideIcon,
    this.startCount = 0,
  }) : assert(totalSteps >= 2 && totalSteps <= 8, 'Total steps must be between 2 and 8');

  final int currentStep;
  final int totalSteps;
  final int startCount;
  final bool hideIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < totalSteps; i++) ...[
          Expanded(
            child: _Step(
              step: i,
              currentStep: currentStep,
              hideIcon: hideIcon,
            ),
          ),
          if (i < totalSteps - 1) AppGaps.hor.s8,
        ],
      ],
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({
    required this.step,
    required this.currentStep,
    required this.hideIcon,
  });
  final int step;
  final int currentStep;
  final bool hideIcon;

  @override
  Widget build(BuildContext context) {
    final isActive = step == currentStep;
    final isPassed = step < currentStep;
    final colorScheme = context.theme.colorScheme;
    final color = _getColor(isActive, colorScheme, isPassed);
    final iconWidget = _icon(step, color);
    return Row(
      children: [
        ...[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!hideIcon) iconWidget!,
                AppGaps.hor.s4,
                Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 275),
                    height: AppSizes.h.s4,
                    decoration: BoxDecoration(
                      color: _getColor(isActive, colorScheme, isPassed),
                      borderRadius: BorderRadius.circular(AppSizes.h.custom(2)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Color _getColor(bool isActive, ColorScheme colorScheme, bool isPassed) {
    return isActive
        ? colorScheme.primary
        : isPassed
            ? colorScheme.primaryContainer
            : colorScheme.surfaceContainerHighest;
  }

  Widget? _icon(int step, Color color) {
    final counts = [
      Assets.icons.oneStepNumber,
      Assets.icons.twoStepNumber,
      Assets.icons.threeStepNumber,
      Assets.icons.fourStepNumber,
      Assets.icons.fiveStepNumber,
      Assets.icons.sixStepNumber,
      Assets.icons.sevenStepNumber,
      Assets.icons.eightStepNumber,
    ];
    return counts[step].svg(colorFilter: ColorFilter.mode(color, BlendMode.srcIn));
  }
}
