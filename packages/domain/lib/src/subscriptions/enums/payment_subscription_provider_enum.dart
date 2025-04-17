enum PaymentSubscriptionProviderEnum {
  internal._('internal'),
  vsm._('vsm');

  const PaymentSubscriptionProviderEnum._(this.identifier);

  factory PaymentSubscriptionProviderEnum.fromIdentifier(String identifier) {
    return PaymentSubscriptionProviderEnum.values.firstWhere(
      (element) => element.identifier == identifier.toLowerCase(),
      orElse: () => throw Exception('PaymentSubscriptionProviderEnum not found for $identifier'),
    );
  }

  final String identifier;
}

extension PaymentSubscriptionProviderEnumExtension on PaymentSubscriptionProviderEnum {
  bool get isInternal => this == PaymentSubscriptionProviderEnum.internal;
  bool get isVSM => this == PaymentSubscriptionProviderEnum.vsm;
}
