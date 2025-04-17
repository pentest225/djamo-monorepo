enum LoanEligibilityCriteriaTypeEnum {
  unknown._internal(''),
  card._internal('card'),
  deposit._internal('deposit');

  factory LoanEligibilityCriteriaTypeEnum(String value) {
    return LoanEligibilityCriteriaTypeEnum.values.firstWhere((type) => type._value == value);
  }
  const LoanEligibilityCriteriaTypeEnum._internal(this._value);
  final String _value;

  String get value => _value;
}

extension LoanEligibilityCriteriaTypeEnumDomainExtension on LoanEligibilityCriteriaTypeEnum {
  bool get isUnknown => this == LoanEligibilityCriteriaTypeEnum.unknown;
  bool get isCard => this == LoanEligibilityCriteriaTypeEnum.card;
  bool get isDeposit => this == LoanEligibilityCriteriaTypeEnum.deposit;
}
