/// Enum for setting keys
enum SettingKeyEnum {
  undefined._('undefined'),
  clientAppVersionManagerConfig._('CLIENT_APP_VERSION_MANAGER_CONFIG'),
  marketCampaignSetting._('MARKET_CAMPAIGN_SETTING'),
  vaultConfig._('VAULT_CONFIG'),
  campaignSharedMessage._('campaignSharedMessage'),
  otherFeatures._('OTHER_FEATURES'),
  vgsSettings._('VGS_SETTINGS'),
  accountStatement._('accountStatement'),
  contractEndpoint._('CONTRACT_ENDPOINT'),
  transactionReceiptLink._('transactionReceiptLink'),
  adjustEventTokens._('ADJUST_EVENT_TOKENS'),
  budgetFeature._('BUDGET_FEATURE'),
  investFeature._('nsia_invest_feature'),
  loanSetting._('LOAN_SETTING'),
  appCachingDurations._('APP_CACHING_DURATIONS'),
  appFeatureFlags._('APP_FEATURE_FLAGS'),
  investmentHelpArticles._('INVESTMENT_HELP_ARTICLES'),
  yearRecap._('YEAR_RECAP'),
  iban._('iban'),
  bills._('bills'),
  cardCashIn._('card_cash_in'),
  phoneNumberConfig._('phone_number_config'),
  supportSettings._('SUPPORT_SETTING'),
  kycSettings._('kyc'),
  businessSettings._('BUSINESS_SETTINGS'),
  clientAppCrashReportingProvider._('CLIENT_APP_CRASH_REPORTING_PROVIDER'),
  fxRates._('fx_rates'),
  ;

  const SettingKeyEnum._(this.key);

  factory SettingKeyEnum.fromString(String key) {
    return SettingKeyEnum.values.firstWhere(
      (element) => element.key == key,
      orElse: () => SettingKeyEnum.undefined,
    );
  }

  final String key;

  bool get isUnknown => this == undefined;
}
