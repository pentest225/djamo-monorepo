part of 'app_key_metric_card.dart';

class _Prominent extends AppKeyMetricCard {
  const _Prominent({
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
            AppTextComponent.headlineMedium(
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
      backgroundColor: backgroundColor ?? context.colorScheme.secondaryContainer,
      borderColor: borderColor ?? context.customColorScheme.secondaryCardOutline,
    );
  }
}
