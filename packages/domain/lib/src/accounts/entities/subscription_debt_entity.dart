import 'package:domain/src/_core/_core.dart';

class SubscriptionDebtEntity extends BaseEntity {
  const SubscriptionDebtEntity({
    this.balance = 0.0,
  });

  final double balance;

  static const empty = SubscriptionDebtEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        balance,
      ];
}

extension SubscriptionDebtEntityExtension on SubscriptionDebtEntity {}
