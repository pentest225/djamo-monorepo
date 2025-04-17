import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class RequestManualPcPasscodeResetPayload extends BasePayload {
  const RequestManualPcPasscodeResetPayload({
    required this.proof,
    required this.phoneNumberId,
  });

  final File proof;
  final String phoneNumberId;

  Map<String, dynamic> toJson() {
    return {
      'phoneNumberId': phoneNumberId,
    };
  }

  @override
  List<Object?> get props => [
        proof,
        phoneNumberId,
      ];
}
