import 'package:equatable/equatable.dart';

typedef MetricItems = List<MetricItem>;

class MetricItem extends Equatable {
  const MetricItem({
    required this.metric,
    required this.label,
  });

  final double metric;
  final String label;

  @override
  List<Object> get props => [metric, label];
}
