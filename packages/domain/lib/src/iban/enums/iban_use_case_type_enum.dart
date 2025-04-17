enum IbanUseCaseTypeEnum {
  localWireTransfer,
  internationalWireTransfer;
}

extension IbanUseCaseTypeEnumExtension on IbanUseCaseTypeEnum {
  bool get isLocalWireTransfer => this == IbanUseCaseTypeEnum.localWireTransfer;
  bool get isInternationalLocalTransfer => this == IbanUseCaseTypeEnum.internationalWireTransfer;
}
