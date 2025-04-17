enum QrCodeTypeEnum {
  unknown,
  user,
  paymentLink;
}

extension QrCodeTypeEnumDomainExtension on QrCodeTypeEnum {
  bool get isUnknown => this == QrCodeTypeEnum.unknown;
  bool get isUser => this == QrCodeTypeEnum.user;
  bool get isPaymentLink => this == QrCodeTypeEnum.paymentLink;
}
