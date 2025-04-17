enum KYCStatusEnum {
  unknown('unknown'),
  unverified('unverified'),
  awaitingApproval('awaiting_approval'),
  awaitingData('awaiting_data'),
  complete('complete'),
  suspected('suspected'),
  rejected('rejected'),
  ;

  const KYCStatusEnum(this.key);

  factory KYCStatusEnum.fromString(String value) {
    final lowerValue = value.toLowerCase();
    return KYCStatusEnum.values.firstWhere(
      (element) => element.key == lowerValue,
      orElse: () => KYCStatusEnum.unknown,
    );
  }

  final String key;

  bool get isUnknown => this == KYCStatusEnum.unknown;

  bool get isUnverified => this == KYCStatusEnum.unverified;

  bool get isAwaitingApproval => this == KYCStatusEnum.awaitingApproval;

  bool get isAwaitingData => this == KYCStatusEnum.awaitingData;

  bool get isCompleted => this == KYCStatusEnum.complete;

  bool get isSuspected => this == KYCStatusEnum.suspected;

  bool get isRejected => this == KYCStatusEnum.rejected;

  bool get isNonCompletedStatus => [
        KYCStatusEnum.unverified,
        KYCStatusEnum.unknown,
        KYCStatusEnum.awaitingData,
      ].contains(this);

  bool get isNotSubmittedYet {
    return [
      isUnknown,
      isUnverified,
    ].contains(true);
  }
}
