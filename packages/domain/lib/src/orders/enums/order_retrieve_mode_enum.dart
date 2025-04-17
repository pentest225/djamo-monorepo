enum OrderRetrieveModeEnum {
  undefined._('undefined'),
  pickup._('pickup'),
  delivery._('delivery');

  const OrderRetrieveModeEnum._(this.key);

  factory OrderRetrieveModeEnum.fromString(String value) {
    final lowerCasedValue = value.toLowerCase();
    return OrderRetrieveModeEnum.values.firstWhere(
      (e) => e.key.toLowerCase() == lowerCasedValue,
      orElse: () => OrderRetrieveModeEnum.undefined,
    );
  }

  final String key;

  static List<OrderRetrieveModeEnum> get modes {
    return [
      OrderRetrieveModeEnum.delivery,
      OrderRetrieveModeEnum.pickup,
    ];
  }
}

extension OrderRetrieveModeEnumExtension on OrderRetrieveModeEnum {
  bool get isUndefined => this == OrderRetrieveModeEnum.undefined;
  bool get isPickup => this == OrderRetrieveModeEnum.pickup;
  bool get isDelivery => this == OrderRetrieveModeEnum.delivery;
}
