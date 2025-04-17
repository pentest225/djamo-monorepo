enum VaultProductTypeEnum {
  undefined._('undefined'),
  defaultVault._('default'),
  saving._('saving'),
  ;

  const VaultProductTypeEnum._(this.key);

  final String key;

  static const allowed = [
    defaultVault,
    saving,
  ];
}

extension VaultProductTypeEnumExtension on VaultProductTypeEnum {
  bool get isUndefined => this == VaultProductTypeEnum.undefined;
  bool get isDefaultVault => this == VaultProductTypeEnum.defaultVault;
  bool get isSaving => this == VaultProductTypeEnum.saving;
}
