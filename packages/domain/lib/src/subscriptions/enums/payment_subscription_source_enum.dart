enum PaymentSubscriptionSourceEnum {
  automatic._('automatic'),
  manual._('manual'),
  none._('none');

  const PaymentSubscriptionSourceEnum._(this.identifier);

  factory PaymentSubscriptionSourceEnum.fromIdentifier(String identifier) {
    return PaymentSubscriptionSourceEnum.values.firstWhere(
      (element) => element.identifier == identifier.toLowerCase(),
      orElse: () => PaymentSubscriptionSourceEnum.manual,
    );
  }

  final String identifier;
}

extension PaymentSubscriptionSourceEnumExtension on PaymentSubscriptionSourceEnum {
  bool get isAutomatic => this == PaymentSubscriptionSourceEnum.automatic;
  bool get isManual => this == PaymentSubscriptionSourceEnum.manual;
  bool get isNone => this == PaymentSubscriptionSourceEnum.none;
}
