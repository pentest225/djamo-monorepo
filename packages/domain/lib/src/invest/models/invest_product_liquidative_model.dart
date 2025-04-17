import 'package:domain/src/_core/_core.dart';

class InvestProductLiquidativeModel extends BaseModel {
  const InvestProductLiquidativeModel({
    required this.value,
    required this.date,
  });

  factory InvestProductLiquidativeModel.fromJson(Map<String, dynamic> json) {
    return InvestProductLiquidativeModel(
      value: DP.asDouble(json['value']),
      date: DP.asString(json['date']),
    );
  }

  final double value;
  final String date;

  @override
  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'date': date,
    };
  }

  @override
  List<Object?> get props => [
        value,
        date,
      ];
}

extension InvestProductLiquidativeModelExtension on InvestProductLiquidativeModel {}
