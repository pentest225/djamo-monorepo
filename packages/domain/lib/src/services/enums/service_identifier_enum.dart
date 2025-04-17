enum ServiceIdentifierEnum {
  unknown._('UNKNOWN'),
  //
  loanDisbursement._('LOAN_DISBURSEMENT'),
  loanRepayment._('LOAN_REPAYMENT'),
  //
  cashInOrange._('CASHIN_ORANGE'),
  cashInWireTransfer._('CASHIN_WIRE_TRANSFER'),

  /// This is a legacy service but kept for retro compatibility
  /// https://djamo.slack.com/archives/C04PH5M65ST/p1741078669223699?thread_ts=1741077840.421889&cid=C04PH5M65ST
  cashInDepositMtn._('CASHIN_DEPOSIT_MTN'),
  cashInMtn._('CASHIN_MTN'),
  cashInCard._('CASHIN_CARD'),
  cashInBankCashDeposit._('CASHIN_DEPOSIT'),
  cashInRevolut._('CASHIN_REVOLUT'),
  cashInAgent._('CASHIN_AGENT'),
  cashInWave._('CASHIN_WAVE'),
  cashInMoov._('CASHIN_MOOV'),
  cashInFree._('CASHIN_FREE'),
  //
  cashInIban._('ACCOUNT_NUMBER'),
  transferWave._('TRANSFER_WAVE'),
  transferMtn._('TRANSFER_MTN'),
  transferOrange._('TRANSFER_ORANGE'),
  bankTransfer._('BANK_TRANSFER'),
  transferDjamo._('TRANSFER_DJAMO'),
  transferMoov._('TRANSFER_MOOV'),
  transferFree._('TRANSFER_FREE'),
  //
  transferVault._('TRANSFER_VAULT'),
  vaultTransfer._('VAULT_TRANSFER'),
  interestVault._('INTEREST_VAULT'),
  //
  internationalTransfer._('INTERNATIONAL_TRANSFER'),
  internationalTransferDjamo._('INTERNATIONAL_TRANSFER_DJAMO'),
  //
  airtimeOrange._('AIRTIME_ORANGE'),
  airtimeMtn._('AIRTIME_MTN'),
  airtimeMoov._('AIRTIME_MOOV'),
  airtimeFree._('AIRTIME_FREE'),
  //
  nsiaSelling._('NSIA_SELLING'),
  nsiaSubscription._('NSIA_SUBSCRIPTION'),
  //
  bills._('BILLS'),
  //
  ciePrepaid._('CIE_PREPAID'),
  ciePostpaid._('CIE_POSTPAID'),
  canalPlus._('CANALPLUSS'),
  canalPlusV1._('CANAL+_ECOBANK'),
  fer._('FER'),
  sodeci._('SODECI'),
  woyofal._('WOYOFAL'),
  woyofal2._('BILLS_WOYOFAL'),
  rapido._('RAPIDO'),
  senelec._('SENELEC'),
  seneau._('SENEAU'),
  //
  payment._('PAYMENT'),
  //
  refund._('REFUND'),
  ;

  const ServiceIdentifierEnum._(this.identifier);

  factory ServiceIdentifierEnum.fromString(String identifier) {
    final lowerCasedIdentifier = identifier.toLowerCase();
    final id = ServiceIdentifierEnum.values.firstWhere(
      (e) {
        if (e.isPayment || e.isRefund || e.isBills) {
          return lowerCasedIdentifier.contains(e.identifier.toLowerCase());
        }
        return e.identifier.toLowerCase() == lowerCasedIdentifier;
      },
      orElse: () => ServiceIdentifierEnum.unknown,
    );
    return id;
  }

  final String identifier;

  static bool isAP2PIdentifier(String identifier) {
    return identifier.startsWith(ServiceIdentifierEnum.transferDjamo.identifier) || identifier.startsWith(ServiceIdentifierEnum.internationalTransferDjamo.identifier);
  }
}

extension ServiceIdentifierEnumExtension on ServiceIdentifierEnum {
  bool get isUnknown => this == ServiceIdentifierEnum.unknown;

  bool get isCashInOrange => this == ServiceIdentifierEnum.cashInOrange;

  bool get isCashInWireTransfer => this == ServiceIdentifierEnum.cashInWireTransfer;

  bool get isCashInDepositMtn => this == ServiceIdentifierEnum.cashInDepositMtn;

  bool get isCashInMtn => this == ServiceIdentifierEnum.cashInMtn;

  bool get isCashInCard => this == ServiceIdentifierEnum.cashInCard;

  bool get isBankCashInDeposit => this == ServiceIdentifierEnum.cashInBankCashDeposit;

  bool get isCashInRevolut => this == ServiceIdentifierEnum.cashInRevolut;

  bool get isCashInAgent => this == ServiceIdentifierEnum.cashInAgent;

  bool get isCashInWave => this == ServiceIdentifierEnum.cashInWave;

  bool get isCashInMoov => this == ServiceIdentifierEnum.cashInMoov;

  bool get isCashInFee => this == ServiceIdentifierEnum.cashInFree;

  bool get isTransferWave => this == ServiceIdentifierEnum.transferWave;

  bool get isTransferMtn => this == ServiceIdentifierEnum.transferMtn;

  bool get isTransferOrange => this == ServiceIdentifierEnum.transferOrange;

  bool get isBankTransfer => this == ServiceIdentifierEnum.bankTransfer;

  bool get isLocalP2PTransfer => this == ServiceIdentifierEnum.transferDjamo;

  bool get isTransferMoov => this == ServiceIdentifierEnum.transferMoov;

  bool get isTransferFree => this == ServiceIdentifierEnum.transferFree;

  bool get isAirtimeOrange => this == ServiceIdentifierEnum.airtimeOrange;

  bool get isAirtimeMtn => this == ServiceIdentifierEnum.airtimeMtn;

  bool get isAirtimeMoov => this == ServiceIdentifierEnum.airtimeMoov;

  bool get isAirtimeFree => this == ServiceIdentifierEnum.airtimeFree;

  bool get isNsiaSelling => this == ServiceIdentifierEnum.nsiaSelling;

  bool get isNsiaSubscription => this == ServiceIdentifierEnum.nsiaSubscription;

  bool get isPayment => this == ServiceIdentifierEnum.payment;

  bool get isRefund => this == ServiceIdentifierEnum.refund;

  bool get isBills => this == ServiceIdentifierEnum.bills;

  bool get isLoanDisbursement => this == ServiceIdentifierEnum.loanDisbursement;

  bool get isLoanRepayment => this == ServiceIdentifierEnum.loanRepayment;

  bool get isInternationalP2PTransfer => this == ServiceIdentifierEnum.internationalTransferDjamo;

  /// This methods helps to be sure that the service picked
  /// is used to do a cash in operation
  bool get isCashin => [
        ServiceIdentifierEnum.cashInOrange,
        ServiceIdentifierEnum.cashInWireTransfer,
        ServiceIdentifierEnum.cashInDepositMtn,
        ServiceIdentifierEnum.cashInMtn,
        ServiceIdentifierEnum.cashInBankCashDeposit,
        ServiceIdentifierEnum.cashInRevolut,
        ServiceIdentifierEnum.cashInAgent,
        ServiceIdentifierEnum.cashInWave,
        ServiceIdentifierEnum.cashInFree,
        ServiceIdentifierEnum.cashInMoov,
      ].contains(this);

  bool get cashInCard => [
        ServiceIdentifierEnum.cashInWireTransfer,
        ServiceIdentifierEnum.cashInBankCashDeposit,
      ].contains(this);

  /// This methods helps to know if the service picked is a Mobile Money operator
  bool get isMomoCashIn => [
        ServiceIdentifierEnum.cashInWave,
        ServiceIdentifierEnum.cashInMoov,
        ServiceIdentifierEnum.cashInMtn,
        ServiceIdentifierEnum.cashInOrange,
      ].contains(this);

  /// This methods helps to know if the service picked is a Bank operator
  bool get isBankCashIn => [
        ServiceIdentifierEnum.cashInWireTransfer,
        ServiceIdentifierEnum.cashInCard,
      ].contains(this);

  bool get isPayinWithCash {
    return isCashInAgent || isBankCashInDeposit;
  }

  bool get isCashInFromOutside {
    return isCashInCard || isCashInRevolut;
  }

  bool get isMomoTransfer {
    return isTransferWave || isTransferMoov || isTransferMtn || isTransferOrange || isTransferFree;
  }

  bool get isP2PTransfer {
    return isLocalP2PTransfer || isInternationalP2PTransfer;
  }

  bool get isTransfer => isMomoTransfer || isBankTransfer || isP2PTransfer || isTransferVault || isBankTransfer;

  bool get isAirtime => isAirtimeOrange || isAirtimeMtn || isAirtimeMoov || isAirtimeFree;

  bool get isInvest => isNsiaSelling || isNsiaSubscription;

  //
  bool get isInternationalTransfer => identifier.startsWith('INTERNATIONAL_TRANSFER');

  bool get isCashInIban => identifier.startsWith('ACCOUNT_NUMBER') || identifier.startsWith('IBAN_SERVICE');

  bool get isMainInternationalTransferService => this == ServiceIdentifierEnum.internationalTransfer;

  bool get isCIEPrepaid => this == ServiceIdentifierEnum.ciePrepaid;

  bool get isCIEPostpaid => this == ServiceIdentifierEnum.ciePostpaid;

  bool get isCanalPlus => this == ServiceIdentifierEnum.canalPlus || this == ServiceIdentifierEnum.canalPlusV1;

  bool get isFER => this == ServiceIdentifierEnum.fer;

  bool get isSodeci => this == ServiceIdentifierEnum.sodeci;

  bool get isWoyofal => this == ServiceIdentifierEnum.woyofal || this == ServiceIdentifierEnum.woyofal2;

  bool get isRapido => this == ServiceIdentifierEnum.rapido;

  bool get isSenelec => this == ServiceIdentifierEnum.senelec;

  bool get isSeneau => this == ServiceIdentifierEnum.seneau;

  bool get isBillsService => isBills || isCIEPrepaid || isCIEPostpaid || isCanalPlus || isFER || isSodeci || isWoyofal || isRapido || isSenelec || isSeneau;

  bool get isTransferVault => this == ServiceIdentifierEnum.transferVault;

  bool get isVaultTransfer => this == ServiceIdentifierEnum.vaultTransfer;

  bool get isInterestVault => this == ServiceIdentifierEnum.interestVault;

  bool get isVaultService => isTransferVault || isVaultTransfer || isInterestVault;
}
//CASHIN_ORANGE{Recharging} CASHIN_WIRE_TRANSFER{Bank transfer} CASHIN_DEPOSIT_MTN{Recharging} CASHIN_MTN{Recharging} CASHIN_CARD{Recharging} CASHIN_DEPOSIT{Recharging} CASHIN_REVO{Recharging} CASHIN_AGENT{Recharging} CASHIN_WAVE{Recharging} CASHIN_MOOV{Recharging} TRANSFER_WAVE{Mobile Money} TRANSFER_MTN{Mobile Money} TRANSFER_ORANGE{Mobile Money} TRANSFER_ECOBANK_WIRE{Bank transfer} TRANSFER_DJAMO{Djamo} TRANSFER_MOOV{Mobile Money} AIRTIME_ORANGE{Phone credit} AIRTIME_MTN{Phone credit} AIRTIME_MOOV{Phone credit} NSIA_SELLING{Invest} NSIA_SUBSCRIPTION{Invest}
