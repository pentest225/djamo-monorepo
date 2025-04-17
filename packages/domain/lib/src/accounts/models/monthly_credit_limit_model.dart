import 'package:domain/src/_core/_core.dart';

class MonthlyCreditLimitModel extends BaseModel {
  const MonthlyCreditLimitModel({
    required this.amount,
    required this.remainingAmount,
  });

  factory MonthlyCreditLimitModel.fromJson(Map<String, dynamic> json) {
    return MonthlyCreditLimitModel(
      amount: DP.asDouble(
        json['amount'],
        defaultValue: -1,
      ),
      remainingAmount: DP.asDouble(
        json['remainingAmount'],
        defaultValue: -1,
      ),
    );
  }

  final double amount;
  final double remainingAmount;

  @override
  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'remainingAmount': remainingAmount,
    };
  }

  @override
  List<Object?> get props => [
        amount,
        remainingAmount,
      ];
}

extension MonthlyCreditLimitModelExtension on MonthlyCreditLimitModel {}
