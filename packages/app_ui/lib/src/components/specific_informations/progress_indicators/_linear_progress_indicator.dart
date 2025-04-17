part of 'app_progress_indicator_component.dart';

class _LinearProgressIndicator extends AppProgressIndicatorComponent {
  const _LinearProgressIndicator({
    super.progressIndicatorColor,
    super.animationControllerValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      color: progressIndicatorColor ?? context.colorScheme.primary,
      backgroundColor: context.colorScheme.surfaceContainerHighest,
      value: animationControllerValue,
    );
  }
}
