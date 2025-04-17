import 'package:petit_extension/petit_extension.dart';

typedef FeatureFlagEnums = Set<FeatureFlagEnum>;

enum FeatureFlagEnum {
  unknown._(
    feature: 'unknown',
  ),
  allowMultipleDebugAccounts._(
    feature: 'allow_multiple_debug_accounts',
  ),
  invest._(
    feature: 'nsia_invest_feature',
  ),
  loan._(
    feature: 'loan_internal',
  ),
  loanE._(
    feature: 'loan_external',
  ),
  bonusDoubleSalary._(
    feature: 'bonus_double_salary',
  ),
  blockedVaults._(
    feature: 'blocked_vaults',
  ),
  cardRenewalWarning._(
    feature: 'card_renewal_warning',
  ),
  authenticationOfflineMode._(
    feature: 'authentication_offline_mode',
  ),
  changeAvatar._(
    feature: 'change_avatar',
  ),
  verifyEmail._(
    feature: 'verify_email',
  ),
  managePaymentSubscriptions._(
    feature: 'manage_payment_subscriptions',
  ),
  markTransactionAsSubscription._(
    feature: 'mark_transaction_as_subscription',
  ),
  yearRecap._(
    feature: 'YEAR_RECAP',
  ),

  /// Verify Email A/B Test experiment
  verifyEmailExp._(
    feature: 'verify_email_exp',
  ),
  p2pQrCode._(
    feature: 'p2p_qr_code',
  ),
  airtime._(
    feature: 'airtime',
  ),
  activateCardNewFlow._(
    feature: 'activate_card_new_flow',
  ),
  bills._(
    feature: 'bills',
  ),
  subscriptionDebt._(
    feature: 'subscription_debt',
  ),
  iban._(
    feature: 'iban',
  ),
  onboardingCardTypeSelection._(
    feature: 'onboarding_card_type_selection',
  ),
  allowPosCall._(
    feature: 'allow_pos_call',
  ),
  newNsfTransactionTag._(
    feature: 'new_nsf_transaction_tag',
  ),
  productPricingV2._(
    feature: 'product_pricing_v2',
  ),
  cardCashIn._(
    feature: 'card_cash_in',
  ),

  cardOrderPrepayment._(
    feature: 'card_order_prepayment',
  ),
  //m3_ui_migration
  m3UiMigration._(
    feature: 'm3_ui_migration',
  ),
  quickAuthentication._(
    feature: 'quick_authentication',
  ),
  pass._(
    feature: 'pass',
  ),
  useTransferServiceListPage._(
    feature: 'use_transfer_service_list_page',
  ),
  internationalTransfer._(
    feature: 'international_transfer',
  ),

  migrationToDjamoFinances._(
    feature: 'migration_to_djamo_finances',
  ),
  userCanShowPanForPhysicalCard._(
    feature: 'user_can_show_pan_for_physical_card',
  ),
  useEvervault._(
    feature: 'use_evervault',
  ),
  djamoBusiness._(
    feature: 'djamo_business',
  ),

  paymentLinkTransferConfirmation._(
    feature: 'payment_link_transfer_confirmation',
  ),

  recurringSubscription._(
    feature: 'recurring_subscription',
  ),
  ibanForInternationalWireTransfer._(
    feature: 'international_iban',
  ),
  cashInAgent._(
    feature: 'cash_in_agent',
  ),
  investSimulator._(
    feature: 'invest_simulator',
  ),
  savingsVault._(
    feature: 'savings_vault',
  ),
  authenticationV2._(
    feature: 'authentication_v2',
  ),
  transactionProofVerification._(
    feature: 'transaction_proof_verification',
  ),
  separatedCardFromAccount._(
    feature: 'separated_card_from_account',
    settingId: '',
  ),
  ;

  const FeatureFlagEnum._({
    required this.feature,
    String? settingId,
  }) : _settingId = settingId;

  factory FeatureFlagEnum.fromString(String key) {
    return FeatureFlagEnum.values.firstWhere(
      (e) => e.feature == key,
      orElse: () => FeatureFlagEnum.unknown,
    );
  }

  final String feature;
  final String? _settingId;

  String get name => feature;

  String get settingId => _settingId.orNull ?? feature;
}

extension FeatureFlagEnumExtension on FeatureFlagEnum {
  bool get isUnknown => this == FeatureFlagEnum.unknown;
  bool get isInvest => this == FeatureFlagEnum.invest;
  bool get isLoan => this == FeatureFlagEnum.loan;
  bool get isLoanE => this == FeatureFlagEnum.loanE;
  bool get isBonusDoubleSalary => this == FeatureFlagEnum.bonusDoubleSalary;
  bool get isBlockedVaults => this == FeatureFlagEnum.blockedVaults;
  bool get isCardRenewalWarning => this == FeatureFlagEnum.cardRenewalWarning;
  bool get isAuthenticationOfflineMode => this == FeatureFlagEnum.authenticationOfflineMode;
  bool get isChangeAvatar => this == FeatureFlagEnum.changeAvatar;
  bool get isVerifyEmail => this == FeatureFlagEnum.verifyEmail;
  bool get isManagePaymentSubscriptions => this == FeatureFlagEnum.managePaymentSubscriptions;
  bool get isMarkTransactionAsSubscription => this == FeatureFlagEnum.markTransactionAsSubscription;
  bool get isYearRecap => this == FeatureFlagEnum.yearRecap;
  bool get isVerifyEmailExp => this == FeatureFlagEnum.verifyEmailExp;
  bool get isP2pQrCode => this == FeatureFlagEnum.p2pQrCode;
  bool get isAirtime => this == FeatureFlagEnum.airtime;
  bool get isActivateCardNewFlow => this == FeatureFlagEnum.activateCardNewFlow;
  bool get isBills => this == FeatureFlagEnum.bills;
  bool get isSubscriptionDebt => this == FeatureFlagEnum.subscriptionDebt;
  bool get isIban => this == FeatureFlagEnum.iban;
  bool get isOnboardingCardTypeSelection => this == FeatureFlagEnum.onboardingCardTypeSelection;
  bool get isAllowPosCall => this == FeatureFlagEnum.allowPosCall;
  bool get isNewNsfTransactionTag => this == FeatureFlagEnum.newNsfTransactionTag;
  bool get isProductPricingV2 => this == FeatureFlagEnum.productPricingV2;
  bool get isCardCashIn => this == FeatureFlagEnum.cardCashIn;
  bool get isCardOrderPrepayment => this == FeatureFlagEnum.cardOrderPrepayment;
  bool get isM3UiMigration => this == FeatureFlagEnum.m3UiMigration;
  bool get isQuickAuthentication => this == FeatureFlagEnum.quickAuthentication;
  bool get isPass => this == FeatureFlagEnum.pass;
  bool get isUseTransferServiceListPage => this == FeatureFlagEnum.useTransferServiceListPage;
  bool get isInternationalTransfer => this == FeatureFlagEnum.internationalTransfer;
  bool get isVaultMigrationToDjamoFinances => this == FeatureFlagEnum.migrationToDjamoFinances;
  bool get isUserCanShowPanForPhysicalCard => this == FeatureFlagEnum.userCanShowPanForPhysicalCard;
  bool get isUseEvervault => this == FeatureFlagEnum.useEvervault;
  bool get isDjamoBusiness => this == FeatureFlagEnum.djamoBusiness;
  bool get isPaymentLinkTransferConfirmation => this == FeatureFlagEnum.paymentLinkTransferConfirmation;
  bool get isRecurringSubscription => this == FeatureFlagEnum.recurringSubscription;
  bool get isIbanForInternationalWireTransfer => this == FeatureFlagEnum.ibanForInternationalWireTransfer;
  bool get isCashInAgent => this == FeatureFlagEnum.cashInAgent;
  bool get isInvestSimulator => this == FeatureFlagEnum.investSimulator;
  bool get isSavingsVault => this == FeatureFlagEnum.savingsVault;
  bool get isAuthenticationV2 => this == FeatureFlagEnum.authenticationV2;
  bool get isSeparatedCardFromAccount => this == FeatureFlagEnum.separatedCardFromAccount;
  bool get isTransactionProofVerification => this == FeatureFlagEnum.transactionProofVerification;
}
