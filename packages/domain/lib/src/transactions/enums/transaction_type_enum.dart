enum TransactionTypeEnum {
  undefined('undefined'),
  debit('debit'),
  credit('credit');

  const TransactionTypeEnum(this.key);

  factory TransactionTypeEnum.fromString(String value) => TransactionTypeEnum.values.firstWhere(
        (element) => element.key == value.toLowerCase(),
        orElse: () => TransactionTypeEnum.debit,
      );

  final String key;
}

extension TransactionTypeEnumExtension on TransactionTypeEnum {
  bool get isUndefined => this == TransactionTypeEnum.undefined;
  bool get isDebit => this == TransactionTypeEnum.debit;
  bool get isCredit => this == TransactionTypeEnum.credit;
}
