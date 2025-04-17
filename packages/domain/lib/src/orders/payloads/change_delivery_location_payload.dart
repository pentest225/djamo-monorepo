import 'package:domain/src/_core/_core.dart';

class ChangeDeliveryLocationPayload extends BasePayload {
  const ChangeDeliveryLocationPayload({
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
