enum InvestTransactionTypeEnum {
  subscription._('subscription'),
  selling._('selling');

  const InvestTransactionTypeEnum._(this.identifier);

  final String identifier;
}

extension InvestTransactionTypeEnumExtension on InvestTransactionTypeEnum {
  bool get isSubscription => this == InvestTransactionTypeEnum.subscription;
  bool get isSelling => this == InvestTransactionTypeEnum.selling;
}
