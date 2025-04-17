import 'package:domain/src/_core/_core.dart';

class InvestProductPerformanceEntity extends BaseEntity {
  const InvestProductPerformanceEntity({
    this.objective = 0.0,
    this.week = 0.0,
    this.month = 0.0,
    this.trimester = 0.0,
    this.semester = 0.0,
    this.year = 0.0,
    this.beginning = 0.0,
  });

  final double objective;
  final double week;
  final double month;
  final double trimester;
  final double semester;
  final double year;
  final double beginning;

  static const empty = InvestProductPerformanceEntity();
  bool get isEmpty => this == empty;

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

extension InvestProductPerformanceEntityExtension on InvestProductPerformanceEntity {}
