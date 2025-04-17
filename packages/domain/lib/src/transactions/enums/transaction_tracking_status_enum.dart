enum TransactionTrackingStatusEnum {
  initiated._('initiated'),
  dispatched._('dispatched'),
  failed._('failed'),
  unknown._('unknown');

  const TransactionTrackingStatusEnum._(this.identifier);

  final String identifier;

  static TransactionTrackingStatusEnum formString(String value) {
    return TransactionTrackingStatusEnum.values.firstWhere(
      (element) {
        return element.identifier == value.toLowerCase();
      },
      orElse: () => TransactionTrackingStatusEnum.unknown,
    );
  }
}

extension TransferStatusEnumExtension on TransactionTrackingStatusEnum {
  bool get isInitiated => this == TransactionTrackingStatusEnum.initiated;
  bool get isDispatched => this == TransactionTrackingStatusEnum.dispatched;
  bool get isFailed => this == TransactionTrackingStatusEnum.failed;
  bool get isUnknown => this == TransactionTrackingStatusEnum.unknown;
}
