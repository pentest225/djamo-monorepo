enum PaymentSubscriptionStopEnum {
  automatic._('auto'),
  manual._('manual');

  const PaymentSubscriptionStopEnum._(this.identifier);

  factory PaymentSubscriptionStopEnum.fromIdentifier(String identifier) {
    return PaymentSubscriptionStopEnum.values.firstWhere(
      (element) => element.identifier == identifier.toLowerCase(),
      orElse: () => throw Exception('PaymentSubscriptionStopEnum not found for $identifier'),
    );
  }

  final String identifier;
}

extension PaymentSubscriptionStopEnumExtension on PaymentSubscriptionStopEnum {
  bool get isAutomatic => this == PaymentSubscriptionStopEnum.automatic;
  bool get isManual => this == PaymentSubscriptionStopEnum.manual;
}
