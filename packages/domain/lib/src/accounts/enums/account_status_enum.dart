enum AccountStatusEnum {
  unknown._(''),
  activated._('activated'),
  suspended._('suspended'),
  destroyed._('destroyed');

  const AccountStatusEnum._(this.key);

  factory AccountStatusEnum.fromString(String key) {
    return AccountStatusEnum.values.firstWhere(
      (e) => e.key == key.toLowerCase(),
      orElse: () => AccountStatusEnum.unknown,
    );
  }

  final String key;
}

extension AccountStatusEnumExtension on AccountStatusEnum {
  bool get isUnknown => this == AccountStatusEnum.unknown;
  bool get isActivated => this == AccountStatusEnum.activated;
  bool get isSuspended => this == AccountStatusEnum.suspended;
  bool get isDestroyed => this == AccountStatusEnum.destroyed;
}
