enum MarketIsoCodeEnum {
  undefined._('undefined', 'undefined'),
  civ._('CI', 'CIV'),
  sen._('SN', 'SEN');

  const MarketIsoCodeEnum._(this.alpha2, this.alpha3);

  factory MarketIsoCodeEnum.fromCode(String code) {
    final c = code.toUpperCase().trim();
    return MarketIsoCodeEnum.values.firstWhere(
      (i) => i.alpha2 == c || i.alpha3 == c,
      orElse: () => MarketIsoCodeEnum.undefined,
    );
  }

  final String alpha2;
  final String alpha3;

  static const valid = [
    MarketIsoCodeEnum.civ,
    MarketIsoCodeEnum.sen,
  ];
}

extension MarketIsoCodeEnumDomainExtension on MarketIsoCodeEnum {
  bool get isUndefined => this == MarketIsoCodeEnum.undefined;
  bool get isCIV => this == MarketIsoCodeEnum.civ;
  bool get isSEN => this == MarketIsoCodeEnum.sen;

  String get suffix {
    if (isUndefined) MarketIsoCodeEnum.civ.alpha3.toLowerCase();
    return alpha3.toLowerCase();
  }
}
