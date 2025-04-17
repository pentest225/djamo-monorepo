import 'package:flutter/material.dart';

/// Minimum value for the x-axis (1st day of a month)
const num minXAxisValue = 1;

/// Maximum value for the x-axis (31st day of a month)
const num defaultMaxXAxisValue = 31;

/// Minimum value for the y-axis (0 F CFA spent)
const num minYAxisValue = 0;

/// Represents a data point in the graph
/// [x] is the x-axis value and represents the day of the month
/// [y] is the y-axis value and represents the amount spent
class DataPoint {
  /// Default constructor for data point
  const DataPoint({
    required this.x,
    required this.y,
  });

  /// Constructor for data point with origin
  /// Origin is the point where x is 1 for the first day of the month and y is 0 for 0 F CFA spent
  const DataPoint.origin()
      : x = minXAxisValue,
        y = 0;

  /// Constructor for data point with x-axis value
  const DataPoint.x(this.x) : y = 0;

  /// Constructor for data point with y-axis value
  const DataPoint.y(this.y) : x = minXAxisValue;

  /// x-axis value
  /// x represents the day of the month
  final num x;

  /// y-axis value
  /// y represents the amount spent
  final num y;
}

/// Represents the data for the graph
class AppGraphData {
  /// Default constructor for graph data
  const AppGraphData({
    this.lineColor,
    this.lineWidth = 2.0,
    this.dataPoints = const [],
    this.name,
  });

  /// Name of the graph. For the developer's reference. It is not displayed anywhere.
  final String? name;

  /// Color of the line in the graph. Default is primary color.
  final Color? lineColor;

  /// Width of the line in the graph. Default is 2.0.
  final double lineWidth;

  /// Data points to be displayed in the graph
  final List<DataPoint> dataPoints;
}
