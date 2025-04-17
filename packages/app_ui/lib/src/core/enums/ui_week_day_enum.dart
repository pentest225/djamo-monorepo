enum UIWeekDayEnum {
  monday._('monday'),
  tuesday._('tuesday'),
  wednesday._('wednesday'),
  thursday._('thursday'),
  friday._('friday'),
  saturday._('saturday'),
  sunday._('sunday'),
  unknown._('unknown'),
  ;

  const UIWeekDayEnum._(this.key);

  factory UIWeekDayEnum.fromString(String value) {
    return UIWeekDayEnum.values.firstWhere(
      (e) => e.key == value,
      orElse: () => UIWeekDayEnum.unknown,
    );
  }

  bool get isMonday => this == UIWeekDayEnum.monday;
  bool get isTuesday => this == UIWeekDayEnum.tuesday;
  bool get isWednesday => this == UIWeekDayEnum.wednesday;
  bool get isThursday => this == UIWeekDayEnum.thursday;
  bool get isFriday => this == UIWeekDayEnum.friday;
  bool get isSaturday => this == UIWeekDayEnum.saturday;
  bool get isSunday => this == UIWeekDayEnum.sunday;

  final String key;

  static List<UIWeekDayEnum> days = [
    UIWeekDayEnum.monday,
    UIWeekDayEnum.tuesday,
    UIWeekDayEnum.wednesday,
    UIWeekDayEnum.thursday,
    UIWeekDayEnum.friday,
    UIWeekDayEnum.saturday,
    UIWeekDayEnum.sunday,
  ];

  bool get isWeekDay => this != UIWeekDayEnum.unknown;
}
