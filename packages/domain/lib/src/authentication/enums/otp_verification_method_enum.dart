enum OTPVerificationMethodEnum {
  sms._('sms'),
  whatsapp._('whatsapp'),
  ;

  const OTPVerificationMethodEnum._(this.key);

  final String key;

  static List<OTPVerificationMethodEnum> get others => [
        OTPVerificationMethodEnum.whatsapp,
      ];
}

extension OTPVerificationMethodEnumExtension on OTPVerificationMethodEnum {
  bool get isSms => this == OTPVerificationMethodEnum.sms;
  bool get isWhatsapp => this == OTPVerificationMethodEnum.whatsapp;

  String get label {
    return switch (this) {
      OTPVerificationMethodEnum.sms => 'SMS',
      OTPVerificationMethodEnum.whatsapp => 'WhatsApp',
    };
  }
}
