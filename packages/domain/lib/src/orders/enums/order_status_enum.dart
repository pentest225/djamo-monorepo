enum OrderStatusEnum {
  unknown._('UNKNOWN'),
  initiated._('INITIATED'),
  pendingValidation._('PENDING_VALIDATION'),
  pendingDelivery._('PENDING_DELIVERY'),
  pendingPickup._('PENDING_PICKUP'),
  failedValidation._('FAILED_VALIDATION'),
  failedDelivery._('FAILED_DELIVERY'),
  delivered._('DELIVERED'),
  pickedUp._('PICKED_UP'),
  activated._('ACTIVATED');

  const OrderStatusEnum._(this.key);

  factory OrderStatusEnum.fromString(String value) {
    return OrderStatusEnum.values.firstWhere(
      (element) {
        return element.key.toLowerCase() == value.toLowerCase();
      },
      orElse: () {
        return OrderStatusEnum.unknown;
      },
    );
  }

  final String key;
}

extension OrderStatusEnumExtension on OrderStatusEnum {
  bool get isUnknown => this == OrderStatusEnum.unknown;
  bool get isInitiated => this == OrderStatusEnum.initiated;
  bool get isActivated => this == OrderStatusEnum.activated;
  bool get isPendingValidation => this == OrderStatusEnum.pendingValidation;
  bool get isPendingDelivery => this == OrderStatusEnum.pendingDelivery;
  bool get isDelivered => this == OrderStatusEnum.delivered;
  bool get isPickedUp => this == OrderStatusEnum.pickedUp;
  bool get isFailedValidation => this == OrderStatusEnum.failedValidation;
  bool get isFailedDelivery => this == OrderStatusEnum.failedDelivery;

  bool get isFailedStatus {
    return [
      isFailedValidation,
      isPendingDelivery,
    ].contains(true);
  }

  bool get isRetrievedStatus {
    return [
      isDelivered,
      isPickedUp,
    ].contains(true);
  }

  static const completedStatus = [
    OrderStatusEnum.delivered,
    OrderStatusEnum.pickedUp,
  ];
}
