enum TransactionCategoryIdentifierEnum {
  familyAndFriends._('FAMILY_AND_FRIENDS'),
  food._('FOOD'),
  entertainment._('ENTERTAINMENTS'),
  home._('HOME'),
  bills._('BILLS'),
  shopping._('SHOPPING'),
  business._('BUSINESS'),
  subscriptions._('SUBSCRIPTIONS'),
  transport._('TRANSPORT'),
  betting._('BETTING'),
  trips._('TRIPS'),
  healthAndBeauty._('HEALTH_AND_BEAUTY'),
  cash._('CASH'),
  others._('OTHERS');

  const TransactionCategoryIdentifierEnum._(this.identifier);

  factory TransactionCategoryIdentifierEnum.fromIdentifier(String identifier) {
    return TransactionCategoryIdentifierEnum.values.firstWhere(
      (element) => element.name.toLowerCase() == identifier.toLowerCase(),
      orElse: () => TransactionCategoryIdentifierEnum.others,
    );
  }

  factory TransactionCategoryIdentifierEnum.fromName(String name) {
    return switch (name) {
      'Famille et amis' => TransactionCategoryIdentifierEnum.familyAndFriends,
      'Divertissements' => TransactionCategoryIdentifierEnum.entertainment,
      'Maison' => TransactionCategoryIdentifierEnum.home,
      'Factures' => TransactionCategoryIdentifierEnum.bills,
      'Santé et beauté' => TransactionCategoryIdentifierEnum.healthAndBeauty,
      'Restauration' => TransactionCategoryIdentifierEnum.food,
      'Shopping' => TransactionCategoryIdentifierEnum.shopping,
      'Voyages' => TransactionCategoryIdentifierEnum.trips,
      'Dépenses cash' => TransactionCategoryIdentifierEnum.cash,
      'Transport' => TransactionCategoryIdentifierEnum.transport,
      'Paris en ligne' => TransactionCategoryIdentifierEnum.betting,
      'Abonnements' => TransactionCategoryIdentifierEnum.subscriptions,
      _ => TransactionCategoryIdentifierEnum.others,
    };
  }

  final String identifier;

  String get name => identifier;
}

extension TransactionCategoryEnumExtension on TransactionCategoryIdentifierEnum {
  bool get isFamilyAndFriends => this == TransactionCategoryIdentifierEnum.familyAndFriends;
  bool get isFood => this == TransactionCategoryIdentifierEnum.food;
  bool get isEntertainment => this == TransactionCategoryIdentifierEnum.entertainment;
  bool get isBills => this == TransactionCategoryIdentifierEnum.bills;
  bool get isShopping => this == TransactionCategoryIdentifierEnum.shopping;
  bool get isBusiness => this == TransactionCategoryIdentifierEnum.business;
  bool get isSubscriptions => this == TransactionCategoryIdentifierEnum.subscriptions;
  bool get isTransport => this == TransactionCategoryIdentifierEnum.transport;
  bool get isBetting => this == TransactionCategoryIdentifierEnum.betting;
  bool get isTrips => this == TransactionCategoryIdentifierEnum.trips;
  bool get isOthers => this == TransactionCategoryIdentifierEnum.others;
}
