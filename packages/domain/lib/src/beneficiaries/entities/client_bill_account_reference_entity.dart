import 'package:domain/src/_core/_core.dart';

typedef ClientBillAccountReferenceEntities = List<ClientBillAccountReferenceEntity>;

/// A map of [ClientBillAccountReferenceEntities] with [String] as key.
/// The key is the [ClientBillAccountReferenceEntity.billerId].
typedef ClientBillAccountReferenceWorkingBook = Map<String, ClientBillAccountReferenceEntities>;

class ClientBillAccountReferenceEntity extends BaseEntity {
  const ClientBillAccountReferenceEntity({
    this.id = emptyString,
    this.billerId = emptyString,
    this.subscriptionReference = emptyString,
    this.isActive = false,
    this.clientId = emptyString,
    this.label = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.deletedAt = emptyString,
  });

  final String id;
  final String billerId;
  final String subscriptionReference;
  final bool isActive;
  final String clientId;
  final String label;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;

  static const empty = ClientBillAccountReferenceEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        billerId,
        subscriptionReference,
        isActive,
        clientId,
        label,
        createdAt,
        updatedAt,
        deletedAt,
      ];
}

extension ClientBillAccountReferenceEntityDomainExtension on ClientBillAccountReferenceEntity {
  String get getFormattedLabel {
    if (label.isEmpty) {
      return subscriptionReference;
    }
    return '$label ($subscriptionReference)';
  }

  bool get isLocal {
    return createdAt.isEmpty;
  }
}
