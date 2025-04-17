import 'package:domain/src/_core/_core.dart';

class ChangeDeliveryOrderToPickupPayload extends BasePayload {
  const ChangeDeliveryOrderToPickupPayload({
    required this.orderId,
    required this.pickUpLocationId,
    required this.type,
  });

  final String orderId;
  final String pickUpLocationId;
  final String type;

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      if (pickUpLocationId.isNotEmpty) 'pickUpLocationId': pickUpLocationId,
      'type': type,
    };
  }

  @override
  List<Object?> get props => [
        orderId,
        pickUpLocationId,
        type,
      ];
}
