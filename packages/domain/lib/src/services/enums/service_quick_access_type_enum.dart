enum ServiceQuickAccessTypeEnum {
  transfer._('transfer'),
  services._('services'),
  card._('card'),
  iban._('iban'),
  subscriptions._('subscriptions'),
  airtime._('airtime'),
  currency._('currency'),
  business._('business'),
  ;

  const ServiceQuickAccessTypeEnum._(this.key);

  final String key;
}

extension ServiceQuickAccessTypeEnumExtension on ServiceQuickAccessTypeEnum {
  bool get isTransfer => this == ServiceQuickAccessTypeEnum.transfer;
  bool get isServices => this == ServiceQuickAccessTypeEnum.services;
  bool get isCard => this == ServiceQuickAccessTypeEnum.card;
  bool get isIban => this == ServiceQuickAccessTypeEnum.iban;
  bool get isSubscriptions => this == ServiceQuickAccessTypeEnum.subscriptions;
  bool get isAirtime => this == ServiceQuickAccessTypeEnum.airtime;
  bool get isBusiness => this == ServiceQuickAccessTypeEnum.business;
  bool get isCurrency => this == ServiceQuickAccessTypeEnum.currency;
}
