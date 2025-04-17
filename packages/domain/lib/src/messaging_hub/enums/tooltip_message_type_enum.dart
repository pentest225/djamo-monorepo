enum TooltipMessageTypeEnum {
  unknown._('unknown'),
  iban._('IBAN'),
  myIban._('MY_IBAN'),
  vault._('VAULT'),
  vaultBlocked._('VAULT_BLOCKED'),
  vaultFeature._('VAULT_FEATURE'),
  challenge._('CHALLENGE'),
  invest._('INVEST'),
  appSharing._('APP_SHARING'),
  appMyCard._('APP_MYCARD'),
  appStatistics._('APP_STATISTICS'),
  appHelper._('APP_HELPER'),
  appProfile._('APP_PROFIL'),
  deposit._('DEPOSIT'),
  yearlyRecap._('YEARLY_RECAP'),
  transfer._('TRANSFER'),
  contactMigration._('CONTACT_MIGRATION'),
  appNotification._('APP_NOTIFICATION'),
  documents._('DOCUMENTS'),
  fxRate._('FX_RATE'),
  buyAirtime._('BUY_AIRTIME'),
  sportGame._('SPORT_GAME'),
  buyBills._('BUY_BILLS'),
  serviceDisabled._('SERVICE_UNAVAILABLE'),
  ;

  const TooltipMessageTypeEnum._(this.identifier);

  factory TooltipMessageTypeEnum.fromIdentifier(String identifier) {
    return TooltipMessageTypeEnum.values.firstWhere(
      (e) {
        return e.identifier == identifier;
      },
      orElse: () => TooltipMessageTypeEnum.unknown,
    );
  }

  final String identifier;
}

extension TooltipMessageTypeEnumDomainExtension on TooltipMessageTypeEnum {
  bool get isRelatedToVaultAccount {
    return [
      TooltipMessageTypeEnum.vault,
      TooltipMessageTypeEnum.challenge,
      TooltipMessageTypeEnum.vaultBlocked,
      TooltipMessageTypeEnum.vaultFeature,
    ].contains(this);
  }

  bool get isUnknown => this == TooltipMessageTypeEnum.unknown;
  bool get isIban => this == TooltipMessageTypeEnum.iban;
  bool get isMyIban => this == TooltipMessageTypeEnum.myIban;
  bool get isVault => this == TooltipMessageTypeEnum.vault;
  bool get isVaultBlocked => this == TooltipMessageTypeEnum.vaultBlocked;
  bool get isVaultFeature => this == TooltipMessageTypeEnum.vaultFeature;
  bool get isChallenge => this == TooltipMessageTypeEnum.challenge;
  bool get isInvest => this == TooltipMessageTypeEnum.invest;
  bool get isAppSharing => this == TooltipMessageTypeEnum.appSharing;
  bool get isAppMyCard => this == TooltipMessageTypeEnum.appMyCard;
  bool get isAppStatistics => this == TooltipMessageTypeEnum.appStatistics;
  bool get isAppHelper => this == TooltipMessageTypeEnum.appHelper;
  bool get isAppProfile => this == TooltipMessageTypeEnum.appProfile;
  bool get isDeposit => this == TooltipMessageTypeEnum.deposit;
  bool get isYearlyRecap => this == TooltipMessageTypeEnum.yearlyRecap;
  bool get isTransfer => this == TooltipMessageTypeEnum.transfer;
  bool get isContactMigration => this == TooltipMessageTypeEnum.contactMigration;
  bool get isAppNotification => this == TooltipMessageTypeEnum.appNotification;
  bool get isDocuments => this == TooltipMessageTypeEnum.documents;
  bool get isFxRate => this == TooltipMessageTypeEnum.fxRate;
  bool get isBuyAirtime => this == TooltipMessageTypeEnum.buyAirtime;
  bool get isSportGame => this == TooltipMessageTypeEnum.sportGame;
  bool get isBuyBills => this == TooltipMessageTypeEnum.buyBills;
  bool get isServiceDisabled => this == TooltipMessageTypeEnum.serviceDisabled;
}
