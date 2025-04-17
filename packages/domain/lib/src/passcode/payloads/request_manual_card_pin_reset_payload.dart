import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class RequestManualCardPinResetPayload extends BasePayload {
  const RequestManualCardPinResetPayload({
    required this.proof,
  });

  final File proof;

  Map<String, dynamic> toJson() {
    return {};
  }

  @override
  List<Object?> get props => [
        proof,
      ];
}
