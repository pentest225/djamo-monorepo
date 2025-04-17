// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:domain/src/_core/_core.dart';

class DeleteClientBillAccountReferencePayload extends BasePayload {
  const DeleteClientBillAccountReferencePayload({
    required this.reference,
  });

  final String reference;

  Map<String, dynamic> toJson() {
    return {
      'reference': reference,
    };
  }

  @override
  List<Object?> get props => [
        reference,
      ];
}
