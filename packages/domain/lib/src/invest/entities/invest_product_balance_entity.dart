import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/_core/utils/use_safe_division.dart';

typedef InvestProductBalanceEntities = List<InvestProductBalanceEntity>;

class InvestProductBalanceEntity extends BaseEntity {
  const InvestProductBalanceEntity({
    this.id = emptyString,
    this.balance = 0.0,
    this.performance = 0.0,
  });

  final String id;
  final double balance;
  final double performance;

  static const empty = InvestProductBalanceEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        balance,
        performance,
      ];
}

extension InvestProductBalanceEntityExtension on InvestProductBalanceEntity {
  bool get isActivated {
    return balance > 0;
  }

  double get performanceAmount {
    return useSafeDivision(balance * performance, 100);
  }
}
