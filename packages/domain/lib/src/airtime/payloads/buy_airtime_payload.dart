import 'package:domain/src/_core/_core.dart';

class BuyAirtimePayload extends BasePayload {
  const BuyAirtimePayload({
    required this.serviceId,
    required this.receiverE164,
    required this.amount,
  });

  final String serviceId;
  final String receiverE164;
  final double amount;

  Map<String, dynamic> toJson() {
    return {
      'serviceId': serviceId,
      'receiverE164': receiverE164,
      'amount': amount,
    };
  }

  @override
  List<Object?> get props => [
        serviceId,
        receiverE164,
        amount,
      ];
}
