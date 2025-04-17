enum EventTypeEnum {
  unknown._('unknown'),
  /*REMOTE*/
  accountListUpdated._('AccountListUpdated!'),
  serviceListUpdated._('ServiceListUpdated!'),
  kycUpdated._('KycUpdated!'),
  orderListUpdated._('OrderListUpdated!'),
  accountTransactionListUpdated._('AccountTransactionListUpdated!'),
  accountBalanceRefreshed._('AccountBalanceRefreshed!'),
  // Local event only
  accountBalanceUpdated._('AccountBalanceUpdated!'),

  ibanNotCreated._('IbanNotCreated!'),
  transactionUpdated._('TransactionUpdated!'),
  tooltipSaved._('TooltipSaved!'),
  ibanCreated._('IbanCreated!'),
  settingListUpdated._('SettingListUpdated!'),
  passUsed._('PassUsed!'),
  //INVEST
  investAccountCreated._('AccountCreated!'),
  investAccountCreationPending._('AccountCreationPending!'),
  investAccountCreationUncompleted._('AccountCreationUncompleted!'),
  investAccountBlocked._('AccountBlocked!'),
  investSubscriptionInitiated._('SubscriptionInitiated!'),
  investSubscriptionPaid._('SubscriptionPaid!'),
  investSubscriptionValidated._('SubscriptionValidated!'),
  investSubscriptionFailed._('SubscriptionFailed!'),
  investSellingCreationInitiated._('SellingCreationInitiated!'),
  investSellingCreated._('SellingCreated!'),
  // INVEST LOCAL
  investCreateRecurringSubscriptionFailed._('CreateRecurringSubscriptionFailed!'),
  investUpdateRecurringSubscriptionFailed._('UpdateRecurringSubscriptionFailed!'),
  //CARD PIN
  updateAccountExternalPinCodeResetRequestFailed._('UpadteAccountExternalPinCodeResetRequestFailed!'),
  updateAccountExternalPinCodeResetRequestSucceed._('UpadteAccountExternalPinCodeResetRequestSucceed!'),
  //PC PASS CODE
  passCodeResetRequestSucceed._('PassCodeResetRequestSucceed!'),
  passCodeResetRequestFailed._('PassCodeResetRequestFailed!'),
  //CREDIT
  loanDisbursed._('LoanDisbursed!'),
  loanApproved._('LoanApproved!'),
  loanRepaid._('LoanRepaid!'),
  loanPaid._('LoanPaid!'),
  loanOfferCreated._('OfferCreated!'),
  loanOfferUpdated._('OfferUpdated!'),
  loanUpdated._('LoanUpdated!'),
  //ONBOARDING
  emailVerificationSuccess._('EmailVerificationSuccess!'),

  /*LOCAL*/
  investAccountUpdated._('AccountUpdated!'),
  showVcDetail._('showVcDetail!'),
  subscriptionFailed._('subscriptionFailed!'),
  vaultListUpdated._('vaultListUpdated!'),
  vaultCreated._('VaultCreated!'),
  vaultDeleted._('VaultDeleted!'),
  shareReferralCode._('shareReferralCode!'),
  refreshJwt._('refreshJwt!'),
  passActivatedAndVCCreated._('passActivatedAndVCCreated!'),
  askRefreshSessionOnLocalAuth._('askRefreshSessionOnLocalAuth!'),
  internetConnectionDown._('internetConnectionDown!'),
  openCashVault._('openCashVault!'),
  triggerHomeOnInitMethod._('triggerHomeOnInitMethod!'),
  triggerHomeRefresh._('triggerHomeRefresh!'),
  showChangeAvatarModal._('showChangeAvatarModal!'),
  refreshMonthlyCategoryStats._('refreshMonthlyCategoryStats!'),

  triggerMainAccountRefreshCallback._('triggerMainAccountRefreshCallback!'),
  triggerLoanAccountRefreshCallback._('triggerLoanAccountRefreshCallback!'),
  triggerVaultAccountRefreshCallback._('triggerVaultAccountRefreshCallback!'),
  triggerInvestAccountRefreshCallback._('triggerVaultAccountRefreshCallback!'),
  onSenFallbackToCreateVirtualCardAndRedirect._('onSenFallbackToCreateVirtualCardAndRedirect!'),

  //CASHOUT
  clientSecretGenerated._('ClientSecretGenerated!'),
  ;

  const EventTypeEnum._(this.key);

  factory EventTypeEnum.fromKey(String key) {
    return EventTypeEnum.values.firstWhere(
      (e) {
        return e.key == key;
      },
      orElse: () => EventTypeEnum.unknown,
    );
  }

  final String key;
}

extension EventTypeEnumExtension on EventTypeEnum {
  bool get isUnknown => this == EventTypeEnum.unknown;
  bool get isAccountListUpdated => this == EventTypeEnum.accountListUpdated;
  bool get isServiceListUpdated => this == EventTypeEnum.serviceListUpdated;
  bool get isKycUpdated => this == EventTypeEnum.kycUpdated;
  bool get isOrderListUpdated => this == EventTypeEnum.orderListUpdated;
  bool get isAccountTransactionListUpdated => this == EventTypeEnum.accountTransactionListUpdated;
  bool get isAccountBalanceRefreshed => this == EventTypeEnum.accountBalanceRefreshed;
  bool get isAccountBalanceUpdated => this == EventTypeEnum.accountBalanceUpdated;
  bool get isIbanNotCreated => this == EventTypeEnum.ibanNotCreated;
  bool get isTransactionUpdated => this == EventTypeEnum.transactionUpdated;
  bool get isTooltipSaved => this == EventTypeEnum.tooltipSaved;
  bool get isIbanCreated => this == EventTypeEnum.ibanCreated;
  bool get isSettingListUpdated => this == EventTypeEnum.settingListUpdated;
  bool get isPassUsed => this == EventTypeEnum.passUsed;
  bool get isInvestAccountCreated => this == EventTypeEnum.investAccountCreated;
  bool get isInvestAccountCreationPending => this == EventTypeEnum.investAccountCreationPending;
  bool get isInvestAccountCreationUncompleted => this == EventTypeEnum.investAccountCreationUncompleted;
  bool get isInvestAccountBlocked => this == EventTypeEnum.investAccountBlocked;
  bool get isInvestSubscriptionInitiated => this == EventTypeEnum.investSubscriptionInitiated;
  bool get isInvestSubscriptionPaid => this == EventTypeEnum.investSubscriptionPaid;
  bool get isInvestSubscriptionValidated => this == EventTypeEnum.investSubscriptionValidated;
  bool get isInvestSubscriptionFailed => this == EventTypeEnum.investSubscriptionFailed;
  bool get isInvestSellingCreationInitiated => this == EventTypeEnum.investSellingCreationInitiated;
  bool get isInvestSellingCreated => this == EventTypeEnum.investSellingCreated;
  bool get isUpdateAccountExternalPinCodeResetRequestFailed => this == EventTypeEnum.updateAccountExternalPinCodeResetRequestFailed;
  bool get isUpdateAccountExternalPinCodeResetRequestSucceed => this == EventTypeEnum.updateAccountExternalPinCodeResetRequestSucceed;
  bool get isPassCodeResetRequestSucceed => this == EventTypeEnum.passCodeResetRequestSucceed;
  bool get isPassCodeResetRequestFailed => this == EventTypeEnum.passCodeResetRequestFailed;
  bool get isPinCodeResetRequestFailed => this == EventTypeEnum.updateAccountExternalPinCodeResetRequestFailed;
  bool get isPinCodeResetRequestSucceed => this == EventTypeEnum.updateAccountExternalPinCodeResetRequestSucceed;
  bool get isLoanDisbursed => this == EventTypeEnum.loanDisbursed;
  bool get isLoanApproved => this == EventTypeEnum.loanApproved;
  bool get isLoanRepaid => this == EventTypeEnum.loanRepaid;
  bool get isLoanPaid => this == EventTypeEnum.loanPaid;
  bool get isLoanOfferCreated => this == EventTypeEnum.loanOfferCreated;
  bool get isLoanOfferUpdated => this == EventTypeEnum.loanOfferUpdated;
  bool get isLoanUpdated => this == EventTypeEnum.loanUpdated;
  bool get isEmailVerificationSuccess => this == EventTypeEnum.emailVerificationSuccess;
  bool get isShowVcDetail => this == EventTypeEnum.showVcDetail;
  bool get isSubscriptionFailed => this == EventTypeEnum.subscriptionFailed;
  bool get isVaultListUpdated => this == EventTypeEnum.vaultListUpdated;
  bool get isVaultCreated => this == EventTypeEnum.vaultCreated;
  bool get isVaultDeleted => this == EventTypeEnum.vaultDeleted;
  bool get isShareReferralCode => this == EventTypeEnum.shareReferralCode;
  bool get isRefreshJwt => this == EventTypeEnum.refreshJwt;
  bool get isPassActivatedAndVCCreated => this == EventTypeEnum.passActivatedAndVCCreated;
  bool get isAskRefreshSessionOnLocalAuth => this == EventTypeEnum.askRefreshSessionOnLocalAuth;
  bool get isInternetConnectionDown => this == EventTypeEnum.internetConnectionDown;
  bool get isOpenCashVault => this == EventTypeEnum.openCashVault;
  bool get isTriggerHomeOnInitMethod => this == EventTypeEnum.triggerHomeOnInitMethod;
  bool get isTriggerHomeRefresh => this == EventTypeEnum.triggerHomeRefresh;
  bool get isShowChangeAvatarModal => this == EventTypeEnum.showChangeAvatarModal;
  bool get isTriggerMainAccountRefreshCallback => this == EventTypeEnum.triggerMainAccountRefreshCallback;
  bool get isTriggerLoanAccountRefreshCallback => this == EventTypeEnum.triggerLoanAccountRefreshCallback;
  bool get isTriggerVaultAccountRefreshCallback => this == EventTypeEnum.triggerVaultAccountRefreshCallback;
  bool get isTriggerInvestAccountRefreshCallback => this == EventTypeEnum.triggerInvestAccountRefreshCallback;
  bool get isOnSenFallbackToCreateVirtualCardAndRedirect => this == EventTypeEnum.onSenFallbackToCreateVirtualCardAndRedirect;
  bool get isRefreshMonthlyCategoryStats => this == EventTypeEnum.refreshMonthlyCategoryStats;
  bool get isInvestAccountUpdated => this == EventTypeEnum.investAccountUpdated;
  bool get isInvestCreateRecurringSubscriptionFailed => this == EventTypeEnum.investCreateRecurringSubscriptionFailed;
  bool get isInvestUpdateRecurringSubscriptionFailed => this == EventTypeEnum.investUpdateRecurringSubscriptionFailed;
  bool get isClientSecretGenerated => this == EventTypeEnum.clientSecretGenerated;
}
