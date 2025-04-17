enum EventSubscriptionTypeEnum {
  none._('none'),
  client._('client'),
  broadcast._('broadcast'),
  balance._('balance'),
  ;

  const EventSubscriptionTypeEnum._(this.key);

  factory EventSubscriptionTypeEnum.fromKey(String key) {
    return EventSubscriptionTypeEnum.values.firstWhere(
      (e) => e.key == key,
      orElse: () => EventSubscriptionTypeEnum.none,
    );
  }

  final String key;
}

extension EventSubscriptionTypeEnumExtension on EventSubscriptionTypeEnum {
  bool get isNone => this == EventSubscriptionTypeEnum.none;
  bool get isClient => this == EventSubscriptionTypeEnum.client;
  bool get isBroadcast => this == EventSubscriptionTypeEnum.broadcast;
  bool get isBalance => this == EventSubscriptionTypeEnum.balance;
}
