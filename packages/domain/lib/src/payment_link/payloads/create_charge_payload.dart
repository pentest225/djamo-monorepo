import 'package:domain/src/_core/_core.dart';

class CreateChargePayload extends BasePayload {
  const CreateChargePayload({
    required this.orderId,
    required this.amount,
    required this.country,
  });

  final String orderId;
  final num amount;
  final String country;

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'isDjamoPayment': true,
    };
  }

  @override
  List<Object?> get props => [
        orderId,
        amount,
        country,
      ];
}
