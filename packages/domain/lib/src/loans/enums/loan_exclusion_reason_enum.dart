enum LoanExclusionReasonNameEnum {
  betting._('betting'),
  freeze._('freeze'),
  lowRecommendation._('low_recommendation'),
  optOut._('optout'),
  negativeBalance._('negative_balance'),
  unknown._('unknown');

  const LoanExclusionReasonNameEnum._(this.value);

  final String value;

  bool get isBetting => this == LoanExclusionReasonNameEnum.betting;
  bool get isFreeze => this == LoanExclusionReasonNameEnum.freeze;
  bool get isLowRecommendation => this == LoanExclusionReasonNameEnum.lowRecommendation;
  bool get isOptOut => this == LoanExclusionReasonNameEnum.optOut;
  bool get isNegativeBalance => this == LoanExclusionReasonNameEnum.negativeBalance;
  bool get isUnknown => this == LoanExclusionReasonNameEnum.unknown;
}
