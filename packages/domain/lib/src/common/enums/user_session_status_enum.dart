enum UserSessionStatusEnum {
  unactivated,
  activated,
  needToChangePasscode,
  expired;
}

extension UserSessionStatusEnumDomainExtension on UserSessionStatusEnum {
  bool get isUnactivated => this == UserSessionStatusEnum.unactivated;
  bool get isActivated => this == UserSessionStatusEnum.activated;
  bool get isNeedToChangePasscode => this == UserSessionStatusEnum.needToChangePasscode;
  bool get isExpired => this == UserSessionStatusEnum.expired;
}
