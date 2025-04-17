enum RecurrentSubscriptionStatusEnum {
  unknown._('unknown'),
  activated._('activated'),
  paused._('paused'),
  ;

  const RecurrentSubscriptionStatusEnum._(this.identifier);

  factory RecurrentSubscriptionStatusEnum.fromIdentifier(String identifier) {
    return values.firstWhere(
      (e) => e.identifier == identifier,
      orElse: () => RecurrentSubscriptionStatusEnum.unknown,
    );
  }

  final String identifier;
}

extension RecurrentSubscriptionStatusEnumDomainExtension on RecurrentSubscriptionStatusEnum {
  bool get isUnknown => this == RecurrentSubscriptionStatusEnum.unknown;
  bool get isActivated => this == RecurrentSubscriptionStatusEnum.activated;
  bool get isPaused => this == RecurrentSubscriptionStatusEnum.paused;
}
