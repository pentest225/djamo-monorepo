import 'package:domain/src/_core/_core.dart';

class ResetCardPinPayload extends BasePayload {
  const ResetCardPinPayload({
    required this.pinCodeResetRequestId,
    required this.newPinCode,
  });

  final String pinCodeResetRequestId;
  final String newPinCode;

  Map<String, dynamic> toJson() {
    return {
      'pinCodeResetRequestId': pinCodeResetRequestId,
      'newPinCode': newPinCode,
    };
  }

  @override
  List<Object?> get props => [
        pinCodeResetRequestId,
        newPinCode,
      ];
}
