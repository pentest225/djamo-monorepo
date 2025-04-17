import 'package:domain/src/_core/_core.dart';

class CheckPCPasscodeResetLivenessRequestStatusPayload extends BasePayload {
  const CheckPCPasscodeResetLivenessRequestStatusPayload({
    required this.passCodeResetRequestId,
  });

  final String passCodeResetRequestId;

  Map<String, dynamic> toJson() {
    return {
      'passCodeResetRequestId': passCodeResetRequestId,
    };
  }

  @override
  List<Object?> get props => [
        passCodeResetRequestId,
      ];
}
