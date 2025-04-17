import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class SubmitTransactionProofPayload extends BasePayload {
  const SubmitTransactionProofPayload({
    required this.transactionId,
    required this.file,
  });

  final String transactionId;
  final File file;

  Map<String, dynamic> toJson() {
    return {
      'transactionId': transactionId,
      'file': file,
    };
  }

  @override
  List<Object?> get props => [
        transactionId,
        file,
      ];
}
