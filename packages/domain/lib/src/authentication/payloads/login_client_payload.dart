import 'package:domain/src/_core/_core.dart';

class LoginClientPayload extends BasePayload {
  const LoginClientPayload({
    required this.deviceUniqueIdentifier,
    required this.phoneNumberId,
    required this.passcode,
  });

  final String deviceUniqueIdentifier;
  final String phoneNumberId;
  final String passcode;

  Map<String, dynamic> toJson() {
    return {
      'deviceUniqueIdentifier': deviceUniqueIdentifier,
      'phoneNumberId': phoneNumberId,
      'passcode': passcode,
    };
  }

  @override
  List<Object?> get props => [
        deviceUniqueIdentifier,
        phoneNumberId,
        passcode,
      ];
}
