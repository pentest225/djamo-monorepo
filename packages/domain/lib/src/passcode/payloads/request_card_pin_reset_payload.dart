import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class RequestCardPinResetPayload extends BasePayload {
  const RequestCardPinResetPayload({
    required this.selfieWithCardID,
  });

  final File selfieWithCardID;

  Map<String, dynamic> toJson() {
    return {
      'file': selfieWithCardID,
    };
  }

  @override
  List<Object?> get props => [
        selfieWithCardID,
      ];
}
