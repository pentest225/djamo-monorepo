import 'package:domain/src/_core/_core.dart';

typedef InvestCashbackModels = List<InvestCashbackModel>;

class InvestCashbackModel extends BaseModel {
  const InvestCashbackModel({
    required this.description,
    required this.investmentProductName,
    required this.percentage,
  });

  factory InvestCashbackModel.fromJson(Map<String, dynamic> json) {
    return InvestCashbackModel(
      description: DP.asString(json['description']),
      investmentProductName: DP.asString(json['investmentProductName']),
      percentage: DP.asDouble(json['percentage']),
    );
  }

  final String description;
  final String investmentProductName;
  final double percentage;

  @override
  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'investmentProductName': investmentProductName,
      'percentage': percentage,
    };
  }

  @override
  List<Object?> get props => [
        description,
        investmentProductName,
        percentage,
      ];
}

extension InvestCashbackModelExtension on InvestCashbackModel {}
