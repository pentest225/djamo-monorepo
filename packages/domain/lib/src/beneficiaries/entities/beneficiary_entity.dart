import 'package:domain/src/_core/_core.dart';

typedef ServiceIdentifier = String;
typedef BeneficiaryEntities = List<BeneficiaryEntity>;
typedef BeneficiaryWorkingBook = Map<ServiceIdentifier, BeneficiaryEntities>;

class BeneficiaryEntity extends BaseEntity {
  const BeneficiaryEntity({
    this.id = emptyString,
    this.clientId = emptyString,
    this.serviceId = emptyString,
    this.label = emptyString,
    this.isFavorite = false,
    this.recipient = emptyString,
    this.iban = emptyString,
  });

  final String id;
  final String clientId;
  final String serviceId;
  final String label;
  final bool isFavorite;
  final String recipient;
  final String iban;
  // custom field
  static const empty = BeneficiaryEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        clientId,
        serviceId,
        label,
        isFavorite,
        recipient,
        iban,
      ];

  bool hasMatchWithSearchKey(String key) {
    final normalizedKey = key.toLowerCase().trim();
    return label.toLowerCase().trim().startsWith(normalizedKey) || label.toLowerCase().trim().contains(normalizedKey);
  }

  BeneficiaryEntity copyWith({
    String? id,
    String? clientId,
    String? serviceId,
    String? label,
    bool? isFavorite,
    String? recipient,
    String? iban,
  }) {
    return BeneficiaryEntity(
      id: id ?? this.id,
      clientId: clientId ?? this.clientId,
      serviceId: serviceId ?? this.serviceId,
      label: label ?? this.label,
      isFavorite: isFavorite ?? this.isFavorite,
      recipient: recipient ?? this.recipient,
      iban: iban ?? this.iban,
    );
  }
}

extension BeneficiaryEntityExtension on BeneficiaryEntity {
  bool get isSelf {
    return ['vous-même', 'moi-même'].any((e) {
      return label.toLowerCase().contains(e);
    });
  }
}
