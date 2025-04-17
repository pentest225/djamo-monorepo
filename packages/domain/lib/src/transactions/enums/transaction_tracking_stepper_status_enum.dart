enum TransactionTrackingStepperStatusEnum {
  notStarted._('notStarted'),
  success._('success'),
  failure._('failure'),
  inProgress._('inProgress');

  const TransactionTrackingStepperStatusEnum._(this.identifier);

  factory TransactionTrackingStepperStatusEnum.fromString(String value) {
    final lowerCaseValue = value.toLowerCase();
    return TransactionTrackingStepperStatusEnum.values.firstWhere(
      (element) => element.identifier == lowerCaseValue,
      orElse: () => TransactionTrackingStepperStatusEnum.notStarted,
    );
  }

  final String identifier;
}

extension TransactionTrackingStepperStatusEnumExtension on TransactionTrackingStepperStatusEnum {
  bool get isNotStarted => this == TransactionTrackingStepperStatusEnum.notStarted;
  bool get isSuccess => this == TransactionTrackingStepperStatusEnum.success;
  bool get isFailure => this == TransactionTrackingStepperStatusEnum.failure;
  bool get isInProgress => this == TransactionTrackingStepperStatusEnum.inProgress;

  bool get isACompletionStep {
    return isSuccess || isFailure;
  }
}
