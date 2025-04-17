enum VaultTypeEnum {
  classic._('classic'),
  challenge._('challenge'),
  blocked._('blocked'),
  cashback._('cashback');

  const VaultTypeEnum._(this.key);

  factory VaultTypeEnum.fromString(String type) {
    return switch (type) {
      'classic' => VaultTypeEnum.classic,
      'challenge' => VaultTypeEnum.challenge,
      'blocked' => VaultTypeEnum.blocked,
      'cashback' => VaultTypeEnum.cashback,
      _ => VaultTypeEnum.classic,
    };
  }

  final String key;

  bool get isClassic => this == VaultTypeEnum.classic;
  bool get isChallenge => this == VaultTypeEnum.challenge;
  bool get isBlocked => this == VaultTypeEnum.blocked;
  bool get isCashback => this == VaultTypeEnum.cashback;
}

extension VaultTypeEnumExtension on VaultTypeEnum {}
