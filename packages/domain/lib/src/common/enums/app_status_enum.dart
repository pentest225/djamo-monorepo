enum AppLockStatusEnum {
  unlocked,
  locked;
}

extension AppStatusEnumExtension on AppLockStatusEnum {
  bool get isUnlocked => this == AppLockStatusEnum.unlocked;
  bool get isLocked => this == AppLockStatusEnum.locked;
}
