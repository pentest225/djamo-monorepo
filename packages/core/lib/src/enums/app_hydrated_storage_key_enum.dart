import 'package:meta/meta.dart';

@internal
enum AppHydratedStorageKeyEnum {
  appOpened._(
    'APP_OPENED_HYDRATION_KEY',
    prefixWithUserId: false,
  ),
  markets._('MARKETS_HYDRATION_KEY'),
  marketsGeoLocation._('MARKETS_GEO_LOCATION_HYDRATION_KEY'),
  featureFlag._('FEATURE_FLAG_HYDRATION_KEY'),
  authentication._('AUTHENTICATION_HYDRATION_KEY'),
  accounts._('ACCOUNTS_HYDRATION_KEY'),
  dynamicForm._('DYNAMIC_FORM_HYDRATION_KEY'),
  iban._('IBAN_HYDRATION_KEY'),
  invest._('INVEST_HYDRATION_KEY'),
  investProducts._('INVEST_PRODUCTS_HYDRATION_KEY'),
  investTransactions._('INVEST_TRANSACTIONS_HYDRATION_KEY'),
  investForm._('INVEST_FORM_HYDRATION_KEY'),
  loan._('LOAN_HYDRATION_KEY'),
  yearRecap._('YEAR_RECAP_HYDRATION_KEY'),
  orders._('ORDERS_HYDRATION_KEY'),
  pass._('PASS_HYDRATION_KEY'),
  paymentSubscription._('PAYMENT_SUBSCRIPTION_HYDRATION_KEY'),
  appTooltip._('APP_TOOLTIP_HYDRATION_KEY'),
  transactions._('TRANSACTIONS_HYDRATION_KEY'),
  accountTransactions._('ACCOUNT_TRANSACTIONS_HYDRATION_KEY'),
  transactionDetails._('TRANSACTION_DETAILS_HYDRATION_KEY'),
  budget._('BUDGET_HYDRATION_KEY'),
  transactionCategory._('TRANSACTION_CATEGORY_HYDRATION_KEY'),
  p2pTransactionChat._('P_2_P_TRANSACTION_CHAT_HYDRATION_KEY'),
  transferService._('TRANSFER_SERVICE_HYDRATION_KEY'),
  vaults._('VAULTS_HYDRATION_KEY'),
  airtime._('AIRTIME_HYDRATION_KEY'),
  bills._('BILLS_HYDRATION_KEY'),
  billsPrepaidForm._('BILLS_PREPAID_FORM_HYDRATION_KEY'),
  billsPostpaidForm._('BILLS_POSTPAID_FORM_HYDRATION_KEY'),
  billsSubscriptionRenewalForm._('BILLS_SUBSCRIPTION_RENEWAL_FORM_HYDRATION_KEY'),
  bonus._('BONUS_HYDRATION_KEY'),
  settings._(
    'SETTINGS_HYDRATION_KEY',
    prefixWithUserId: false,
    prefixWithCountrySuffix: true,
  ),
  beneficiaries._('BENEFICIARIES_HYDRATION_KEY'),
  me._('ME_HYDRATION_KEY'),
  meGIFS._('ME_GIFS_HYDRATION_KEY'),
  messagingHub._('MESSAGING_HUB_HYDRATION_KEY'),
  products._(
    'PRODUCTS_HYDRATION_KEY',
    prefixWithUserId: false,
    prefixWithCountrySuffix: true,
  ),
  referrals._('REFERRALS_HYDRATION_KEY'),
  services._('SERVICE_HYDRATION_KEY'),
  connectedClients._(
    'CONNECTED_CLIENTS_HYDRATION_KEY',
    prefixWithUserId: false,
  ),
  kyc._('KYC_HYDRATION_KEY'),
  support._('SUPPORT_HYDRATION_KEY'),
  statistics._('STATISTICS_HYDRATION_KEY'),
  profileTooltips._('PROFILE_TOOLTIPS_HYDRATION_KEY'),
  activeVault._('ACTIVE_VAULT_HYDRATION_KEY'),
  balanceVisibilityDetails._('BALANCE_VISIBILITY_DETAILS_HYDRATION_KEY'),
  ;

  const AppHydratedStorageKeyEnum._(
    this.key, {
    this.prefixWithCountrySuffix = false,
    this.prefixWithUserId = true,
  }) : assert(
          !(prefixWithCountrySuffix && prefixWithUserId),
          'Both prefixWithCountrySuffix and prefixWithUserId cannot be true at the same time.',
        );

  final String key;
  final bool prefixWithUserId;
  final bool prefixWithCountrySuffix;

  bool get isConnectedClients => this == connectedClients;
}
