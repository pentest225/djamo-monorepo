import 'package:domain/src/_core/_core.dart';

class VerifyCashInCustomPhoneNumberPayload extends BasePayload {
  const VerifyCashInCustomPhoneNumberPayload({
    required this.otp,
    required this.verificationId,
  });

  final String otp;
  final String verificationId;

  Map<String, dynamic> toJson() {
    return {
      'code': otp,
    };
  }

  @override
  List<Object?> get props => [
        otp,
        verificationId,
      ];
}
