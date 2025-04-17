enum AccountCategoryEnum {
  undefined._('undefined'),
  debt._('debt'),
  vault._('vault'),
  primary._('primary'),
  pending._('pending'),
  loan._('loan'),
  ;

  const AccountCategoryEnum._(this.identifier);

  factory AccountCategoryEnum.fromIdentifier(String type) {
    return switch (type) {
      'debt' => AccountCategoryEnum.debt,
      'vault' => AccountCategoryEnum.vault,
      'primary' => AccountCategoryEnum.primary,
      'pending' => AccountCategoryEnum.pending,
      'loan' => AccountCategoryEnum.loan,
      _ => AccountCategoryEnum.undefined,
    };
  }

  final String identifier;
}

extension AccountCategoryEnumExtension on AccountCategoryEnum {
  bool get isDebt => this == AccountCategoryEnum.debt;
  bool get isVault => this == AccountCategoryEnum.vault;
  bool get isPrimary => this == AccountCategoryEnum.primary;
  bool get isPending => this == AccountCategoryEnum.pending;
  bool get isLoan => this == AccountCategoryEnum.loan;
  bool get isUndefined => this == AccountCategoryEnum.undefined;
}
