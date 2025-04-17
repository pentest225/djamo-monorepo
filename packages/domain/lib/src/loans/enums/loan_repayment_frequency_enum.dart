enum LoanRepaymentFrequencyEnum {
  unknown._(''),
  months._('months'),
  years._('years'),
  days._('days');

  const LoanRepaymentFrequencyEnum._(this.identifier);

  factory LoanRepaymentFrequencyEnum.fromIdentifier(String identifier) => _values[identifier] ?? LoanRepaymentFrequencyEnum.unknown;

  final String identifier;

  static Map<String, LoanRepaymentFrequencyEnum> _values = {
    LoanRepaymentFrequencyEnum.months.identifier: LoanRepaymentFrequencyEnum.months,
    LoanRepaymentFrequencyEnum.years.identifier: LoanRepaymentFrequencyEnum.years,
    LoanRepaymentFrequencyEnum.days.identifier: LoanRepaymentFrequencyEnum.days,
  };
}

extension LoanRepaymentFrequencyEnumDomainExtension on LoanRepaymentFrequencyEnum {
  bool get isUnknown => this == LoanRepaymentFrequencyEnum.unknown;

  bool get isMonths => this == LoanRepaymentFrequencyEnum.months;

  bool get isYears => this == LoanRepaymentFrequencyEnum.years;

  bool get isDays => this == LoanRepaymentFrequencyEnum.days;
}
