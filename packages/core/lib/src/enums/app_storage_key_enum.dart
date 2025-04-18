import 'package:meta/meta.dart';

enum AppStorageKey {
  @internal
  none(key: 'none'),
  migrateAuthDataFromV2ToV3(
    key: 'MIGRATE_AUTH_DATA_FROM_V_2_TO_V_3',
    shouldBeRemovedOnLogout: false,
  ),
  accessToken(key: 'ACCESS_TOKEN_STORAGE_KEY'),
  connectedUserKey(
    key: 'CONNECTED_USER_KEY',
    prefixWithUserId: false,
  ),
  linkedUsersKey(
    key: 'LINKED_USERS_KEY',
    prefixWithUserId: false,
    shouldBeRemovedOnLogout: false,
  ),
  ensureCleanUnprefixedHydratedData(
    key: 'ENSURE_CLEAN_UNPREFIXED_HYDRATED_DATA',
  ),
  onSwitchAccount(
    key: 'ON_SWITCH_ACCOUNT',
    prefixWithUserId: false,
  ),
  authUseBiometrics(key: 'auth_use_biometrics'),
  authUseBiometricsFromV2(key: 'auth_use_biometrics_from_v2'),
  authPhoneNumberVerificationId(key: 'auth_phone_number_verification_id'),
  authPassCode(key: 'auth_pass_code'),
  authPassCodeV3(key: 'AUTH_PASS_CODE'),
  authJwt(key: 'auth_jwt'),
  authPhoneNumberVerification(key: 'auth_phone_number_verification'),
  storageKeyAccount(key: 'account'),
  storageKeyServiceCategory(key: 'service_category'),
  storageKeyService(key: 'service'),
  storageKeySupportCategory(key: 'support_category'),
  storageKeySupportSection(key: 'support_section'),
  storageKeySupportArticle(key: 'support_article'),
  storageKeySupportUser(key: 'support_user'),
  storageKeySupportVote(key: 'support_vote'),
  storageKeyTransaction(key: 'transaction'),
  storagePushNotifications(key: 'push_notifications'),
  storageKeyReferrals(key: 'referrals'),
  storageKeyAppConfig(key: 'app_config'),
  storageKeyContactList(key: 'contact_list'),
  storageKeyShouldRefreshFromPhone(key: 'should_refresh_from_phone'),
  storageKeyShouldRefreshFromRemote(key: 'should_refresh_from_remote'),
  storageKeyShouldCanCreateCompute(key: 'can_create_compute'),
  storageKeyNotificationRedirection(key: 'notification_redirection'),
  storageKeyBeneficiaryList(key: 'beneficiary_list_20212809'),
  storageKeyLocalBanks(key: 'local_banks'),
  storageKeyAppTooltip(key: 'app_tooltip'),
  storageKeyAppSelfHelpItems(key: 'app_self_help_items'),
  storageKeyCurrentMarket(key: 'current_market'),
  storageKeyCurrentCountry(key: 'current_country'),
  storageKeyCurrentCity(key: 'current_city'),
  storageKeyCurrentLocation(key: 'current_location'),
  storageKeyLockAppConfig(key: 'lock_app_config'),
  storageKeyRoutingAppConfig(key: 'routing_app_config'),
  storageKeyOtpFailureDateTime(key: 'otp_failure_datetime'),
  balanceLowReminderLastDisplayDateTime(key: 'balance_low_reminder_last_display_date_time'),
  storageKeySettingList(key: 'setting_list'),
  storageKeyOnBoardingView(key: 'storage_key_onboarding_view'),
  storageKeyMinutesBeforeAccountStatusChange(key: 'storage_key_minutes_before_account_status_change'),
  storageKeyGrowthDeepLink(key: 'growth_deep_link'),
  p2pSocialNotificationScheduleDateTime(key: 'p2p_social_notification_schedule_date_time'),
  p2pNewContactNotificationSentData(key: 'p2p_new_contact_signup_notification_sent_data'),
  storageKeyRemoteContactList(key: 'remote_contact_list'),
  phoneNumberIdIsMigratedToFSS(key: 'PHONE_NUMBER_ID_IS_MIGRATED_TO_FSS'),
  hasStartReLogin(key: 'HAS_START_RE_LOGIN'),
  userHasRequestedEmailVerificationKey(key: 'USER_HAS_REQUESTED_EMAIL_VERIFICATION'),
  changeAvatarPopupDisplayed(key: 'CHANGE_AVATAR_POPUP_DISPLAYED'),
  appReviewDate(
    key: 'app_review_date',
    shouldBeRemovedOnLogout: false,
  ),
  userIsActivated(
    key: 'user_is_activated',
    shouldBeRemovedOnLogout: false,
  ),
  yearRecapProfilePayload(key: 'year_recap_profile_payload'),
  hasInitiatedIbanCreation(key: 'HAS_INITIATED_IBAN_CREATION'),
  activationTrials(key: 'ACTIVATION_TRIALS'),
  countrySuffixCodeKey(
    key: '_COUNTRY_SUFFIX_CODE_KEY',
    shouldBeRemovedOnLogout: false,
  ),
  orderBottomSheetCounter(key: 'order_bottom_sheet_counter'),
  storageHelperHasBeenMigrated(
    key: 'STORAGE_HELPER_HAS_BEEN_MIGRATED_V3',
    prefixWithUserId: false,
    shouldBeRemovedOnLogout: false,
  ),
  hydratedStoragePrefixHasBeenMigrated(
    key: 'HYDRATED_STORAGE_PREFIX_HAS_BEEN_MIGRATED',
    prefixWithUserId: false,
    shouldBeRemovedOnLogout: false,
  ),
  vaultRestrictionShownKey(key: 'VAULT_RESTRICTION_SHOWN_KEY'),
  notifyFirstDepositIsFreeStorageKey(key: 'NOTIFY_FIRST_DEPOSIT_IS_FREE_KEY'),
  lastTimeOnBoardingCamp(key: '_lastTimeOnBoardingCamp'),
  renewalTimeKey(key: '_cardRenewalLastDisPlayTime'),
  accountSubscriptionProductName(key: 'ACCOUNT_SUBSCRIPTION_PRODUCT_NAME'),
  backgroundMessages(key: 'BACKGROUND_MESSAGES'),
  storageKeyCardDetails(key: 'CARD_DETAILS'),
  numValueHistory(key: 'NUM_VALUE_HISTORY'),
  ;

  const AppStorageKey({
    required this.key,
    this.prefixWithUserId = true,
    this.shouldBeRemovedOnLogout = true,
  });

  final String key;
  final bool prefixWithUserId;
  final bool shouldBeRemovedOnLogout;

  bool get isNone => this == none;

  bool get isLastReviewDateUserKey => this == appReviewDate;

  bool get isUserIsActivatedKey => this == userIsActivated;

  bool get isAuthPassCodey => this == authPassCode;

  bool get isAuthUseBiometricsFromV2 => this == authUseBiometricsFromV2;
}
