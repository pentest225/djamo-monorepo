import 'package:domain/src/_core/_core.dart';

class CreatePaymentSubscriptionPayload extends BasePayload {
  const CreatePaymentSubscriptionPayload({
    required this.period,
    required this.transactionReference,
    required this.accountId,
    required this.merchantName,
    required this.amount,
    required this.subscribedAt,
  });

  final String period;
  final String transactionReference;
  final String accountId;
  final String merchantName;
  final int amount;
  final String subscribedAt;

  Map<String, dynamic> toJson() {
    return {
      'period': period,
      'transactionReference': transactionReference,
      'accountId': accountId,
      'merchantName': merchantName,
      'amount': amount,
      'subscribedAt': subscribedAt,
    };
  }

  @override
  List<Object?> get props => [
        period,
        transactionReference,
        accountId,
        merchantName,
        amount,
        subscribedAt,
      ];
}
