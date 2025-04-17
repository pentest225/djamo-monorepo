enum PaymentSubscriptionFrequencyEnum {
  weekly._('weekly'),
  monthly._('monthly'),
  annually._('annually'),
  semestral._('semestral'),
  quarterly._('quarterly'),
  none._('none');

  const PaymentSubscriptionFrequencyEnum._(this.key);

  final String key;

  static const allowedValues = [
    PaymentSubscriptionFrequencyEnum.monthly,
    PaymentSubscriptionFrequencyEnum.quarterly,
    PaymentSubscriptionFrequencyEnum.semestral,
    PaymentSubscriptionFrequencyEnum.annually,
  ];
}

extension PaymentSubscriptionFrequencyEnumExtension on PaymentSubscriptionFrequencyEnum {
  bool get isNone => this == PaymentSubscriptionFrequencyEnum.none;
}
