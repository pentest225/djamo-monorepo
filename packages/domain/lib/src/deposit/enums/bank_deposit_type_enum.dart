enum BankDepositTypeEnum {
  unknown._('unknown'),
  wireTransfer._('wireTransfer'),
  cash._('cash');

  const BankDepositTypeEnum._(this.key);
  //fromString
  factory BankDepositTypeEnum.fromString(String value) => values.firstWhere(
        (e) => e.key == value,
        orElse: () => BankDepositTypeEnum.wireTransfer,
      );

  final String key;
}

extension BankDepositTypeEnumExtension on BankDepositTypeEnum {
  bool get isWireTransfer => this == BankDepositTypeEnum.wireTransfer;
  bool get isCash => this == BankDepositTypeEnum.cash;
}
