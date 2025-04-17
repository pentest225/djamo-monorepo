import 'package:domain/src/_core/_core.dart';

class CheckPinCodeResetLivenessRequestStatusPayload extends BasePayload {
  const CheckPinCodeResetLivenessRequestStatusPayload({
    required this.pinCodeResetRequestId,
  });

  final String pinCodeResetRequestId;

  Map<String, dynamic> toJson() {
    return {
      'pinCodeResetRequestId': pinCodeResetRequestId,
    };
  }

  @override
  List<Object?> get props => [
        pinCodeResetRequestId,
      ];
}
