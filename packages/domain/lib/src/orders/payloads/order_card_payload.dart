import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class OrderCardPayload extends BasePayload {
  const OrderCardPayload({
    required this.deliveryLocationId,
    required this.homeLocationId,
    required this.pickupLocationId,
    required this.deliveryDate,
    required this.deliveryTime,
    required this.reference,
    required this.type,
    required this.productId,
    required this.agentId,
    required this.intercomAgentMsisdn,
  });

  final String deliveryLocationId;
  final String homeLocationId;
  final String pickupLocationId;
  final String deliveryDate;
  final String deliveryTime;
  final String reference;
  final String type;
  final String productId;
  final String agentId;
  final String intercomAgentMsisdn;

  Map<String, dynamic> toJson() {
    return {
      'deliveryLocation': deliveryLocationId.isEmpty ? null : {'id': deliveryLocationId},
      'homeLocation': homeLocationId.isEmpty ? null : {'id': homeLocationId},
      'pickupLocation': pickupLocationId.isEmpty ? null : {'id': pickupLocationId},
      'deliveryDate': deliveryDate.orNull,
      'deliveryTime': deliveryTime,
      'reference': reference.orNull,
      'type': type,
      'pickupLocationId': pickupLocationId.orNull,
      'productId': productId.orNull,
      'deliveryLocationId': deliveryLocationId.orNull,
      'agent': agentId.isEmpty ? null : {'id': agentId},
      'intercomAgentMsisdn': intercomAgentMsisdn.orNull,
    }..removeWhere((k, v) => v == null || v == '');
  }

  @override
  List<Object?> get props => [
        deliveryLocationId,
        homeLocationId,
        pickupLocationId,
        deliveryDate,
        deliveryTime,
        reference,
        type,
        productId,
        agentId,
        intercomAgentMsisdn,
      ];
}
