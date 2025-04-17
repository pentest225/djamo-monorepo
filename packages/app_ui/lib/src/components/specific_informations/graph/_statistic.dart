part of 'app_graph_component.dart';

class _Statistic extends AppGraphComponent {
  const _Statistic({
    required super.yAxisMaxValue,
    required super.graphs,
    required this.totalExpenses,
    super.key,
  });

  final double totalExpenses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.s16.horizontal,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextComponent.titleMedium(
            context.l10n.statisticsTotalExpenses,
            color: context.customColorScheme.contentLowest,
          ),
          AppTextComponent.headlineMedium(
            totalExpenses.toCurrency(context),
          ),
          AppGaps.ver.s16,
          SizedBox(
            height: AppSizes.h.custom(112),
            child: _LineChart(
              yAxisMaxValue,
              graphs,
            ),
          ),
        ],
      ),
    );
  }
}
