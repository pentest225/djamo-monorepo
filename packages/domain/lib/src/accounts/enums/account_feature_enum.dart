///
typedef ActiveAccountFeatures = List<AccountFeatureEnum>;

/// The account feature enums.
enum AccountFeatureEnum {
  ///
  mainAccount._(
    name: 'Courant',
    description: 'Compte courant principal',
  ),

  ///
  loanAccount._(
    name: 'Crédit',
    description: 'Crédit pour vos projets',
  ),

  ///
  vaultAccount._(
    name: 'Coffres',
    description: 'Coffres forts pour vos économies',
  ),

  ///
  investAccount._(
    name: 'Investir',
    description: 'Investir dans des actions et des obligations',
  );

  const AccountFeatureEnum._({
    required this.name,
    required this.description,
  });

  ///
  final String name;

  ///
  final String description;

  ///
  bool get isMainAccount {
    return this == AccountFeatureEnum.mainAccount;
  }

  ///
  bool get isVaultAccount {
    return this == AccountFeatureEnum.vaultAccount;
  }

  ///
  static ActiveAccountFeatures mains = [
    AccountFeatureEnum.mainAccount,
    AccountFeatureEnum.investAccount,
    AccountFeatureEnum.loanAccount,
  ];

  String keyName({bool visible = false}) {
    return '$name:visible=$visible';
  }
}

extension AccountFeatureEnumExtension on AccountFeatureEnum {
  static List<AccountFeatureEnum> getMainFeatures({required bool isLoanEnabled}) {
    if (isLoanEnabled) {
      return AccountFeatureEnum.mains.toList();
    } else {
      return AccountFeatureEnum.mains.where((feature) => feature != AccountFeatureEnum.loanAccount).toList();
    }
  }
}
