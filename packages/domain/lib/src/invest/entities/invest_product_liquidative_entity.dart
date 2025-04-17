import 'package:domain/src/_core/_core.dart';

class InvestProductLiquidativeEntity extends BaseEntity {
  const InvestProductLiquidativeEntity({
    this.value = 0.0,
    this.date = emptyString,
  });

  final double value;
  final String date;

  int get valueDecimalDigits {
    final dd = value.toString().split('.').lastOrNull ?? '';
    if (dd.isEmpty) return 0;
    return dd.length;
  }

  static const empty = InvestProductLiquidativeEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        value,
        date,
      ];
}

extension InvestProductLiquidativeEntityExtension on InvestProductLiquidativeEntity {}
