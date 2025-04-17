enum UIPeriodicityEnum {
  daily._('daily'),
  weekly._('weekly'),
  monthly._('monthly'),
  yearly._('yearly'),
  ;

  const UIPeriodicityEnum._(this.key);

  factory UIPeriodicityEnum.fromString(String value) {
    return UIPeriodicityEnum.values.firstWhere(
      (e) => e.key == value,
      orElse: () => UIPeriodicityEnum.daily,
    );
  }

  final String key;

  bool get isDaily => this == UIPeriodicityEnum.daily;
  bool get isWeekly => this == UIPeriodicityEnum.weekly;
  bool get isMonthly => this == UIPeriodicityEnum.monthly;
  bool get isYearly => this == UIPeriodicityEnum.yearly;

  static List<UIPeriodicityEnum> vaults = [
    UIPeriodicityEnum.daily,
    UIPeriodicityEnum.weekly,
    UIPeriodicityEnum.monthly,
  ];
}
