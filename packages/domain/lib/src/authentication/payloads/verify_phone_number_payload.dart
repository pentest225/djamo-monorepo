import 'package:equatable/equatable.dart';

class VerifyPhoneNumberPayload extends Equatable {
  const VerifyPhoneNumberPayload({
    required this.otp,
    required this.phoneNumberId,
    this.passcode,
  });

  final String otp;
  final String phoneNumberId;

  /// The passcode to be stored.
  final String? passcode;

  Map<String, dynamic> toJson() {
    return {
      'code': otp,
      'phoneNumber': {'id': phoneNumberId},
    };
  }

  @override
  List<Object?> get props => [
        otp,
        phoneNumberId,
        passcode,
      ];
}
