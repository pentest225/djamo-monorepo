import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class UploadBankDepositProofFilePayload extends BasePayload {
  const UploadBankDepositProofFilePayload({
    required this.file,
  });

  final File file;

  Map<String, dynamic> toJson() {
    return {};
  }

  @override
  List<Object?> get props => [
        file,
      ];
}
