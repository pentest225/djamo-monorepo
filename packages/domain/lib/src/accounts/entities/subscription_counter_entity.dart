import 'package:domain/src/_core/_core.dart';

typedef SubscriptionCounterEntities = List<SubscriptionCounterEntity>;

class SubscriptionCounterEntity extends BaseEntity {
  const SubscriptionCounterEntity({
    this.id = emptyString,
    this.label = emptyString,
    this.billingLabel = emptyString,
    this.type = emptyString,
    this.rate = 0,
    this.value = 0,
    this.maximum = 0,
    this.fee = 0,
    this.withLoader = false,
  });

  final String id;
  final String label;
  final String billingLabel;
  final String type;
  final num rate;
  final num value;
  final num maximum;
  final num fee;
  final bool withLoader;

  static const empty = SubscriptionCounterEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        label,
        billingLabel,
        type,
        rate,
        value,
        maximum,
        fee,
        withLoader,
      ];
}

extension SubscriptionCounterEntityExtension on SubscriptionCounterEntity {
  bool get isSuspendedAccountFunds {
    return id.toLowerCase() == 'SUSPENDED_ACCOUNT_FUNDS'.toLowerCase();
  }

  bool get isNonSufficientFunds {
    return id.toLowerCase() == 'NONSUFFICIENT_FUNDS'.toLowerCase();
  }

  bool get isWireTransfer {
    return id.toLowerCase() == 'WIRE_TRANSFER'.toLowerCase();
  }

  bool get isPayment {
    return id.toUpperCase() == 'PAYMENT';
  }

  bool get isTransfer {
    return [
      'MOBILE_MONEY_TRANSFER',
      'MOBILE_MONEY_TRANSFER_CI',
      'MOBILE_MONEY_TRANSFER_SN',
      'WIRE_TRANSFER',
    ].contains(id);
  }

  bool get isTypeSum {
    return type.toLowerCase() == 'sum';
  }
}
