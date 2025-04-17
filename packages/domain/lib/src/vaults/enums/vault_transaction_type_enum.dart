enum VaultTransactionTypeEnum {
  deposit._('deposit'),
  withdrawal._('withdrawal');

  const VaultTransactionTypeEnum._(this.identifier);

  factory VaultTransactionTypeEnum.fromString(String type) {
    return VaultTransactionTypeEnum.values.firstWhere(
      (e) => e.identifier == type,
      orElse: () => VaultTransactionTypeEnum.deposit,
    );
  }

  final String identifier;
}

extension VaultTransactionTypeEnumExtension on VaultTransactionTypeEnum {
  bool get isDeposit => this == VaultTransactionTypeEnum.deposit;
  bool get isWithdrawal => this == VaultTransactionTypeEnum.withdrawal;
}
