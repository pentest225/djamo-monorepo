enum PaymentSubscriptionCreationStepEnum {
  selectTransactionStep,
  selectFrequencyStep,
}

extension PaymentSubscriptionCreationStepEnumExtension on PaymentSubscriptionCreationStepEnum {
  bool get isTransactionSelectionStep => this == PaymentSubscriptionCreationStepEnum.selectTransactionStep;
  bool get isFrequencySelectionStep => this == PaymentSubscriptionCreationStepEnum.selectFrequencyStep;
  int get totalSteps => PaymentSubscriptionCreationStepEnum.values.length;
}
