import 'package:domain/src/_core/_core.dart';

class AddBeneficiaryPayload extends BasePayload {
  const AddBeneficiaryPayload({
    required this.label,
    required this.serviceId,
    required this.recipient,
    required this.iban,
    required this.isFavorite,
    this.id = '',
  });

  final String id;
  final String label;
  final String serviceId;
  final String recipient;
  final String iban;
  final bool isFavorite;

  Map<String, dynamic> toJson() {
    return {
      if (id.isNotEmpty) 'id': id,
      'label': label,
      'serviceId': serviceId,
      'recipient': recipient,
      'iban': iban,
      'isFavorite': isFavorite,
    };
  }

  @override
  List<Object?> get props => [
        id,
        label,
        serviceId,
        recipient,
        iban,
        isFavorite,
      ];
}
