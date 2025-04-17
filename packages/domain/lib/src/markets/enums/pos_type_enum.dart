enum POSTypeEnum {
  undefined._('undefined'),
  pickup._('pickup'),
  deposit._('deposit'),
  both._('both'),
  ;

  const POSTypeEnum._(this.key);

  final String key;

  static List<POSTypeEnum> allowed = [
    POSTypeEnum.deposit,
    POSTypeEnum.pickup,
  ];
}

extension PosTypeEnumExtension on POSTypeEnum {
  bool get isPickup => this == POSTypeEnum.pickup;
  bool get isDeposit => this == POSTypeEnum.deposit;
  bool get isBoth => this == POSTypeEnum.both;
}
