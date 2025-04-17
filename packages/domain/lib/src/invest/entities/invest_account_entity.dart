import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/_core/utils/use_safe_division.dart';
import 'package:domain/src/invest/entities/invest_product_balance_entity.dart';
import 'package:domain/src/invest/enums/enums.dart';
import 'package:meta/meta.dart';

class InvestAccountEntity extends BaseEntity {
  const InvestAccountEntity({
    this.id = emptyString,
    this.status = emptyString,
    this.products = const [],
  });

  final String id;
  @internal

  ///Use [getStatus] instead
  final String status;
  final InvestProductBalanceEntities products;

  static const empty = InvestAccountEntity();

  bool get isEmpty => this == empty;

  InvestProductBalanceEntity getBalanceByProduct(String productId) {
    return products.firstWhere(
      (e) => e.id == productId,
      orElse: () => InvestProductBalanceEntity.empty,
    );
  }

  @override
  List<Object?> get props => [
        id,
        status,
        products,
      ];
}

extension InvestAccountEntityExtension on InvestAccountEntity {
  InvestAccountStatusEnum get getStatus {
    return InvestAccountStatusEnum.fromString(status);
  }

  double get totalBalance {
    return products.fold(
      0,
      (previousValue, element) => previousValue + element.balance,
    );
  }

  double get totalPerformance {
    return products.fold(
      0,
      (previousValue, element) => previousValue + element.performanceAmount,
    );
  }

  double get totalPerformancePercentage {
    return useSafeDivision(totalPerformance, totalBalance) * 100;
  }
}
