import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class RequestCardPinResetOldPayload extends BasePayload {
  const RequestCardPinResetOldPayload({
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
