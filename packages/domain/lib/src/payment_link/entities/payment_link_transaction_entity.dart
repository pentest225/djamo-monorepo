import 'package:domain/src/_core/_core.dart';

class PaymentLinkTransactionEntity extends BaseEntity {
  const PaymentLinkTransactionEntity({
    this.id = emptyString,
    this.status = emptyString,
    this.amount = 0,
    this.feesAmount = 0,
    this.chargedAmount = 0,
    this.currencyCode = emptyString,
    this.sequence = 0,
    this.error = emptyString,
    this.completedAt = emptyString,
    this.isActive = false,
    this.token = emptyString,
    this.recipientMsisdn = emptyString,
    this.paymentUrl = emptyString,
  });

  final String id;
  final String status;
  final num amount;
  final num feesAmount;
  final num chargedAmount;
  final String currencyCode;
  final num sequence;
  final String error;
  final String completedAt;
  final bool isActive;
  final String token;
  final String recipientMsisdn;
  final String paymentUrl;

  static const empty = PaymentLinkTransactionEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        status,
        amount,
        feesAmount,
        chargedAmount,
        currencyCode,
        sequence,
        error,
        completedAt,
        isActive,
        token,
        recipientMsisdn,
        paymentUrl,
      ];
}

extension PaymentLinkTransactionEntityDomainExtension on PaymentLinkTransactionEntity {}
