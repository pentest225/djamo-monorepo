part of 'app_graph_component.dart';

class _LineChart extends StatelessWidget {
  const _LineChart(
    this.yAxisMaxValue,
    this.graphs, {
    this.bottomTitles,
    this.maxXAxisValue,
  });

  final num yAxisMaxValue;
  final double? maxXAxisValue;
  final List<AppGraphData> graphs;
  final AxisTitles? bottomTitles;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: const LineTouchData(
          enabled: false,
        ),
        gridData: const FlGridData(show: false),
        titlesData: FlTitlesData(
          bottomTitles: bottomTitles ??
              AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    if (value.toInt() > minXAxisValue && value.toInt() % 7 != 0) {
                      return const SizedBox();
                    }

                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: AppTextComponent.labelSmall(
                        value.toInt().toString().padLeft(2, '0'),
                        color: context.customColorScheme.contentLowest,
                      ),
                    );
                  },
                ),
              ),
          rightTitles: const AxisTitles(),
          topTitles: const AxisTitles(),
          leftTitles: const AxisTitles(),
        ),
        borderData: FlBorderData(
          show: false,
        ),
        lineBarsData: graphs.map((graph) {
          return LineChartBarData(
            color: graph.lineColor ?? context.colorScheme.primary,
            barWidth: graph.lineWidth,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(),
            spots: graph.dataPoints.map((dataPoint) {
              return FlSpot(
                dataPoint.x.toDouble(),
                dataPoint.y.toDouble(),
              );
            }).toList(),
          );
        }).toList(),
        minX: minXAxisValue.toDouble(),
        maxX: maxXAxisValue ?? defaultMaxXAxisValue.toDouble(),
        minY: minYAxisValue.toDouble(),
        maxY: yAxisMaxValue.toDouble(),
      ),
    );
  }
}
