import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class VerifyCardPinResetRequestPayload extends BasePayload {
  const VerifyCardPinResetRequestPayload({
    required this.pinCodeResetRequestId,
    required this.file,
  });

  final String pinCodeResetRequestId;
  final File file;

  Map<String, dynamic> toJson() {
    return {
      'pinCodeResetRequestId': pinCodeResetRequestId,
      'file': file,
    };
  }

  @override
  List<Object?> get props => [
        pinCodeResetRequestId,
        file,
      ];
}
