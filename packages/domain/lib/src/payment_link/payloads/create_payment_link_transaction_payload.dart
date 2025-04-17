import 'package:domain/src/_core/_core.dart';

class CreatePaymentLinkTransactionPayload extends BasePayload {
  const CreatePaymentLinkTransactionPayload({
    required this.chargeId,
    required this.amount,
    required this.recipientMsisdn,
    required this.country,
  });

  final String chargeId;
  final num amount;
  final String recipientMsisdn;
  final String country;

  Map<String, dynamic> toJson() {
    return {
      'chargeId': chargeId,
      'service': 'djamo',
      'amount': amount,
      'recipientMsisdn': recipientMsisdn,
    };
  }

  @override
  List<Object?> get props => [
        chargeId,
        amount,
        recipientMsisdn,
        country,
      ];
}
