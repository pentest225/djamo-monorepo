enum LoanInterestRateFrequencyEnum {
  unknown._(''),
  months._('months'),
  years._('years');

  const LoanInterestRateFrequencyEnum._(this.identifier);

  factory LoanInterestRateFrequencyEnum.fromIdentifier(String identifier) => _identifiers[identifier] ?? LoanInterestRateFrequencyEnum.unknown;

  final String identifier;

  static Map<String, LoanInterestRateFrequencyEnum> _identifiers = {
    LoanInterestRateFrequencyEnum.months.identifier: LoanInterestRateFrequencyEnum.months,
    LoanInterestRateFrequencyEnum.years.identifier: LoanInterestRateFrequencyEnum.years,
  };
}
