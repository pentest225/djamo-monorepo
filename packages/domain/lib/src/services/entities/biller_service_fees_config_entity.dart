import 'package:domain/src/_core/_core.dart';
import 'package:meta/meta.dart';

class BillerServiceFeesConfigEntity extends BaseEntity {
  const BillerServiceFeesConfigEntity({
    this.type = emptyString,
    this.value = 0,
  });

  /// Use [isPercentage] to check if the type is percentage
  /// Use [isFixedAmount] to check if the type is fixed_amount
  @internal
  final String type;
  final num value;

  static const empty = BillerServiceFeesConfigEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        type,
        value,
      ];
}

extension BillerServiceFeesConfigEntityDomainExtension on BillerServiceFeesConfigEntity {
  bool get isPercentage {
    return type == 'percentage';
  }

  bool get isFixedAmount {
    return type == 'fixed_amount';
  }

  bool get hasFeesSystem {
    return [isPercentage, isFixedAmount].contains(true) && value > 0;
  }
}
