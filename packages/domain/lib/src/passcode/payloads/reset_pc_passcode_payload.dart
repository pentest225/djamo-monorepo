import 'package:domain/src/_core/_core.dart';

class ResetPcPasscodePayload extends BasePayload {
  const ResetPcPasscodePayload({
    required this.passCode,
    required this.phoneNumberId,
    required this.passCodeResetId,
  });

  final String passCode;
  final String phoneNumberId;
  final String passCodeResetId;

  Map<String, dynamic> toJson() {
    return {
      'passCode': passCode,
      'phoneNumberId': phoneNumberId,
      'passCodeResetId': passCodeResetId,
    };
  }

  @override
  List<Object?> get props => [
        passCode,
        phoneNumberId,
        passCodeResetId,
      ];
}
