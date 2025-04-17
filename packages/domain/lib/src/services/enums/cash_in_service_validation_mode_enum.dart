enum CashInServiceValidationModeEnum {
  auto._('auto'),
  otp._('otp'),
  web._('web'),
  externalApplication._('externalApplication'),
  ;

  const CashInServiceValidationModeEnum._(this.key);

  factory CashInServiceValidationModeEnum.fromString(String key) {
    return CashInServiceValidationModeEnum.values.firstWhere(
      (e) => e.key == key,
      orElse: () => CashInServiceValidationModeEnum.auto,
    );
  }

  final String key;
}

extension CashInServiceValidationTypeEnumExtension on CashInServiceValidationModeEnum {
  bool get isAuto => this == CashInServiceValidationModeEnum.auto;
  bool get isOtp => this == CashInServiceValidationModeEnum.otp;
  bool get isWeb => this == CashInServiceValidationModeEnum.web;
  bool get isExternalApplication => this == CashInServiceValidationModeEnum.externalApplication;
}
