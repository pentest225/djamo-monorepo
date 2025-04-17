import 'package:domain/src/_core/_core.dart';

class InvestProductPerformanceModel extends BaseModel {
  const InvestProductPerformanceModel({
    required this.objective,
    required this.week,
    required this.month,
    required this.trimester,
    required this.semester,
    required this.year,
    required this.beginning,
  });

  factory InvestProductPerformanceModel.fromJson(Map<String, dynamic> json) {
    return InvestProductPerformanceModel(
      objective: DP.asDouble(json['objective']),
      week: DP.asDouble(json['week']),
      month: DP.asDouble(json['month']),
      trimester: DP.asDouble(json['trimester']),
      semester: DP.asDouble(json['semester']),
      year: DP.asDouble(json['year']),
      beginning: DP.asDouble(json['beginning']),
    );
  }

  final double objective;
  final double week;
  final double month;
  final double trimester;
  final double semester;
  final double year;
  final double beginning;

  @override
  Map<String, dynamic> toJson() {
    return {
      'objective': objective,
      'week': week,
      'month': month,
      'trimester': trimester,
      'semester': semester,
      'year': year,
      'beginning': beginning,
    };
  }

  @override
  List<Object?> get props => [
        objective,
        week,
        month,
        trimester,
        semester,
        year,
        beginning,
      ];
}

extension InvestProductPerformanceModelExtension on InvestProductPerformanceModel {}
