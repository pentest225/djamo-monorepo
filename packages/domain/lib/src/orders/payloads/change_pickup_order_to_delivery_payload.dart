import 'package:domain/src/_core/_core.dart';

class ChangePickupOrderToDeliveryPayload extends BasePayload {
  const ChangePickupOrderToDeliveryPayload({
    required this.orderId,
    required this.deliveryLocationId,
    required this.reference,
  });

  final String orderId;
  final String deliveryLocationId;
  final String reference;

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'deliveryLocationId': deliveryLocationId,
      'reference': reference,
    };
  }

  @override
  List<Object?> get props => [
        orderId,
        deliveryLocationId,
        reference,
      ];
}
