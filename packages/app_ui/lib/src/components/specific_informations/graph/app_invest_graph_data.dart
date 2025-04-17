import 'package:app_ui/src/components/specific_informations/graph/app_graph_data.dart';
import 'package:app_ui/src/core/classes/classes.dart';

typedef AppInvestGraphData = List<AppInvestGraphDatum>;

class AppInvestGraphDatum {
  const AppInvestGraphDatum({
    required this.period,
    required this.performanceAmount,
    required this.performancePercentage,
    required this.graphs,
    required this.yAxisMaxValue,
  });

  final String period;
  final ValueHistory<num> performanceAmount;
  final ValueHistory<num> performancePercentage;
  final num yAxisMaxValue;
  final List<AppGraphData> graphs;
}
