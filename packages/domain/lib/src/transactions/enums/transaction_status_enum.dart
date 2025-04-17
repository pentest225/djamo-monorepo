enum TransactionStatusEnum {
  completed._('completed'),
  pending._('pending'),
  failed._('failed'),
  frozen._('frozen'),
  unknown._('unknown');

  const TransactionStatusEnum._(this.identifier);

  static TransactionStatusEnum fromIdentifier(String value) {
    return TransactionStatusEnum.values.firstWhere(
      (element) {
        return element.identifier == value.toLowerCase();
      },
      orElse: () => TransactionStatusEnum.unknown,
    );
  }

  final String identifier;
}

extension TransactionStatusEnumExtension on TransactionStatusEnum {
  bool get isCompleted => this == TransactionStatusEnum.completed;
  bool get isPending => this == TransactionStatusEnum.pending;
  bool get isFailed => this == TransactionStatusEnum.failed;
  bool get isFrozen => this == TransactionStatusEnum.frozen;
  bool get isUnknown => this == TransactionStatusEnum.unknown;

  bool get isFailedOrFrozen => isFailed || isFrozen;
}
