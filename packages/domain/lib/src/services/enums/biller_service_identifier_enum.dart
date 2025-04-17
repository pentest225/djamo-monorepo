enum BillerServiceIdentifierEnum {
  unknown._('unknown'),
  ciePrepaid._('CIE_PREPAID'),
  ciePostpaid._('CIE_POSTPAID'),
  canalPlus._('CANALPLUSS'),
  fer._('FER'),
  sodeci._('SODECI'),
  woyofal._('WOYOFAL'),
  rapido._('RAPIDO'),
  senelec._('SENELEC'),
  seneau._('SENEAU'),
  ;

  const BillerServiceIdentifierEnum._(this.name);

  factory BillerServiceIdentifierEnum.fromString(String name) {
    return BillerServiceIdentifierEnum.values.firstWhere(
      (e) {
        return e.name == name;
      },
      orElse: () => BillerServiceIdentifierEnum.unknown,
    );
  }

  final String name;
}

extension BillerServiceIdentifierEnumExtension on BillerServiceIdentifierEnum {
  bool get isUnknown => this == BillerServiceIdentifierEnum.unknown;
  bool get isCiePrepaid => this == BillerServiceIdentifierEnum.ciePrepaid;
  bool get isCiePostpaid => this == BillerServiceIdentifierEnum.ciePostpaid;
  bool get isCanalPlus => this == BillerServiceIdentifierEnum.canalPlus;
  bool get isFer => this == BillerServiceIdentifierEnum.fer;
  bool get isSodeci => this == BillerServiceIdentifierEnum.sodeci;
  bool get isWoyofal => this == BillerServiceIdentifierEnum.woyofal;
  bool get isRapido => this == BillerServiceIdentifierEnum.rapido;
  bool get isSenelec => this == BillerServiceIdentifierEnum.senelec;
  bool get isSeneau => this == BillerServiceIdentifierEnum.seneau;
}
