enum BankDepositStepEnum {
  selectBank,
  makeTransfer,
  receiptVerification,
  enterAmount,
  addProof;

  static const wireTransferSteps = [
    BankDepositStepEnum.selectBank,
    BankDepositStepEnum.makeTransfer,
    BankDepositStepEnum.enterAmount,
    BankDepositStepEnum.addProof,
  ];

  static const cashDepositSteps = [
    BankDepositStepEnum.selectBank,
    BankDepositStepEnum.receiptVerification,
    BankDepositStepEnum.enterAmount,
    BankDepositStepEnum.addProof,
  ];
}

extension BankWireTransferDepositStepEnumDomainExtension on BankDepositStepEnum {
  bool get isSelectBank => this == BankDepositStepEnum.selectBank;
  bool get isMakeTransfer => this == BankDepositStepEnum.makeTransfer;
  bool get isReceiptVerification => this == BankDepositStepEnum.receiptVerification;
  bool get isEnterAmount => this == BankDepositStepEnum.enterAmount;
  bool get isAddProof => this == BankDepositStepEnum.addProof;
}
