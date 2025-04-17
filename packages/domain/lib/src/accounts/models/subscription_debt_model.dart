import 'package:domain/src/_core/_core.dart';

class SubscriptionDebtModel extends BaseModel {
  const SubscriptionDebtModel({
    required this.balance,
  });

  factory SubscriptionDebtModel.fromJson(Map<String, dynamic> json) {
    return SubscriptionDebtModel(
      balance: DP.asDouble(json['balance']),
    );
  }

  final double balance;

  @override
  Map<String, dynamic> toJson() {
    return {
      'balance': balance,
    };
  }

  @override
  List<Object?> get props => [
        balance,
      ];
}

extension SubscriptionDebtModelExtension on SubscriptionDebtModel {}
