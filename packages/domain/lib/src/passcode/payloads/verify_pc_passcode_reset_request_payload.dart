import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class VerifyPcPasscodeResetRequestPayload extends BasePayload {
  const VerifyPcPasscodeResetRequestPayload({
    required this.phoneNumberId,
    required this.passCodeResetRequestId,
    required this.file,
    required this.isRetry,
  });

  final String phoneNumberId;
  final String passCodeResetRequestId;
  final File file;
  final bool isRetry;

  Map<String, dynamic> toJson() {
    return {
      'phoneNumberId': phoneNumberId,
      'passCodeResetRequestId': passCodeResetRequestId,
      'file': file,
      if (isRetry) 'isRetry': isRetry,
    };
  }

  @override
  List<Object?> get props => [
        phoneNumberId,
        passCodeResetRequestId,
        file,
        isRetry,
      ];
}
