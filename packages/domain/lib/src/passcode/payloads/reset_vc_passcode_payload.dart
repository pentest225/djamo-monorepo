import 'package:domain/src/_core/_core.dart';

class ResetVcPasscodePayload extends BasePayload {
  const ResetVcPasscodePayload({
    required this.phoneNumberResetId,
    required this.passcode,
  });

  final String phoneNumberResetId;
  final String passcode;

  Map<String, dynamic> toJson() {
    return {
      'phoneNumberVerificationId': phoneNumberResetId,
      'passCode': passcode,
      'phoneNumberVerification': {'id': phoneNumberResetId},
    };
  }

  @override
  List<Object?> get props => [
        phoneNumberResetId,
        passcode,
      ];
}
