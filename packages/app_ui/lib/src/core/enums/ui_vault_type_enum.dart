enum UIVaultTypeEnum {
  classic,
  challenge,
  blocked,
  cashback,
  ;

  bool get isClassic => this == UIVaultTypeEnum.classic;
  bool get isChallenge => this == UIVaultTypeEnum.challenge;
  bool get isBlocked => this == UIVaultTypeEnum.blocked;
  bool get isCashback => this == UIVaultTypeEnum.cashback;
}
