import 'package:app_ui/app_ui.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_invest.dart';
part '_line_chart.dart';
part '_statistic.dart';
part '_tiny.dart';

/// Graph component for displaying data in a graph
abstract class AppGraphComponent extends StatelessWidget {
  /// Default constructor for graph component
  const AppGraphComponent({
    required this.yAxisMaxValue,
    required this.graphs,
    super.key,
  });

  /// Constructor for graph component with statistics
  const factory AppGraphComponent.statistic({
    required List<AppGraphData> graphs,
    required num yAxisMaxValue,
    required double totalExpenses,
    Key? key,
  }) = _Statistic;

  /// Constructor for graph component with investment data
  const factory AppGraphComponent.invest({
    required AppInvestGraphData data,
    Key? key,
  }) = _Invest;

  /// Constructor for graph component with tiny height
  const factory AppGraphComponent.tiny({
    required num yAxisMaxValue,
    required double maxXAxisValue,
    required List<AppGraphData> graphs,
    double? height,
    Key? key,
  }) = _Tiny;

  /// y-axis maximum value default is 10
  final num yAxisMaxValue;

  /// List of graphs to be displayed
  final List<AppGraphData> graphs;
}
