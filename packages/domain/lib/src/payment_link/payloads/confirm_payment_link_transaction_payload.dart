import 'package:domain/src/_core/_core.dart';

class ConfirmPaymentLinkTransactionPayload extends BasePayload {
  const ConfirmPaymentLinkTransactionPayload({
    required this.token,
    required this.transactionId,
    required this.country,
  });

  final String token;
  final String transactionId;
  final String country;

  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }

  @override
  List<Object?> get props => [
        token,
        transactionId,
        country,
      ];
}
