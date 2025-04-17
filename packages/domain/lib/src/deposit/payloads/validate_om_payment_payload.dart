import 'package:domain/src/_core/_core.dart';

class ValidateOmPaymentPayload extends BasePayload {
  const ValidateOmPaymentPayload({
    required this.msisdn,
    required this.otp,
    required this.paymentUrl,
    required this.omValidatorUrl,
  });

  final String msisdn;
  final String otp;
  final String paymentUrl;
  final String omValidatorUrl;

  Map<String, dynamic> toJson() {
    return {
      'msisdn': msisdn,
      'code': otp,
      'paymentUrl': paymentUrl,
    };
  }

  @override
  List<Object?> get props => [
        msisdn,
        otp,
        paymentUrl,
        omValidatorUrl,
      ];
}
