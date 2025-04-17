enum UpdateOrderReasonEnum {
  changeDeliveryLocation,
  changePickupOrderToDelivery,
  changeDeliveryOrderToPickup;
}

extension UpdateOrderReasonEnumDomainExtension on UpdateOrderReasonEnum {
  bool get isChangeDeliveryLocation => this == UpdateOrderReasonEnum.changeDeliveryLocation;
  bool get isChangePickupOrderToDelivery => this == UpdateOrderReasonEnum.changePickupOrderToDelivery;
  bool get isChangeDeliveryOrderToPickup => this == UpdateOrderReasonEnum.changeDeliveryOrderToPickup;
}
