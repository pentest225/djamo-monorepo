import 'package:domain/src/_core/_core.dart';

class MonthlyCreditLimitEntity extends BaseEntity {
  const MonthlyCreditLimitEntity({
    this.amount = -1,
    this.remainingAmount = -1,
  });

  final double amount;
  final double remainingAmount;

  static const empty = MonthlyCreditLimitEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        amount,
        remainingAmount,
      ];
}

extension MonthlyCreditLimitEntityExtension on MonthlyCreditLimitEntity {}
