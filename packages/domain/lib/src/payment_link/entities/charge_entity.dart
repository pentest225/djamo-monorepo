import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/payment_link/entities/company_entity.dart';
import 'package:domain/src/payment_link/entities/fees_entity.dart';

class ChargeEntity extends BaseEntity {
  const ChargeEntity({
    this.id = emptyString,
    this.orderId = emptyString,
    this.description = emptyString,
    this.currency = emptyString,
    this.amount = 0,
    this.due = 0,
    this.fees = FeesEntity.empty,
    this.status = emptyString,
    this.droppedReason = emptyString,
    this.paid = 0,
    this.refunded = 0,
    this.attempts = 0,
    this.completedAt = emptyString,
    this.createdAt = emptyString,
    this.company = CompanyEntity.empty,
    this.paymentUrl = emptyString,
  });

  final String id;
  final String orderId;
  final String description;
  final String currency;
  final num amount;
  final num due;
  final FeesEntity fees;
  final String status;
  final String droppedReason;
  final num paid;
  final num refunded;
  final num attempts;
  final String completedAt;
  final String createdAt;
  final CompanyEntity company;
  final String paymentUrl;

  static const empty = ChargeEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        orderId,
        description,
        currency,
        amount,
        due,
        fees,
        status,
        droppedReason,
        paid,
        refunded,
        attempts,
        completedAt,
        createdAt,
        company,
        paymentUrl,
      ];
}

extension ChargeEntityDomainExtension on ChargeEntity {
  String get firstCompanyNameCharacter {
    return company.name.isNotEmpty ? company.name[0] : emptyString;
  }
}
