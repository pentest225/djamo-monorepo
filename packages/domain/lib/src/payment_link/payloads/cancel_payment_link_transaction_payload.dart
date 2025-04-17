import 'package:domain/src/_core/_core.dart';

class CancelPaymentLinkTransactionPayload extends BasePayload {
  const CancelPaymentLinkTransactionPayload({
    required this.token,
    required this.transactionId,
    required this.country,
    required this.declineReason,
  });

  final String token;
  final String transactionId;
  final String country;
  final String declineReason;

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'declineReason': declineReason,
    };
  }

  @override
  List<Object?> get props => [
        token,
        transactionId,
        country,
        declineReason,
      ];
}
