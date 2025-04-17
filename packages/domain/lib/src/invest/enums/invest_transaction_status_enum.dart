enum InvestTransactionStatusEnum {
  none._('none'),
  initiated._('initiated'),
  pending._('pending'),
  validated._('validated'),
  ;

  const InvestTransactionStatusEnum._(this.status);

  factory InvestTransactionStatusEnum.fromString(String status) {
    return InvestTransactionStatusEnum.values.firstWhere(
      (e) => e.status == status,
      orElse: () => InvestTransactionStatusEnum.none,
    );
  }

  final String status;
}

extension InvestTransactionStatusEnumExtension on InvestTransactionStatusEnum {
  bool get isInitiated => this == InvestTransactionStatusEnum.initiated;
  bool get isPending => [
        InvestTransactionStatusEnum.initiated,
        InvestTransactionStatusEnum.pending,
      ].contains(this);
  bool get isValidated => this == InvestTransactionStatusEnum.validated;
}
