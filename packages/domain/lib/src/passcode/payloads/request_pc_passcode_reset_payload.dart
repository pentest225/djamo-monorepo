import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class RequestPcPasscodeResetPayload extends BasePayload {
  const RequestPcPasscodeResetPayload({
    required this.phoneNumberId,
    required this.selfieWithCardID,
  });

  final String phoneNumberId;
  final File selfieWithCardID;

  Map<String, dynamic> toJson() {
    return {
      'phoneNumberId': phoneNumberId,
      'file': selfieWithCardID,
    };
  }

  @override
  List<Object?> get props => [
        phoneNumberId,
        selfieWithCardID,
      ];
}
