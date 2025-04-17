enum TransactionVerificationStatusEnum {
  notStarted(''),
  pending('PENDING'),
  approved('APPROVED'),
  rejected('REJECTED'),
  notSubmited('NOT_SUBMITED');

  const TransactionVerificationStatusEnum(this.identifier);

  factory TransactionVerificationStatusEnum.fromString(String status) {
    final lowerStatusValue = status.trim().toUpperCase();
    return TransactionVerificationStatusEnum.values.firstWhere(
      (element) => element.identifier == lowerStatusValue,
      orElse: () => TransactionVerificationStatusEnum.notStarted,
    );
  }

  final String identifier;
}

extension TransactionVerificationStatusEnumX on TransactionVerificationStatusEnum {
  bool get isNotStarted => this == TransactionVerificationStatusEnum.notStarted;

  bool get isPending => this == TransactionVerificationStatusEnum.pending;

  bool get isApproved => this == TransactionVerificationStatusEnum.approved;

  bool get isRejected => this == TransactionVerificationStatusEnum.rejected;
}
