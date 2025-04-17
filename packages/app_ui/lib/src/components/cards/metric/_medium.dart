part of 'app_key_metric_card.dart';

class _Medium extends AppKeyMetricCard {
  const _Medium({
    required super.metrics,
    super.backgroundColor,
    super.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return _Builder(
      metrics: metrics.map((e) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTextComponent.titleLargeProminent(
              '${e.metric}%',
              textAlign: TextAlign.center,
              color: context.customColorScheme.content,
            ),
            AppTextComponent.bodySmall(
              e.label,
              textAlign: TextAlign.center,
              color: context.customColorScheme.contentLowest,
            ),
          ],
        );
      }).toList(),
      backgroundColor: backgroundColor ?? context.customColorScheme.primaryContainerLow,
      borderColor: borderColor ?? context.customColorScheme.primaryCardOutline,
    );
  }
}
