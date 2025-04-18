import 'dart:ui';

/// The class contains the constants used in the application
abstract class AppConstants {
  /// The minimum length of the password
  static const passCodeValidInputLength = 5;

  /// The minimum age of the user
  static const userMinimumAge = 18;

  /// The minimum age of the user in DateTime
  static DateTime userMinimumAgeInDatetime = DateTime(
    DateTime.now().year - userMinimumAge,
    DateTime.now().month,
    DateTime.now().day,
  );

  // APP IDENTIFIERS

  static String get cashInBusiness => 'CASHIN_BUSINESS';

  static String cashInDepositMtn(String isoCode) => 'CASHIN_DEPOSIT_MTN_$isoCode';

  static String serviceIdTransferMoov(String isoCode) => 'TRANSFER_MOOV_$isoCode';

  static String serviceIdTransferMtn(String isoCode) => 'TRANSFER_MTN_$isoCode';

  static String serviceIdTransferOrange(String isoCode) => 'TRANSFER_ORANGE_$isoCode';

  static String serviceIdTransferDjamo(String isoCode) => 'TRANSFER_DJAMO_$isoCode';

  static String serviceIdAirtimeMoov(String isoCode) => 'AIRTIME_MOOV_$isoCode';

  static String serviceIdAirtimeMtn(String isoCode) => 'AIRTIME_MTN_$isoCode';

  static String serviceIdAirtimeOrange(String isoCode) => 'AIRTIME_ORANGE_$isoCode';

  static String serviceIdBillCie(String isoCode) => 'BILL_CIE_$isoCode';

  static String serviceIdBillSodeci(String isoCode) => 'BILL_SODECI_$isoCode';

  static String serviceIdCashInWave(String isoCode) => 'CASHIN_WAVE_$isoCode';

  static String serviceIdCashInMoov(String isoCode) => 'CASHIN_MOOV_$isoCode';

  static String serviceIdCashInMtn(String isoCode) => 'CASHIN_MTN_$isoCode';

  static String serviceIdCashInOrange(String isoCode) => 'CASHIN_ORANGE_$isoCode';

  static String get serviceIdCashInRevolut => 'CASHIN_REVOLUT';

  static String serviceIdCashInWireTransfer(String isoCode) => 'CASHIN_WIRE_TRANSFER_$isoCode';

  static String serviceIdCashInDeposit(String isoCode) => 'CASHIN_DEPOSIT_$isoCode';
  static String serviceIdCashInAgentDeposit(String isoCode) => 'CASHIN_AGENT_$isoCode';

  static String serviceIdTransferBank(String isoCode) => 'TRANSFER_ECOBANK_WIRE_$isoCode';

  static String serviceIdCashinIban(String isoCode) => 'CASHIN_IBAN_$isoCode';

  static String serviceIdCashinFree(String isoCode) => 'CASHIN_FREE_$isoCode';

  static String serviceIdTransferFree(String isoCode) => 'TRANSFER_FREE_$isoCode';

  static String serviceIdTransferWave(String isoCode) => 'TRANSFER_WAVE_$isoCode';

  static const String appName = 'DJAMO';

  static const String accountSubscriptionProductName = 'ACCOUNT_SUBSCRIPTION_PRODUCT_NAME';

  static const String serviceIdTransferVault = 'TRANSFER_VAULT';

  static const String serviceIdAirtimeGrouped = 'AIRTIME_SERVICE_GROUPED';

  static const String serviceIdManagementSubscription = 'SUBSCRIPTIONS_MANAGEMENT_SERVICE';

  static const String serviceIdCurrencyConversion = 'CURRENCY_CONVERSION_SERVICE';

  static const String serviceIdBillsGrouped = 'BILLS_SERVICE_GROUPED';

  static const String serviceIdTranferMobileMoney = 'MOBILE_MONEY_TRANSFER'; //

  static const String serviceIdDjamoInvestSubscription = 'NSIA_SUBSCRIPTION';

  static const String serviceIdDjamoInvestSelling = 'NSIA_SELLING';

  // Front-end only ant (Fake service identifier)

  static const String fakeCanService = 'FAKE_CAN_SERVICE';

  static const String virtualCardEcobank = 'ECOBANK_GTP_VIRTUAL_CARD';

  static const String virtualCard = 'VIRTUAL_CARD';

  static const String physicalCardBgfi = 'BGFI_GTP_PREPAID_CARD';

  static const String cashInServiceCategory = 'cashin';

  static const String transferServiceCategory = 'transfer';

  static const String accountPageID = 'accounts';

  static const String hasPendingMobileMoneyDepositKey = 'HAS_PENDING_MOBILE_MONEY_DEPOSIT_TRANSACTION_KEY';

  static const String notifyFirstDepositIsFreeKey = 'NOTIFY_FIRST_DEPOSIT_IS_FREE_KEY';

  static const String localNotificationType = 'LOCAL_NOTIFICATION_TYPE';

  static const String ibanSuccessCreationNotificationType = 'iban';

  static const String bankTransferDefaultIban = 'CI33CI1620100300201021680186';

  static const String sgciBankCode = 'CI008';

  // APP MESSAGES

  static String nsfDescriptionMessage = 'Fonds insuffisants pour la transaction de {{amount}} F CFA à {{merchant}}';

  static const String biometryLocalizedReason = 'Utilisez la biométrie pour vous connecter';

  static const String biometryFailureMessage = "Composez votre code d'accès DJAMO";

  static const String biometryDefaultFailureMessage = "Il y'a un problème avec votre verrouillage biométrique.";

  static const String biometryUnenrolledFailureMessage = "Vous n'avez pas configuré de verrouillage biométrique sur votre téléphone.";

  static const String networkError = 'Impossible de se connecter au serveur. Veuillez vérifier votre connexion Internet.';

  static const String serverError = 'Une erreur est survenue. Veuillez réessayer ultérieurement.';

  static const String accountNotFound = 'Oups!, nous ne retrouvons pas ce compte';

  static const String authBadPassCode = 'Code de sécurité incorrect. Veuillez réessayer SVP.';

  static const String accountStatusChangeFailure = 'Echec de changement du statut de votre carte, Veuillez réessayer';

  static const String phoneNumberNotValidForService = "Ce numéro n'est pas valide pour un transfert {{service}}.";
  static const String phoneNumberNotValidForAirtimeService = "Ce numéro n'est pas valide. Essayez de le composer manuellement.";

  static const String referralNotFoundMessage = "Ce code d'invitation n'est pas valide";

  static const String transactionDetailsLoadError = 'Echec de chargement du détail de la transaction, Veuillez réessayer';

  static const String firstFreeDepositText = 'Premier dépôt gratuit';

  static const String nextFreeDepositText = 'Prochain dépôt gratuit';

  static const String transactionFailedMessage = "Votre compte n'a pas pu être débité.";

  static const String transactionEmptyMessage = 'Vous devez effectuer une première transaction pour voir vos dernières transactions \u{1F641}';

  static const String transactionFilterEmptyMessage = "Vous n'avez pas effectué de {{type}} en {{month}}";

  static const String shareDefaultMessage =
      "Tu connais Djamo? Je t'ai choisi pour être l'un des premiers à recevoir ta carte Visa. \n Inscris-toi avec mon code {CODE}. Clique sur ce lien pour télécharger l'app";

  static const String rateAppErrorMessage = "Nous n'arrivons pas à vous rediriger vers votre store. Veuillez ouvrir votre store et notez Djamo";

  static const String referralRewardTitle = 'Gagnez 1.000 FCFA par invité 🎉';

  static const String referralRewardMessage = 'Recevez 1.000 F CFA la première fois que votre invité effectue un paiement avec sa carte Djamo';

  static const String selfTransactionBeneficiaryLabel = 'Vous-même';

  static const String appUpdateAvailableMessage = 'Une mise à jour de Djamo est disponible';

  static const String appUpdateAvailableActionMessage = 'Cliquez ici pour mettre à jour';

  static const String emptyServiceMessage = 'Aucun service disponible';

  static const String emptyProductMessage = 'Aucun produit disponible';

  static const String accountStatusChangeWaitingMessage = 'Veuillez patienter $secondBeforeChangeAccountStatus secondes avant de reprendre.';

  static const String refundContextMessage = 'Paiement effectué\n chez {{merchantName}} le {{paymentDate}}';

  static const String receiverReferralMessage = '';

  static const ibanPilotWarningMessage = "Cet IBAN vous est fourni dans le cadre d'un"
      ' partenariat avec '
      'la Banque BDA. Ce partenariat est dans sa'
      ' phase pilote et vous avez été sélectionné pour y participer.';

  static const djamoBusinessOTPInstructions = 'Utilisez ce code pour vous connecter à votre compte Djamo business';

  // APP URLS

  static const String relayPointUrl = 'https://www.djamo.ci/ci/point-relais/';

  static const String playStoreDefaultLink = 'https://play.google.com/store/apps/details?id=com.djamo.app ';

  static const String appstoreDefaultLink = 'https://apps.apple.com/us/app/djamo/id1504072402';

  static const String huaweiStoreDefaultLink = 'https://appgallery.huawei.com/app/C104096317';

  static const String mapLink = 'https://maps.google.com?q={latitude},{longitude}';

  static const String vaultDefaultIconUrl = 'https://static-assets.djamo.io/icons/colored/Book.png';

  static const String appDownloadUrl = 'https://app.adjust.com/lnff1my?fallback=https://www.djamo.ci/ci/&redirect_macos=https://www.djamo.ci/ci/';

  static const String awsS3HostUrl = 'https://static-assets.djamo.io';

  static const String currencyFlagApi = 'https://wise.com/public-resources/assets/flags/rectangle/{isoCode}.png';

  // APP DATABASES NAMES

  static const String appLocalDb = 'app_local_db';

  static const String appGqlLocalDb = 'app_gql_local_db';

  // APP NUMERIC CONSTANTS

  static const int secondBeforeChangeAccountStatus = 20;

  static const double maxBalanceLimit = 2000000;

  static const int nsfIntercomArticleId = 5794725;

  static const int howToMakePaymentArticleId = 5972948;

  static const int notificationListTitleStringLength = 40;

  static const int notificationListBodyStringLength = 60;

  static const int relayPointArticleId = 4640337;

  static const int transactionNoteDisplayLength = 45;

  static const int appLockTime = 180; // in seconds

  static const int otpValidInputLength = 4;

  static const int otpRenewalCountdownStart = 15;

  static const double minimumP2PTransactionAmount = 200;

  static const double maximumP2PTransactionAmount = 200000;

  static const double minimumBankDepositTransactionAmount = 30000;

  static const double maximumBankDepositTransactionAmount = 10000000;

  static const double minimumCashInWireTransferTransactionAmount = 15000;

  static const double maximumCashInWireTransferTransactionAmount = 10000000;

  static const double minimumCashInMobileMoneyTransactionAmount = 200;

  static const double maximumCashInMobileMoneyTransactionAmount = 410000;

  static const double minimumTransferMobileMoneyTransactionAmount = 200;

  static const double maximumTransferMobileMoneyTransactionAmount = 150000;

  static const double vaultDefaultTargetAmount = 100000;

  static const double vaultMinimumTargetAmount = 5000;

  static const double vaultDefaultRecurrentAmount = 10000;

  static const double vcDefaultAccountDetailsAllowedBalance = 1000;

  static const double vaultMaxTransactionAmount = 200000;

  static const int depositAutoValidationTimer = 20;

  static const int depositCancelBlockerTimer = 10;

  static const int transactionStatusTrackingTimer = 20;

  // APP ORDER KEY

  static const String orderBottomSheetCounter = 'order_bottom_sheet_counter';

  static const int defaultCardCost = 5000;

  // APP PIN CODE KEYBOARD CONSTANTS

  static const String biometricValue = '-2';

  static const String backspaceValue = '-1';

  static const List<String> appKeyboardDigits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

  static const Duration apiDefaultTimeout = Duration(seconds: 30);

  // SIGNATURE PAD

  static const String emptySignature =
      'iVBORw0KGgoAAAANSUhEUgAAAXkAAAD6CAYAAABEUDf/AAAAAXNSR0IArs4c6QAAAARzQklUCAgICHwIZIgAAAGESURBVHic7cExAQAAAMKg9U9tB2+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADgMcHtAAH/5lUBAAAAAElFTkSuQmCC';

  // APP REGEX

  static const String defaultNameRegex =
      '[bcdfghjlklmnpqrstvwxzBCDFGHJLKLMNPQRSTVWXZ]{5,}|[yY]{3,}|[hH]{3,}|[jJ]{2,}|[oO]{3,}|[iI]{4,}|[aA]{3,}|[eE]{3,}|[uU]{2,}|[gG]{3,}|[pP]{3,}|[bB]{3,}|[cC]{3,}|[fF]{3,}|[lL]{3,}|[sS]{3,}|[tT]{3,}|[vV]{2,}|[xX]{2,}|[kK]{3,}|[mM]{3,}|[nN]{3,}|[zZ]{3,}|[0-9]';
  static const String latinNameRegex = r"^[A-Za-zÀ-ÖØ-öø-ÿ\s'-]+$";

  // APP UI CONSTANTS

  static const ColorFilter greyscale = ColorFilter.matrix(
    <double>[
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ],
  );

  // APP TEST MOCKS

  static const notifyFirstDepositIsFreeStorageKey = 'NOTIFY_FIRST_DEPOSIT_IS_FREE_KEY';

  static const firstDepositIsFreeNotificationKey = 'FIRST_DEPOSIT_IS_FREE';

  static const ibanNotificationKey = 'iban';

  static const lockStorageKey = 'app_lock_storage_key';

  static const lockPageDisplayStorageKey = 'app_lock_page_display_key';

  static const appWaitingTimeBeforeLock = 20;

  static const customerServicePhoneNumber = '98100';

  static const activationTrials = 'ACTIVATION_TRIALS';

  static const analyticsAuthenticated = 'analyticsAuthenticated';

  static const facebookAppId = '1214803538893768';

  static const vaultRestrictionShownKey = 'VAULT_RESTRICTION_SHOWN_KEY';

  static const int backgroundLockLatency = 30;

  static const int inactivityLockLatency = 300;

  static const int biometricAuthAutoActivationLatency = 500;

  // New contact P2p Signup Notification

  static const int newContactSignupP2pAmount = 500;

  static const int newContactSignupNotificationDailyMaxCounter = 3;

  static const String newContactSignupP2pNote = 'Bienvenue 🤗 dans la famille';

  static const int p2pSocialNotificationAmount = 200;

  static const Duration p2pSocialNotificationReminderDuration = Duration(days: 7);

  static const int giveAwayAboutToExpireDays = 7;

  static List<String> authRoutes = const [
    'virtual_card_phone_verification_page',
    'authentificationscreen',
    'authentification_page_with_biometry',
    'new_authentification_page_with_biometry',
    'locked_home',
    'lock-screen',
    'lockscreen',
    'phoneVerification',
    'phonenumberpage',
    'phonenumberverificationpage',
  ];
  static const marketCacheDuration = 60 * 24;

  static const nsfFees = 200;

  static const topPaymentSubscriptionMerchants = ['netflix', 'facebook', 'apple', 'google', 'spotify', 'djamo'];

  static DateTime userIsActivatedTrackingMinPeriod = DateTime.parse('2023-11-22');

  static List<String> cashInCashbackMerchants = ['Revolut'];
  static String unknownError = "Oops! 😔 Une erreur inconnue est survenue. Veuillez réessayer s'il vous plait.";
  static String timeoutError = 'Votre demande prend plus de temps que prévu. Patientez quelques minutes, puis réessayez.';
  static const standardCreditCardAspectRatio = 1.585 / 1;
  static const defaultRecurringAmount = 10000.0;
}
