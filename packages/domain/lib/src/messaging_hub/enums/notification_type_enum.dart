enum NotificationTypeEnum {
  undefined._('undefined'),
  firstDepositIsFree._('FIRST_DEPOSIT_IS_FREE'),
  iban._('iban'),
  kycLimitationReset._('kycLimitationReset'),
  incompleteOrder._('incomplete_order'),
  failedOrder._('failed_order'),
  completeOrder._('complete_order'),
  pendingValidationOrder._('pending_validation_order'),
  createVirtualCard._('create_virtual_card'),
  newContactSignup._('NEW_CONTACT_SIGNUP'),
  p2p._('p2p'),
  p2pSocialReminder._('p2pSocialReminder'),
  p2pNewContactSignup._('p2pNewContactSignup'),
  investAccountCreationPending._('INVEST_ACCOUNT_CREATION_PENDING'),
  investAccountCreationBlocked._('INVEST_ACCOUNT_CREATION_BLOCKED'),
  investAccountCreationValidated._('INVEST_ACCOUNT_CREATION_VALIDATED'),
  investAccountCreationFailed._('INVEST_ACCOUNT_CREATION_FAILED'),
  investSubscriptionCreationPending._('INVEST_SUBSCRIPTION_CREATION_PENDING'),
  investSubscriptionCreationValidated._('INVEST_SUBSCRIPTION_CREATION_VALIDATED'),
  investSubscriptionCreationFailed._('INVEST_SUBSCRIPTION_CREATION_FAILED'),
  investSellingCreationPending._('INVEST_SELLING_CREATION_PENDING'),
  investSellingCreationValidated._('INVEST_SELLING_CREATION_VALIDATED'),
  investSellingCreationFailed._('INVEST_SELLING_CREATION_FAILED'),
  transaction._('transaction'),
  intercom._('intercomNotification'),
  accessEnabled._('access_enabled'),
  bonusEarned._('bonusEarned'),
  web._('web'),
  vbv._('VBV_PUSH'),
  nsf._('NSF'),
  cleanConfig._('clean_config'),
  businessOtp._('business_otp'),
  budgetAlert._('budget_alert'),
  accountCardDestruction._('account_card_destruction'),
  emailVerificationSuccess._('EmailVerificationSuccess'),
  merchantSubscriptionRenewal._('merchant_subscription_renewal'),
  loanDisbursed._('loan_disbursed'),
  loanApproved._('loan_approved'),
  loanRepaid._('loan_repaid'),
  loanPaid._('loan_paid'),
  loanOfferCreated._('offer_created'),
  airtimePending._('AIRTIME_PENDING'),
  airtimeSuccess._('AIRTIME_SUCCESS'),
  airtimeFailed._('AIRTIME_FAILED'),
  agentCashIn._('agent_cashin'),
  nsfSuspensionWarning._('nsf_suspension_warning'),
  nsfDestructionWarning._('nsf_destruction_warning'),
  depositThroughCardFailed._('deposit_through_card_failed'),
  depositThroughCardSuccess._('deposit_through_card_success');

  const NotificationTypeEnum._(this.key);

  factory NotificationTypeEnum.fromString(String key) {
    return NotificationTypeEnum.values.firstWhere(
      (e) {
        return e.key.toLowerCase() == key.toLowerCase();
      },
      orElse: () => NotificationTypeEnum.undefined,
    );
  }

  final String key;
}

extension NotificationTypeEnumExtension on NotificationTypeEnum {
  bool get isUndefined => this == NotificationTypeEnum.undefined;
  bool get isFirstDepositIsFree => this == NotificationTypeEnum.firstDepositIsFree;
  bool get isIban => this == NotificationTypeEnum.iban;
  bool get isKycLimitationReset => this == NotificationTypeEnum.kycLimitationReset;
  bool get isIncompleteOrder => this == NotificationTypeEnum.incompleteOrder;
  bool get isFailedOrder => this == NotificationTypeEnum.failedOrder;
  bool get isCompleteOrder => this == NotificationTypeEnum.completeOrder;
  bool get isPendingValidationOrder => this == NotificationTypeEnum.pendingValidationOrder;
  bool get isCreateVirtualCard => this == NotificationTypeEnum.createVirtualCard;
  bool get isNewContactSignup => this == NotificationTypeEnum.newContactSignup;
  bool get isP2p => this == NotificationTypeEnum.p2p;
  bool get isP2pSocialReminder => this == NotificationTypeEnum.p2pSocialReminder;
  bool get isP2pNewContactSignup => this == NotificationTypeEnum.p2pNewContactSignup;
  bool get isInvestAccountCreationPending => this == NotificationTypeEnum.investAccountCreationPending;
  bool get isInvestAccountCreationBlocked => this == NotificationTypeEnum.investAccountCreationBlocked;
  bool get isInvestAccountCreationValidated => this == NotificationTypeEnum.investAccountCreationValidated;
  bool get isInvestAccountCreationFailed => this == NotificationTypeEnum.investAccountCreationFailed;
  bool get isInvestSubscriptionCreationPending => this == NotificationTypeEnum.investSubscriptionCreationPending;
  bool get isInvestSubscriptionCreationValidated => this == NotificationTypeEnum.investSubscriptionCreationValidated;
  bool get isInvestSubscriptionCreationFailed => this == NotificationTypeEnum.investSubscriptionCreationFailed;
  bool get isInvestSellingCreationPending => this == NotificationTypeEnum.investSellingCreationPending;
  bool get isInvestSellingCreationValidated => this == NotificationTypeEnum.investSellingCreationValidated;
  bool get isInvestSellingCreationFailed => this == NotificationTypeEnum.investSellingCreationFailed;
  bool get isTransaction => this == NotificationTypeEnum.transaction;
  bool get isIntercom => this == NotificationTypeEnum.intercom;
  bool get isAccessEnabled => this == NotificationTypeEnum.accessEnabled;
  bool get isBonusEarned => this == NotificationTypeEnum.bonusEarned;
  bool get isWeb => this == NotificationTypeEnum.web;
  bool get isVbv => this == NotificationTypeEnum.vbv;
  bool get isNsf => this == NotificationTypeEnum.nsf;
  bool get isCleanConfig => this == NotificationTypeEnum.cleanConfig;
  bool get isBusinessOtp => this == NotificationTypeEnum.businessOtp;
  bool get isBudgetAlert => this == NotificationTypeEnum.budgetAlert;
  bool get isAccountCardDestruction => this == NotificationTypeEnum.accountCardDestruction;
  bool get isEmailVerificationSuccess => this == NotificationTypeEnum.emailVerificationSuccess;
  bool get isMerchantSubscriptionRenewal => this == NotificationTypeEnum.merchantSubscriptionRenewal;
  bool get isLoanDisbursed => this == NotificationTypeEnum.loanDisbursed;
  bool get isLoanApproved => this == NotificationTypeEnum.loanApproved;
  bool get isLoanRepaid => this == NotificationTypeEnum.loanRepaid;
  bool get isLoanPaid => this == NotificationTypeEnum.loanPaid;
  bool get isLoanOfferCreated => this == NotificationTypeEnum.loanOfferCreated;
  bool get isAirtimePending => this == NotificationTypeEnum.airtimePending;
  bool get isAirtimeSuccess => this == NotificationTypeEnum.airtimeSuccess;
  bool get isAirtimeFailed => this == NotificationTypeEnum.airtimeFailed;
  bool get isAgentCashIn => this == NotificationTypeEnum.agentCashIn;
  bool get isNsfSuspensionWarning => this == NotificationTypeEnum.nsfSuspensionWarning;
  bool get isNsfDestructionWarning => this == NotificationTypeEnum.nsfDestructionWarning;
  bool get isDepositThroughCardFailed => this == NotificationTypeEnum.depositThroughCardFailed;
  bool get isDepositThroughCardSuccess => this == NotificationTypeEnum.depositThroughCardSuccess;

  bool get isAirtimeRelated => isAirtimePending || isAirtimeSuccess || isAirtimeFailed;

  bool get shouldBePersisted {
    return ![
      NotificationTypeEnum.undefined,
      NotificationTypeEnum.transaction,
      NotificationTypeEnum.intercom,
    ].contains(this);
  }
}
