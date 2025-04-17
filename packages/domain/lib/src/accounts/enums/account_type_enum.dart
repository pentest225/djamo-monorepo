typedef AccountTypeEnums = List<AccountTypeEnum>;

enum AccountTypeEnum {
  unknown._('unknown'),
  gtpBGFIPC._('GTP_BGFI_PC'),
  gtpECOBANKPC._('GTP_ECOBANK_PC'),
  gtpECOBANKVC._('GTP_ECOBANK_VC'),
  pendingAccount._('PENDING_ACCOUNT'),
  local._('LOCAL');

  const AccountTypeEnum._(this.identifier);

  factory AccountTypeEnum.fromString(String identifier) {
    return AccountTypeEnum.values.firstWhere(
      (e) => e.identifier == identifier || identifier.startsWith(e.identifier),
      orElse: () => AccountTypeEnum.unknown,
    );
  }

  final String identifier;
}

extension AccountTypeEnumExtension on AccountTypeEnum {
  bool get isUnknown => this == AccountTypeEnum.unknown;
  bool get isGtpBgfiPc => this == AccountTypeEnum.gtpBGFIPC;
  bool get isGtpEcobankPc => this == AccountTypeEnum.gtpECOBANKPC;
  bool get isGtpEcobankVc => this == AccountTypeEnum.gtpECOBANKVC;
  bool get isPendingAccount => this == AccountTypeEnum.pendingAccount;
  bool get isLocal => this == AccountTypeEnum.local;
  bool get isPhysicalCard => isGtpBgfiPc || isGtpEcobankPc;
  bool get isLinkedToPartner {
    return isGtpBgfiPc || isGtpEcobankPc || isGtpEcobankVc;
  }
}
