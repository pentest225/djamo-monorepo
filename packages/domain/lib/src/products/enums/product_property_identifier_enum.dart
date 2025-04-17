enum ProductPropertyIdentifierEnum {
  undefined._('UNDEFINED'),
  payment._('PAYMENT'),
  cashInLimit._('CASHIN_LIMIT'),
  domesticWithdrawal._('DOMESTIC_WITHDRAWAL'),
  djamoTransfer._('DJAMO_TRANSFER'),
  pinCodeChange._('PINCODE_CHANGE'),
  momoTransfer._('MOBILE_MONEY_TRANSFER'),
  wireTransfer._('WIRE_TRANSFER'),
  nsf._('NONSUFFICIENT_FUNDS'),
  suspendedAccountFunds._('SUSPENDED_ACCOUNT_FUNDS'),
  support._('SUPPORT'),
  momoTransferSum._('MOBILE_MONEY_TRANSFER_SUM'),
  refundedNSFCount._('REFUNDED_NSF_COUNT');

  const ProductPropertyIdentifierEnum._(this.identifier);

  factory ProductPropertyIdentifierEnum.fromIdentifier(String identifier) {
    return ProductPropertyIdentifierEnum.values.firstWhere(
      (e) => e.identifier == identifier,
      orElse: () => ProductPropertyIdentifierEnum.undefined,
    );
  }

  final String identifier;

  static const onlyPremium = [
    ProductPropertyIdentifierEnum.payment,
  ];
}

extension ProductPropertyIdentifierEnumDomainExtension on ProductPropertyIdentifierEnum {
  bool get isUndefined => this == ProductPropertyIdentifierEnum.undefined;
  bool get isPayment => this == ProductPropertyIdentifierEnum.payment;
  bool get isCashInLimit => this == ProductPropertyIdentifierEnum.cashInLimit;
  bool get isDomesticWithdrawal => this == ProductPropertyIdentifierEnum.domesticWithdrawal;
  bool get isDjamoTransfer => this == ProductPropertyIdentifierEnum.djamoTransfer;
  bool get isPinCodeChange => this == ProductPropertyIdentifierEnum.pinCodeChange;
  bool get isMomoTransfer => this == ProductPropertyIdentifierEnum.momoTransfer;
  bool get isWireTransfer => this == ProductPropertyIdentifierEnum.wireTransfer;
  bool get isNsf => this == ProductPropertyIdentifierEnum.nsf;
  bool get isSuspendedAccountFunds => this == ProductPropertyIdentifierEnum.suspendedAccountFunds;
  bool get isSupport => this == ProductPropertyIdentifierEnum.support;
  bool get isMomoTransferSum => this == ProductPropertyIdentifierEnum.momoTransferSum;
  bool get isRefundedNSFCount => this == ProductPropertyIdentifierEnum.refundedNSFCount;
}
