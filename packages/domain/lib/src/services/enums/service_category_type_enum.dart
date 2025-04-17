enum ServiceCategoryTypeEnum {
  unknown._('unknown'),
  cashIn._('cashin'),
  transfer._('transfer'),
  bills._('bills'),
  airtime._('airtime'),
  invest._('investment'),
  ;

  const ServiceCategoryTypeEnum._(this.key);

  factory ServiceCategoryTypeEnum.fromString(String category) {
    return ServiceCategoryTypeEnum.values.firstWhere(
      (e) => category.toLowerCase() == e.key,
      orElse: () => ServiceCategoryTypeEnum.unknown,
    );
  }

  final String key;
}

extension ServiceCategoryTypeEnumExtension on ServiceCategoryTypeEnum {
  bool get isUnknown => this == ServiceCategoryTypeEnum.unknown;
  bool get isCashIn => this == ServiceCategoryTypeEnum.cashIn;
  bool get isTransfer => this == ServiceCategoryTypeEnum.transfer;
  bool get isAirtime => this == ServiceCategoryTypeEnum.airtime;
  bool get isInvest => this == ServiceCategoryTypeEnum.invest;
}
