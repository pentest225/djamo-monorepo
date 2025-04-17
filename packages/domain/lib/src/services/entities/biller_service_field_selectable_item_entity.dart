import 'package:domain/src/_core/_core.dart';

typedef BillerServiceFieldSelectableItemEntities = List<BillerServiceFieldSelectableItemEntity>;

class BillerServiceFieldSelectableItemEntity extends BaseEntity {
  const BillerServiceFieldSelectableItemEntity({
    this.value,
    this.title = emptyString,
    this.subtitle = emptyString,
    this.formatted = emptyString,
    this.code = emptyString,
    this.type = emptyString,
  });

  final Object? value;
  final String title;
  final String subtitle;
  final String formatted;
  final String code;
  final String type;

  static const empty = BillerServiceFieldSelectableItemEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        value,
        title,
        subtitle,
        formatted,
        code,
        type,
      ];
}

extension BillerServiceFieldSelectableItemEntityDomainExtension on BillerServiceFieldSelectableItemEntity {
  bool get isAmount {
    return type == 'amount';
  }

  bool get isMultiplier {
    return type == 'multiplier';
  }

  num get valueAsNum {
    return DP.asNum(value);
  }

  String get valueAsString {
    return DP.asString(value);
  }

  bool get isActionCIEPREPAIDBalance {
    return valueAsString == 'debt_balance';
  }

  bool get isActionCIEPREPAIDDebt {
    return valueAsString == 'debt' || valueAsString == 'debt_balance';
  }

  bool get isActionCIEPREPAIDPurchase {
    return valueAsString == 'purchase';
  }
}
