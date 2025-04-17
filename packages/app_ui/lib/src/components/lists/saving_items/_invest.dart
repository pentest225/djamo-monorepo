part of 'app_saving_item_component.dart';

class _Invest extends AppSavingItemComponent {
  const _Invest({
    required super.name,
    this.entryFeesPercentage,
    this.exitFeesPercentage,
    this.annualPerformanceObjective,
    this.performance,
    super.amount,
    super.onPressed,
    super.horizontalPadding,
    super.isAmountVisible,
    this.graphData,
    this.graphMaxXAxisValue = 6,
    this.graphMaxYAxisValue = 100,
  });

  final double? annualPerformanceObjective;
  final ValueHistory<num>? performance;
  final double? entryFeesPercentage;
  final double? exitFeesPercentage;
  final AppGraphData? graphData;
  final double graphMaxXAxisValue;
  final double graphMaxYAxisValue;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      name: name,
      amount: amount,
      onPressed: onPressed,
      horizontalPadding: horizontalPadding,
      isAmountVisible: isAmountVisible,
      statsIndicator: graphData == null
          ? null
          : AppGraphComponent.tiny(
              yAxisMaxValue: graphMaxYAxisValue,
              maxXAxisValue: graphMaxXAxisValue,
              graphs: [
                graphData!,
              ],
            ),
      description: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (entryFeesPercentage != null) ...[
            AppTextComponent.bodySmall(context.l10n.entryFees),
            AppTextComponent.titleMediumProminent('${entryFeesPercentage?.trimToDouble(fractionDigits: 2)} %'),
          ],
          if (exitFeesPercentage != null) ...[
            AppTextComponent.bodySmall(context.l10n.exitFees),
            AppTextComponent.titleMediumProminent('${exitFeesPercentage?.trimToDouble(fractionDigits: 2)} %'),
          ],
          if (annualPerformanceObjective != null) ...[
            AppTextComponent.bodySmall(context.l10n.investPerformanceObjective),
            AppGaps.ver.s8,
            AppCardComponent(
              contentPadding: AppPaddings.s4.vertical.copyWith(
                left: AppSizes.w.s12,
                right: AppSizes.w.s12,
              ),
              backgroundColor: context.colorScheme.primaryContainer,
              borderColor: Colors.transparent,
              content: AppTextComponent.titleMediumProminent(
                '${annualPerformanceObjective?.toStringAsFixed(1)} %',
                color: context.colorScheme.onPrimaryContainer,
              ),
            ),
          ],
        ],
      ),
      performanceIndicator: switch (performance) {
        null => null,
        _ => AppPerformanceIndicatorComponent(
            value: performance!,
            decimalDigits: 2,
          ),
      },
    );
  }
}

// List<DataPoint> get _fakeDataPoint {
//   const maxX = 15;
//   const maxY = 9.5;
//   final random = Random();

//   final dataPoints = [
//     for (int x = 1; x <= maxX; x++)
//       if (x == 1)
//         const DataPoint.origin()
//       else
//         DataPoint(
//           x: x,
//           y: double.parse(
//             (random.nextDouble() * maxY).toStringAsFixed(2),
//           ),
//         ),
//   ];
//   return dataPoints;
// }
