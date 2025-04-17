enum UITransactionStatusEnum {
  completed._('completed'),
  failed._('failed'),
  frozen._('frozen'),
  pending._('pending'),
  ;

  const UITransactionStatusEnum._(this.identifier);

  final String identifier;

  bool get isCompleted => this == UITransactionStatusEnum.completed;
  bool get isFailed => this == UITransactionStatusEnum.failed;
  bool get isFrozen => this == UITransactionStatusEnum.frozen;
  bool get isPending => this == UITransactionStatusEnum.pending;
  bool get isFailedOrFrozen => isFailed || isFrozen;
}
