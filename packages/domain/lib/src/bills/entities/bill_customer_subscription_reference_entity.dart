import 'package:domain/src/_core/_core.dart';

typedef BillCustomerSubscriptionReferenceEntities = List<BillCustomerSubscriptionReferenceEntity>;

class BillCustomerSubscriptionReferenceEntity extends BaseEntity {
  const BillCustomerSubscriptionReferenceEntity({
    this.id = emptyString,
    this.billerId = emptyString,
    this.subscriptionReference = emptyString,
    this.isActive = false,
    this.clientId = emptyString,
    this.label = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
  });

  final String id;
  final String billerId;
  final String subscriptionReference;
  final bool isActive;
  final String clientId;
  final String label;
  final String createdAt;
  final String updatedAt;

  static const empty = BillCustomerSubscriptionReferenceEntity();
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
      ];
}

extension BillCustomerSubscriptionReferenceEntityExtension on BillCustomerSubscriptionReferenceEntity {}
