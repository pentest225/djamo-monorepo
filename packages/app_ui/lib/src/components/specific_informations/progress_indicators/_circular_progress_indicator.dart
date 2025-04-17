part of 'app_progress_indicator_component.dart';

class _CircularProgressIndicator extends AppProgressIndicatorComponent {
  const _CircularProgressIndicator({
    super.progressIndicatorColor,
    super.animationControllerValue,
    this.strokeWidth,
    super.key,
  });

  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: strokeWidth ?? AppSizes.w.s4,
      color: progressIndicatorColor ?? context.colorScheme.primary,
      value: animationControllerValue,
    );
  }
}
