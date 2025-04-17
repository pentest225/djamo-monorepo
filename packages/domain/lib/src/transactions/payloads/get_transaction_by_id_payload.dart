import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class GetTransactionByIdPayload extends BasePayload {
  const GetTransactionByIdPayload({
    required String id,
    required this.reference,
  }) : _id = id;

  factory GetTransactionByIdPayload.id(String id) {
    return GetTransactionByIdPayload(id: id, reference: '');
  }

  factory GetTransactionByIdPayload.reference(String reference) {
    return GetTransactionByIdPayload(id: '', reference: reference);
  }

  final String _id;
  final String reference;

  String get id => _id.orNull ?? reference;

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'reference': reference,
    };
  }

  @override
  List<Object?> get props => [
        _id,
        reference,
      ];
}
