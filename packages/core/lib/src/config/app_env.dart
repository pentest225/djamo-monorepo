abstract class AppEnv {
  static const apiLegacyBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
  );
  static const _apiV2BaseUrl = String.fromEnvironment(
    'API_V2_BASE_URL',
  );
  static const authApiBaseUrl = String.fromEnvironment(
    'AUTH_API_BASE_URL',
  );
  static const _tenorApiKey = String.fromEnvironment('TENOR_API_KEY');
  static const appEnv = String.fromEnvironment('APP_ENV');
  static const baseUrl = apiLegacyBaseUrl;
  static const authBaseUrl = authApiBaseUrl;
  static const authBaseUrlV2 = String.fromEnvironment('AUTH_API_BASE_URL_V2');
  static const tenorApiUrl = String.fromEnvironment('TENOR_API_URL');
  static const tenorApiKey = _tenorApiKey;
  static const apiV2BaseUrl = _apiV2BaseUrl;
  static const adjustSdkToken = String.fromEnvironment('ADJUST_SDK_TOKEN');
  static const intercomAppId = String.fromEnvironment('INTERCOM_APP_ID');
  static const intercomAndroidKey = String.fromEnvironment('INTERCOM_ANDROID_KEY');
  static const intercomIosKey = String.fromEnvironment('INTERCOM_IOS_KEY');
  static const passcodeStorageKey = String.fromEnvironment(
    'PASSCODE_STORAGE_KEY',
    defaultValue: 'authPassCode',
  );
  static const cardDepositFormUrl = String.fromEnvironment(
    'CARD_DEPOSIT_FORM_URL',
  );
  //MOBILE_SERVICE_PLATFORM
  static const mobileServicePlatform = String.fromEnvironment(
    'MOBILE_SERVICE_PLATFORM',
    defaultValue: String.fromEnvironment('ANDROID_MOBILE_SERVICE_PLATFORM', defaultValue: 'GMS'),
  );

  static const apiKey = String.fromEnvironment('API_KEY');
  static const sentryDsn = String.fromEnvironment('SENTRY_DSN');
  static const iOSKeychainGroupId = String.fromEnvironment('IOS_KEYCHAIN_GROUP_ID');
  static const featureFlags = String.fromEnvironment('FEATURE_FLAGS');
  static const publicKeysPinning = String.fromEnvironment(
    'PUBLIC_KEYS_PINNING',
  );
  static const publicKeysPinningFromCI = String.fromEnvironment('CI_PUBLIC_KEYS_PINNING');
  static const paymentLinkHost = String.fromEnvironment('PAYMENT_LINK_HOST');
  static const atlasBaseUrl = String.fromEnvironment('ATLAS_BASE_URL');
  static const totpSecret = String.fromEnvironment('TOTP_SECRET');
}
