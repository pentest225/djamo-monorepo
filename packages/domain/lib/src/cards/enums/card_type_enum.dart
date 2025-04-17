enum CardTypeEnum {
  physical,
  virtual;
}

extension CardTypeEnumDomainExtension on CardTypeEnum {
  bool get isPhysical => this == CardTypeEnum.physical;
  bool get isVirtual => this == CardTypeEnum.virtual;
}
