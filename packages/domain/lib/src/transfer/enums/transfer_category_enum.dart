enum TransferCategoryEnum {
  undefined,
  momo,
  bank,
  p2p;
}

extension TransferCategoryEnumExtension on TransferCategoryEnum {
  bool get isUndefined => this == TransferCategoryEnum.undefined;
  bool get isMomo => this == TransferCategoryEnum.momo;
  bool get isBank => this == TransferCategoryEnum.bank;
  bool get isP2P => this == TransferCategoryEnum.p2p;
}
