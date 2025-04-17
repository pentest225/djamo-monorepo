enum BankFeesStrategyTypeEnum {
  undefined,
  freeOfCharge,
  withFees;

  factory BankFeesStrategyTypeEnum.fromString(String value) {
    return BankFeesStrategyTypeEnum.values.firstWhere(
      (e) => e.name == value,
      orElse: () => BankFeesStrategyTypeEnum.undefined,
    );
  }
}

extension BankFeesStrategyTypeEnumExtension on BankFeesStrategyTypeEnum {
  bool get isFreeOfCharge => this == BankFeesStrategyTypeEnum.freeOfCharge;
  bool get isWithFees => this == BankFeesStrategyTypeEnum.withFees;
  bool get isUndefined => this == BankFeesStrategyTypeEnum.undefined;
}
