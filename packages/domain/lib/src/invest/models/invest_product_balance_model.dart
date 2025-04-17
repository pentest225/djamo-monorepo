import 'package:domain/src/_core/_core.dart';

typedef InvestProductBalanceModels = List<InvestProductBalanceModel>;

class InvestProductBalanceModel extends BaseModel {
  const InvestProductBalanceModel({
    required this.id,
    required this.balance,
    required this.performance,
  });

  factory InvestProductBalanceModel.fromJson(Map<String, dynamic> json) {
    return InvestProductBalanceModel(
      id: DP.asString(json['id']),
      balance: DP.asDouble(json['balance']),
      performance: DP.asDouble(json['performance']),
    );
  }

  final String id;
  final double balance;
  final double performance;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'balance': balance,
      'performance': performance,
    };
  }

  @override
  List<Object?> get props => [
        id,
        balance,
        performance,
      ];
}

extension InvestProductBalanceModelExtension on InvestProductBalanceModel {}
