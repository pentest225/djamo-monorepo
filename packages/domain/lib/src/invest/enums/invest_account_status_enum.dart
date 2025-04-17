enum InvestAccountStatusEnum {
  undefined._('undefined'),
  pending._('pending'),
  validated._('validated'),
  blocked._('blocked'),
  unCompleted._('Uncompleted');

  const InvestAccountStatusEnum._(this.status);

  factory InvestAccountStatusEnum.fromString(String status) {
    return InvestAccountStatusEnum.values.firstWhere(
      (e) => e.status == status,
      orElse: () => InvestAccountStatusEnum.undefined,
    );
  }

  final String status;
}

extension InvestAccountStatusEnumExtension on InvestAccountStatusEnum {
  bool get isPending => this == InvestAccountStatusEnum.pending;
  bool get isValidated => this == InvestAccountStatusEnum.validated;
  bool get isBlocked => this == InvestAccountStatusEnum.blocked;
  bool get isUnCompleted => this == InvestAccountStatusEnum.unCompleted;
}
