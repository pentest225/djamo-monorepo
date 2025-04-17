import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome to Djamo!';

  @override
  String get continueLabel => 'Continue';

  @override
  String get notNow => 'Not now';

  @override
  String get retry => 'Réésayer';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get close => 'Close';

  @override
  String get confirm => 'Confirm';

  @override
  String get iConfirm => 'I confirm';

  @override
  String get yesIConfirm => 'Yes, I confirm';

  @override
  String get confirmation => 'Confirmation';

  @override
  String get done => 'Done';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get or => 'Or';

  @override
  String get your => 'Your';

  @override
  String get toMe => 'To me';

  @override
  String get back => 'Back';

  @override
  String get backToDashboard => 'Back to dashboard';

  @override
  String get constraint => 'Constraint';

  @override
  String get tryAgain => 'Try again';

  @override
  String get error => 'Error';

  @override
  String get help => 'Help';

  @override
  String get success => 'Success';

  @override
  String get allow => 'Allow';

  @override
  String get dontAllow => 'Don\'t allow';

  @override
  String get deny => 'Deny';

  @override
  String get copy => 'Copy';

  @override
  String get authorize => 'Authorize';

  @override
  String get iUnderstand => 'I understand';

  @override
  String get perfect => 'Perfect!';

  @override
  String get appUnderMaintenance => 'The application is under maintenance, please try again in a few minutes.';

  @override
  String get addMoney => 'Add money';

  @override
  String get withdrawal => 'Withdrawal';

  @override
  String get withdrawMoney => 'Withdraw money';

  @override
  String get depositMoney => 'Deposit money';

  @override
  String get enterAmount => 'Amount';

  @override
  String get showAll => 'Show all';

  @override
  String get tapPhoneNumber => 'Enter the phone number';

  @override
  String get pay => 'Paid';

  @override
  String get countryName => 'Côte d\'Ivoire';

  @override
  String get deadlineHasPassed => 'The deadline has passed';

  @override
  String remainingDays(num value) {
    String _temp0 = intl.Intl.pluralLogic(
      value,
      locale: localeName,
      other: '$value days remaining',
      one: '1 day remaining',
      zero: 'Done',
    );
    return '$_temp0';
  }

  @override
  String remainingWeeksAndDays(num days, num weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks weeks',
      one: '1 week',
      zero: '',
    );
    String _temp1 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days',
      one: '1 day',
      zero: '',
    );
    return '$_temp0 $_temp1';
  }

  @override
  String get takePhoto => 'Take a photo';

  @override
  String get importImage => 'Import an image';

  @override
  String weekDay(String value) {
    String _temp0 = intl.Intl.selectLogic(
      value,
      {
        'sunday': 'Sunday',
        'monday': 'Monday',
        'tuesday': 'Tuesday',
        'wednesday': 'Wednesday',
        'thursday': 'Thursday',
        'friday': 'Friday',
        'saturday': 'Saturday',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get fees => 'Fees';

  @override
  String get operationFees => 'Operation fees';

  @override
  String get withdrawalFees => 'Withdrawal fees';

  @override
  String get premiumUpgradeSuccess => 'You have upgraded to Premium';

  @override
  String get amountToBeReceived => 'Amount to be received';

  @override
  String get amountToPay => 'Amount to pay';

  @override
  String get loadingInfo => 'Loading information...';

  @override
  String get loadingFailed => 'Loading failed';

  @override
  String get engagementConditions => 'Engagement conditions';

  @override
  String get deletionOnGoing => 'Deleting...';

  @override
  String get objective => 'Objective';

  @override
  String get participants => 'Participants';

  @override
  String get period => 'Period';

  @override
  String numberOfTimes(Object times) {
    return '$times times';
  }

  @override
  String get quitThisScreen => 'Quit this screen';

  @override
  String get quitThisScreenConfirmation => 'Are you sure you want to quit this screen?';

  @override
  String get number => 'Number';

  @override
  String get verificationOnGoing => 'Verification in progress...';

  @override
  String get processingOnGoing => 'Processing in progress...';

  @override
  String get waitingAMoment => 'Please wait a moment...';

  @override
  String get cgu => 'Terms and conditions';

  @override
  String get cguAccept => 'I accept the terms and conditions';

  @override
  String get share => 'Share';

  @override
  String get details => 'Details';

  @override
  String get copySuccessMessage => 'Copied to clipboard';

  @override
  String get documentLoading => 'Document loading...';

  @override
  String get myProfile => 'My profile';

  @override
  String get myIban => 'My Account Number';

  @override
  String get bonusAccount => 'Compte Bonus';

  @override
  String get referral => 'Referral';

  @override
  String get pos => 'POS';

  @override
  String get lock => 'Lock';

  @override
  String get lockApp => 'Lock the app';

  @override
  String get personalInformation => 'Personal information';

  @override
  String get pricingPlan => 'Pricing plan';

  @override
  String get documents => 'Documents';

  @override
  String get lastnameLabel => 'Name';

  @override
  String get firstNameLabel => 'First name';

  @override
  String get identificationDocuments => 'Identification documents';

  @override
  String get free => 'Free';

  @override
  String get popular => 'Popular';

  @override
  String get mainAccountBalanceTitle => 'Main account balance';

  @override
  String get refresh => 'Refresh';

  @override
  String get total => 'Total';

  @override
  String get totalToPay => 'Total to pay';

  @override
  String get paymentSuccess => 'Payment successful';

  @override
  String get save => 'Save';

  @override
  String get account => 'Account';

  @override
  String get processingTime => 'Processing time';

  @override
  String hours(String hours) {
    String _temp0 = intl.Intl.selectLogic(
      hours,
      {
        '0': '0 hour',
        '1': '1 hour',
        'other': '$hours hours',
      },
    );
    return '$_temp0';
  }

  @override
  String get cancelOperation => 'Cancel the operation';

  @override
  String get stampFee => 'Stamp fee';

  @override
  String get recommended => 'Recommended';

  @override
  String get nothingFound => 'Nothing found';

  @override
  String get category => 'Category';

  @override
  String get statistics => 'Statistics';

  @override
  String get great => 'Great ⚡️';

  @override
  String get inProgress => 'In progress';

  @override
  String djamoFees(Object percentage) {
    return 'Djamo fees ($percentage%)';
  }

  @override
  String get cardLocked => 'Locked';

  @override
  String get myProfileChangePictureTitle => 'Prennez un selfie';

  @override
  String get myProfileChangePictureSubtitle => 'Positionnez votre visage dans le cercle de sorte a ce qu\'il soit bien visible';

  @override
  String get myProfileAvatarChangedRecently => 'Vous avez déja soumis une photo de profil il y a moins de 3 jours';

  @override
  String transactionCategorizedAsFood(Object category) {
    return 'Your transaction has been categorized as \'$category\'';
  }

  @override
  String get modificationsSaved => 'Your changes have been saved';

  @override
  String get invitationCode => 'Invitation code';

  @override
  String get authMigrationWeAreConfiguringYourAccount => 'We are configuring your account...';

  @override
  String get authEnterPhoneFieldLabel => 'Phone number';

  @override
  String authEnterPhoneValidationErrMessage(Object digit) {
    return 'The phone number must be $digit digits long.';
  }

  @override
  String get authAlreadyConnectedErrMessage => 'You are already connected';

  @override
  String get authPhoneVerificationOnGoing => 'Verifying your phone number...';

  @override
  String get authSendingOtp => 'Sending code...';

  @override
  String get authOtpVerificationOnGoing => 'Verifying your code...';

  @override
  String get authSelectCountry => 'Select a country';

  @override
  String get authOtpVerificationPageTitle => 'Verification code';

  @override
  String authEnterOtpTitle(Object method) {
    return 'Enter the code received by $method';
  }

  @override
  String authEnterOtpTitleTo(Object method, Object receiver) {
    return 'Enter the code received by $method to $receiver';
  }

  @override
  String authReSentOtpIn(Object time) {
    return 'Return the code in $time';
  }

  @override
  String get authSendOTP => 'Send code';

  @override
  String get authResendOTPBySms => 'Resend code by SMS';

  @override
  String get authUseAnotherOtpMethod => 'Try another method';

  @override
  String get authLogout => 'Log out';

  @override
  String get authForgotPassword => 'Forgot your password?';

  @override
  String get authEnterPasswordTitle => 'Enter your code to log in';

  @override
  String authHi(Object name) {
    return 'Hi $name';
  }

  @override
  String get authWrongPassword => 'Incorrect code';

  @override
  String authUseBiometric(String type) {
    String _temp0 = intl.Intl.selectLogic(
      type,
      {
        'fingerprint': 'Digital print',
        'faceId': 'Facial recognition',
        'iris': 'Retinal scanner',
        'other': 'Biometric',
      },
    );
    return 'Use $_temp0';
  }

  @override
  String authUseBiometricMessage(String type) {
    String _temp0 = intl.Intl.selectLogic(
      type,
      {
        'fingerprint': 'your fingerprint',
        'faceId': 'facial recognition',
        'iris': 'Retinal scanner',
        'other': 'Biometric',
      },
    );
    return 'Use $_temp0 to quickly log in';
  }

  @override
  String get authEnableBiometricMessage => 'Enable Biometric to quickly log in to your Djamo account';

  @override
  String get authEnableBiometric => 'Enable Biometric';

  @override
  String get authUseBiometricToLogin => 'Use Biometric to log in';

  @override
  String get authExpiredSessionMessage => 'Your session has expired. Please log in again by entering your code.';

  @override
  String get authImpossible => 'Unable to authenticate. Please contact technical support.';

  @override
  String get onboardingEnterFullName => 'Enter your first and last names';

  @override
  String get onboardingLastnameValidationErrMessage => 'Please enter a valid name';

  @override
  String get onboardingFirstnameValidationErrMessage => 'Please enter a valid first name';

  @override
  String get onboardingALeastInformation => 'Some more information';

  @override
  String onboardingGender(String gender) {
    String _temp0 = intl.Intl.selectLogic(
      gender,
      {
        'male': 'Monsieur',
        'female': 'Madame',
        'other': 'Select gender',
      },
    );
    return '$_temp0';
  }

  @override
  String get onboardingGenderValidationErrMessage => 'Select you gender';

  @override
  String get onboardingBirthdayDayField => 'Day';

  @override
  String get onboardingBirthdayMonthField => 'Month';

  @override
  String get onboardingBirthdayYearField => 'Year';

  @override
  String onboardingAgeRestrictionMessage(Object age) {
    return 'You must be at least $age years old to serve';
  }

  @override
  String get onboardingAccountCreationOnGoing => 'Creating your account...';

  @override
  String get passcodeChooseCodeForYourAccount => 'Choose a security code for your Djamo account';

  @override
  String get passcodeConfirmCodeForYourAccount => 'Confirm your security code';

  @override
  String get passcodeChooseNewSecurityCode => 'Choose a new security code';

  @override
  String get passcodeConfirmNewSecurityCode => 'Confirm your new security code';

  @override
  String get passcodeRequestingVCPasscodeReset => 'Requesting code reset in progress...';

  @override
  String get passcodeModifyMyCode => 'Modify my code';

  @override
  String get passcodeSetCardPinTitle => 'Enter your new code PIN';

  @override
  String get passcodeSetConfirmCardPinTitle => 'Confirm your new code PIN';

  @override
  String get passcodeEmptyError => 'Please enter your code PIN';

  @override
  String get passcodeSameDigitsError => 'The code PIN must not contain the same digit';

  @override
  String get passcodeSequentialDigitsError => 'The code PIN must not contain sequential digits';

  @override
  String get passcodeNotMatchError => 'The code PINs do not match';

  @override
  String get passcodeSameError => 'The new passcode must be different from the current one';

  @override
  String get passcodeResetOnGoing => 'Resetting your code Passcode...';

  @override
  String get passcodeResetPCTitle => 'Security code reset';

  @override
  String get passcodeCardPinResetTitle => 'Card PIN reset';

  @override
  String get passcodeCardPinResetSuccess => 'Votre code guichet a été modifié avec succès';

  @override
  String get passcodeLivenessWeWillCheckYourID => 'Nous allons proceder a la verification de votre identite';

  @override
  String get passcodeLivenessInstruction1 => 'Make sure the room you are in is well lit';

  @override
  String get passcodeLivenessInstruction2 => 'Remove your glasses, hats or masks';

  @override
  String get passcodeLivenessConfirmYourId => 'Confirmation of your identity';

  @override
  String get passcodeLivenessConfirmYourIdSubtitle => 'Now you will take a second photo following the instructions given to you';

  @override
  String get passcodeRequestResetOnGoing => 'Requesting a code reset in progress...';

  @override
  String get passcodeLivenessVerificationOnGoingMessage => 'We are verifying your identity.\nPlease stay on this screen.\nVerification takes less than a minute.';

  @override
  String get passcodeLivenessVerificationFailedForPasscode => 'Verification of your identification following your request to reset your security code has failed.';

  @override
  String get passcodeLivenessVerificationFailedForPinCard => 'Verification of your identification following your request to reset your card PIN has failed.';

  @override
  String get passcodeLivenessVerificationTimeoutMessage => 'The waiting time has expired. Please try again.';

  @override
  String get passcodeUpdatingOnGoing => 'Updating your passcode...';

  @override
  String get passcodeUpdatingSuccess => 'Your passcode has been updated successfully';

  @override
  String get orderWhereToReceiveCard => 'Where do you want to receive the card?';

  @override
  String get orderChooseReceptionMode => 'Reception method';

  @override
  String get orderHomeDelivery => 'Deliver me';

  @override
  String orderHomeDeliveryDescription(Object day) {
    return 'Free delivery in $day working days';
  }

  @override
  String get orderPickUp => 'I will go to a relay point';

  @override
  String get orderPickupDescription => 'Free and available immediately';

  @override
  String orderTheCardAt(Object amount) {
    return 'Order the card at $amount';
  }

  @override
  String get orderLater => 'Later';

  @override
  String get orderChooseCity => 'Choose your city';

  @override
  String get orderDeliveryPlace => 'Delivery place';

  @override
  String get orderChooseDeliveryPlace => 'Choose delivery area';

  @override
  String get orderDeliveryAdvice => 'From Monday to Friday. Please choose your workplace.';

  @override
  String get orderDeliveryPlaceRefPointOrCompanyName => 'Reference point / Company name';

  @override
  String get orderDeliveryPlaceRefPointOrCompanyNameHelper => 'Example: Cap Sud';

  @override
  String get orderDeliveryPlaceRefValidationErrMessage => 'Please enter a valid reference point or company name';

  @override
  String get orderDeliveryWarning => 'You are the only one authorized to receive your card. We make no exceptions.';

  @override
  String get orderCardOnGoing => 'Ordering your card...';

  @override
  String get updatingOrderOnGoing => 'Updating your order...';

  @override
  String get orderDeliverySuccessMessage => 'Your order has been successfully placed 🎉. You will be informed of the delivery date.';

  @override
  String get orderPickupSuccessMessage => 'You can now stop by one of our relay points to collect it ⚡️';

  @override
  String get orderPickupLocalizePOS => 'Localiser mon point relais';

  @override
  String get orderCardReplacement => 'Card replacement';

  @override
  String get orderReplaceMyCard => 'Replace my card';

  @override
  String get orderCardReplacementNotice => 'Your card will be permanently terminated and CANNOT be reused, any remaining funds on your current card will be transferred to your replacement card upon activation.';

  @override
  String orderCardReplacementNoticeOnCardCost(Object cardCost) {
    return 'The replacement cost is $cardCost, do you want to continue?';
  }

  @override
  String get orderCardNSFTitle => 'Commander une nouvelle carte';

  @override
  String get orderCardNSFNotice => 'Votre carte a été détruite et ne pourra pas être réutilisée. Les fonds restants sur votre carte détruite seront automatiquement transférés sur votre nouvelle carte dès son activation.';

  @override
  String orderCardNSFNoticeOnCardCost(Object cardCost) {
    return 'Le coût de remplacement est de $cardCost. Voulez-vous continuer? ';
  }

  @override
  String get myOrders => 'My order';

  @override
  String orderNumber(Object number) {
    return 'Order N˚ $number';
  }

  @override
  String get orderSummaryOrderedCard => 'Ordered card';

  @override
  String get orderSummaryStatus => 'Status';

  @override
  String get orderSummaryDeliveryDate => 'Delivery date';

  @override
  String get orderSummaryTrackingNumber => 'Tracking number';

  @override
  String get orderSummaryPickupPoint => 'POS';

  @override
  String get noOrder => 'No order';

  @override
  String get noOrderMessage => 'You have not yet placed an order';

  @override
  String orderStatusDescription(String status) {
    String _temp0 = intl.Intl.selectLogic(
      status,
      {
        'PENDING_VALIDATION': 'Pending validation',
        'PENDING_DELIVERY': 'Pending delivery',
        'PENDING_PICKUP': 'Awaiting collection at the POS',
        'FAILED_VALIDATION': 'Failed validation',
        'FAILED_DELIVERY': 'Rescheduling in progress',
        'DELIVERED': 'Delivered',
        'PICKED_UP': 'Picked up',
        'ACTIVATED': 'Activated',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get appCameraNotAvailable => 'Camera not available';

  @override
  String get appCameraInitOnGoing => 'Initializing the camera...';

  @override
  String get appCameraPermissionTitle => 'Camera permission';

  @override
  String get appCameraPermissionMessage => 'Djamo needs access to your camera to take photos';

  @override
  String get appCameraImpossibleToAccess => 'It is impossible to access the camera. Try again';

  @override
  String get appCameraRetakePhoto => 'Retake the photo';

  @override
  String get appCameraTakeSelfie => 'Take a selfie';

  @override
  String get appCameraTakeSelfieInstruction => 'Position your face in the circle so that it is clearly visible.';

  @override
  String get appCameraTakeSelfieWithIDInstruction => 'Position your face in the circle so that it is clearly visible. Hold your ID in your hand.';

  @override
  String get kycSelectGenderTitle => 'You are ?';

  @override
  String kycGender(String gender) {
    String _temp0 = intl.Intl.selectLogic(
      gender,
      {
        'male': 'A man',
        'female': 'A woman',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get kycHomeLocation => 'Home location';

  @override
  String get kycHomeLocationTitle => 'Home location';

  @override
  String get kycWhereDoYouLive => 'Where do you live ?';

  @override
  String get kycWhereDoYouLiveWithPrecision => 'More precisely';

  @override
  String get kycIdentityDocumentTitle => 'Identification document';

  @override
  String get kycOthersCountries => 'Other countries';

  @override
  String get kycSelectedDocSeemsInvalid => 'The selected document seems invalid';

  @override
  String get kycUploadingYourIds => 'Uploading your ID document...';

  @override
  String get kycCheckingInfoMessage => 'Sending your documents may take up to 2 minutes depending on your internet connection. Please be patient.';

  @override
  String get productChooseThePlan => 'Choose a plan';

  @override
  String productFullNameByIdentifier(String identifier) {
    String _temp0 = intl.Intl.selectLogic(
      identifier,
      {
        'free': 'Free',
        'premium': 'Premium',
        'other': '$identifier',
      },
    );
    return '$_temp0 Plan';
  }

  @override
  String get productPCName => 'Physical card';

  @override
  String productPCCost(Object amount) {
    return 'Carte physique à $amount';
  }

  @override
  String get productDjamoVC => 'Carte virtuelle Djamo';

  @override
  String get productDjamoPC => 'Carte physique Djamo';

  @override
  String productPCDailyCeiling(Object amount) {
    return 'Plafond journalier $amount';
  }

  @override
  String productCardMomoTransferFees(Object fees) {
    return 'Transfert vers Mobile Money $fees';
  }

  @override
  String get productPCFreeATMWithdrawal => 'Free withdrawals at all ATMs';

  @override
  String get productPCFreeIBAN => 'Free Account number';

  @override
  String get productPCAccessToInvest => 'Djamo Invest';

  @override
  String productVCMonthlyCeiling(Object amount) {
    return 'Monthly ceiling $amount';
  }

  @override
  String get productVCNoBankAccountTopUp => 'No top-ups via bank account';

  @override
  String get productVCNoIBAN => 'No Account number';

  @override
  String get offerMonthly => '/month';

  @override
  String get offerAllBenefitsOfAndMore => 'All Free benefits included';

  @override
  String get offerFreeIBAN => 'Free Account number';

  @override
  String get offerFreeWithdrawal => 'Free ATM withdrawals';

  @override
  String get offerFreeRejectFee => '0 rejection fees';

  @override
  String get offerFreeTransfer => 'Transfers to Mobile Money and Banks at 1.5%';

  @override
  String get offerFreeVaults => '2 simultaneous vaults';

  @override
  String get offerPremiumTransfer => 'Free transfers to Mobile Money';

  @override
  String get offerPremiumBank => 'Free transfers to Banks';

  @override
  String get offerPremiumVaults => '10 simultaneous vaults';

  @override
  String get offerPremiumPriority => 'Priority customer service';

  @override
  String get offerPremiumBonus => '2% bonus on payments';

  @override
  String serviceGroupName(String identifier) {
    String _temp0 = intl.Intl.selectLogic(
      identifier,
      {
        'transfer': 'Transfer',
        'services': 'Bills',
        'card': 'My card',
        'iban': 'Account number',
        'subscriptions': 'Subscriptions',
        'pi': 'PI',
        'currency': 'Currency',
        'business': 'Business',
        'airtime': 'Airtime',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get serviceDeposit => 'Ajouter de l’argent';

  @override
  String get serviceTransfer => 'Transférer de l’argent';

  @override
  String get serviceBillPayment => 'Bills';

  @override
  String get serviceAirtime => 'Airtime';

  @override
  String get serviceCard => 'Gérer ma Carte';

  @override
  String get serviceIban => 'Numéro de compte';

  @override
  String get serviceSubscriptions => 'Abonnements';

  @override
  String get serviceSelectDepositService => 'Faites un dépôt via';

  @override
  String get serviceSelectTransferService => 'Transférer de l\'argent';

  @override
  String get serviceSendOn => 'Envoyer sur';

  @override
  String get serviceUnavailable => 'Service unavailable';

  @override
  String get accountMainAccountName => 'Current account';

  @override
  String get accountCardAccountName => 'Card';

  @override
  String get accountVaultAccountName => 'Vaults';

  @override
  String accountSubscriptionProductName(String identifier) {
    String _temp0 = intl.Intl.selectLogic(
      identifier,
      {
        'premium': 'Premium',
        'other': 'Free',
      },
    );
    return '$_temp0';
  }

  @override
  String accountSubscriptionCounterNonSufficientFundsBillingLabel(Object amount) {
    return '$amount by rejection for insufficient funds';
  }

  @override
  String get accountSubscriptionCounterWireTransferLabel => 'Transfer to bank account';

  @override
  String get accountSubscriptionPaymentBillingLabel => '0 fees on infinite payments.\nExchange fees may apply for payments in foreign currencies.';

  @override
  String get accountSubscriptionPaymentMinTransferFeeForNonPremiumBillingLabel => 'Minimum rate: 150 FCFA';

  @override
  String get accountSubscriptionChangePlan => 'Change plan';

  @override
  String get accountSubscriptionChangingPlan => 'Change of tariff plan';

  @override
  String accountSubscriptionChangingPlanFreeToPremiumWaringMessage(Object name, Object price) {
    return 'You will immediately switch to $name $price/month';
  }

  @override
  String accountSubscriptionChangingPlanFromPremiumToFreeWaringMessage(Object date, Object plan) {
    return 'Change of pricing plan.\nYou will lose your $plan benefits on $date';
  }

  @override
  String get accountsYourAccountIsLockedCheckMessage => 'Your account is locked. Unlock it to continue.';

  @override
  String get depositFeesLabel => 'Deposit fees';

  @override
  String get depositFreeCashInAgentUpsellMessage => 'Save time! Top up your account with a nearby Djamo agent with no fees.';

  @override
  String get depositBankTransferFreeOfCharge => 'Free transfer';

  @override
  String get depositBankWithTransferFees => 'Transfer with fees';

  @override
  String get depositAmountToBeReceived => 'Amount to be received';

  @override
  String get depositBankDepositStepsToFollow => 'Steps to follow';

  @override
  String get depositBankSelectBankTitle => 'Select your bank';

  @override
  String get depositBankAccountDetails => 'Account details';

  @override
  String get depositBankAccountDetailsBankCode => 'Bank code';

  @override
  String get depositBankAccountDetailsAgencyCode => 'Agency code';

  @override
  String get depositBankAccountDetailsAccountNumber => 'Account number';

  @override
  String get depositBankAccountDetailsRIBKey => 'RIB key';

  @override
  String get depositBankCopyRIBKey => 'Copy the RIB';

  @override
  String depositBankShareRIBMessageTitle(Object holder) {
    return '$holder Bank account information';
  }

  @override
  String depositBankShareRIBModalTitle(Object holder) {
    return 'Partager les informations du compte bancaire de $holder';
  }

  @override
  String depositBankShareRIBMessage(Object accountHolder, Object holder, Object holderBankLabel, Object wireBankAccountAccountNumber, Object wireBankAccountAgencyCode, Object wireBankAccountBankCode, Object wireBankAccountRIBKey) {
    return '$holder Bank Account Details for Branch Payment\nBank: $holderBankLabel\nAccount Name: \$$accountHolder\nBank Code: $wireBankAccountBankCode\nAgency Code: $wireBankAccountAgencyCode\nAccount Number: $wireBankAccountAccountNumber\nRIB Key: $wireBankAccountRIBKey';
  }

  @override
  String get depositBankCopyRIBKeySuccess => 'RIB key copied ✅';

  @override
  String get depositBankSendRIB => 'Send the RIB';

  @override
  String get depositBankSelectBankInstructionDescription => 'Select the bank from which you will make the transfer';

  @override
  String get depositBankMakeDepositDescriptionForWireTransfer => 'Make the transfer to Djamo\'s bank account';

  @override
  String get depositBankEnterAmountDescription => 'Enter the amount transferred from your bank account';

  @override
  String get depositBankAddDepositProofTitle => 'Add a screenshot of the transfer as proof';

  @override
  String get depositBankMakeDepositTitle => 'Bank Transfer';

  @override
  String get depositBankIMadePayment => 'I made the payment';

  @override
  String get depositBankMakeDepositDescriptionForPhysicalDeposit => 'Complete the payment slip to complete the transaction';

  @override
  String get depositBankProofOfTransfer => 'Proof of transfer';

  @override
  String get requestSent => 'Request sent';

  @override
  String depositBankProcessingTime(Object time) {
    return 'Processing time: $time hours';
  }

  @override
  String get depositBankMinimumAmount => 'Minimum deposi amount';

  @override
  String get depositBankDetails => 'Bank details';

  @override
  String get depositBankDetailsNotice => 'Use this information for the deposit';

  @override
  String get depositBankAccountName => 'Account name';

  @override
  String get depositBankAccountNameCopied => 'Account name copied ✅';

  @override
  String get depositBankAccountNumber => 'Number to be filled in';

  @override
  String get depositBankAccountNumberCopied => 'Account number copied ✅';

  @override
  String get depositBankEnterAmountLabel => 'Enter the amount';

  @override
  String get depositBankTransferAmount => 'Bank transfer amount';

  @override
  String get depositBankTransferReceipt => 'Deposit receipt';

  @override
  String depositBankTransferViaIBAN(Object ibanFeatureName) {
    return 'Transfer via my $ibanFeatureName';
  }

  @override
  String get depositToDjamoAccount => 'Deposit to Djamo account';

  @override
  String get availableWithPhysicalCard => 'Available with the physical card';

  @override
  String get depositBankAvailableDepositOptions => 'Available options';

  @override
  String get depositBankAcceptedProofScreenshotTitle => 'Accepted proof screenshot';

  @override
  String get depositBankAcceptedProofScreenshot1 => 'Application confirmation screen';

  @override
  String get depositBankAcceptedProofScreenshot2 => 'Confirmation SMS/Email';

  @override
  String get depositBankAcceptedProofScreenshot3 => 'Stamped transfer slip';

  @override
  String get depositBankAccessToYourBankWebsite => 'Access your bank\'s website';

  @override
  String get depositBankAccessToYourBankApp => 'Access your bank\'s app';

  @override
  String depositBankAddHolderAsBeneficiary(Object holder) {
    return 'Add $holder as new beneficiary';
  }

  @override
  String get depositBankMakeYouWireTransfer => 'Make your transfer';

  @override
  String get depositBankTakeScreenshotOfConfirmation => 'Take a screenshot of the confirmation';

  @override
  String get depositBankBackInDjamoToContinue => 'Go back to Djamo to enter the amount and upload the screenshot';

  @override
  String depositBankOpenBankApp(Object appName) {
    return 'Open $appName';
  }

  @override
  String depositBankHolderAccountAtBank(Object bank, Object holder) {
    return '$holder at $bank';
  }

  @override
  String get depositBankPrepareYourTransferReceipt => 'Prepare your transfer receipt';

  @override
  String get depositBankPrepareYourTransferReceiptWarning => 'Make sure you have your payment receipt physically or in a photo before moving on to the next step.';

  @override
  String get depositBankSuccessTitle => 'Verification in progress...';

  @override
  String get depositMomoUseMyPhoneNumber => 'Use my phone number';

  @override
  String get depositMomoAddAnotherPhoneNumber => 'Add another phone number';

  @override
  String depositMomoUseAnotherServicePhoneNumber(Object service) {
    return 'Use another $service\'s phone number';
  }

  @override
  String depositOperatorFees(Object fees) {
    return 'Operator fees ($fees%)';
  }

  @override
  String get depositMomoValidateWithOrangeApp => 'Validate with Orange Money app';

  @override
  String get depositMomoValidateWithMaxItApp => 'Validate with Max IT';

  @override
  String get depositMomoValidateWithUSSD => 'Validate with USSD';

  @override
  String get depositMomoConfirm => 'Confirm the deposit';

  @override
  String get depositMomoConfirmation => 'Confirmation';

  @override
  String get depositMomoEnterConfirmationCodeHint => 'Enter the code received via SMS in the field below and then click on “Confirm the deposit”';

  @override
  String get depositMomoConfirmDeposit => 'Confirm the deposit';

  @override
  String get depositMomoObtainConfirmationCode => 'Obtain your confirmation code by dialing';

  @override
  String get depositMomoEnterConfirmationCode => 'Enter the received code';

  @override
  String get depositMomoOnGoing => 'Processing your deposit...';

  @override
  String depositMomoServiceOnGoing(Object service) {
    return 'Processing your $service deposit...';
  }

  @override
  String get depositMomoWeNeedYourConfirmation => 'We just need your confirmation';

  @override
  String depositMomoValidationInstruction(Object service, Object syntax) {
    return 'Compose the code $syntax to validate $service deposit';
  }

  @override
  String get phoneNumberUpdatedSuccessMessage => 'Phone number updated successfully';

  @override
  String get depositCancel => 'Cancel the deposit';

  @override
  String get depositSuccessTitle => 'Successful deposit';

  @override
  String depositYouCardCantHaveSomeAmountMonthly(Object monthlyCashInLimit) {
    return 'Your card cannot have more than $monthlyCashInLimit in the month.';
  }

  @override
  String get depositMonthlyLimitReached => 'You cannot make a deposit because you have reached your monthly deposit limit.';

  @override
  String depositVcMonthlyLimitReached(Object monthlyLimitAmount) {
    return 'Your monthly deposit limit is $monthlyLimitAmount.\nVerify your identification to lift this limit';
  }

  @override
  String depositPaymentSubscriptionDepositAmountInsufficient(Object sufficientAmount) {
    return 'This amount will not be enough to cover your subscription. Please top up at least $sufficientAmount';
  }

  @override
  String get depositYourDepositFailed => 'Your deposit failed';

  @override
  String transferTypeTitle(String type) {
    String _temp0 = intl.Intl.selectLogic(
      type,
      {
        'local': 'Local transfer',
        'internation': 'International transfer',
        'other': 'Transfert',
      },
    );
    return '$_temp0';
  }

  @override
  String get transfer => 'Transfer';

  @override
  String beneficiariesNextCashInPhoneNumberModificationMessage(String remainingDay) {
    String _temp0 = intl.Intl.selectLogic(
      remainingDay,
      {
        '0': '0 day',
        '1': '1 day',
        'other': '$remainingDay days',
      },
    );
    return 'You will be able to modify this number in $_temp0';
  }

  @override
  String get transferSendBy => 'Send by';

  @override
  String get transferSelectBeneficiary => 'Select the beneficiary';

  @override
  String get send => 'Send';

  @override
  String get transferSearchContact => 'Search for contact';

  @override
  String get transferBeneficiaryNumber => 'Beneficiary\'s phone number';

  @override
  String get transferP2PDescription => 'Add a note';

  @override
  String get transferBeneficiaryName => 'Beneficiary\'s name';

  @override
  String get transferIPayWithdrawalFee => 'I pay the withdrawal fees';

  @override
  String get transferTotalAmountToPay => 'Total amount to pay';

  @override
  String transferTotalAmountToPayIsGreaterThanBalance(Object balance) {
    return 'The total amount to pay is greater than your balance $balance';
  }

  @override
  String get transferWarningMessageForWrongPhoneNumber => 'Attention! In case of error, you will not be able to recover the transferred money.';

  @override
  String get vaultTypeClassicLabel => 'Classic';

  @override
  String get vaultTypeCashbackLabel => 'Cashback';

  @override
  String get vaultTypeBlockedLabel => 'blocked';

  @override
  String get vaultTypeChallengeLabel => 'Challenge';

  @override
  String get vaultMyVaults => 'My vaults';

  @override
  String get vaultChallenges => 'Challenges';

  @override
  String get vaultCreateNewVaultTile => 'Create a new vault';

  @override
  String get vaultModifyIcon => 'Modify icon';

  @override
  String get vaultNameFieldLabel => 'Vault name';

  @override
  String get vaultDefineBlockingStatusTitle => 'Block the vault';

  @override
  String get vaultRecurringTransferDescription => 'Save twice as much without thinking about it';

  @override
  String vaultWeeklyRecurrenceFrequency(Object weekDay) {
    return 'Each $weekDay';
  }

  @override
  String vaultMonthlyRecurrenceFrequency(Object day) {
    return 'Each $day of the month';
  }

  @override
  String get vaultDailyRecurrenceFrequency => 'Every day';

  @override
  String vaultCurrentBalanceOf(Object vaultName) {
    return 'Balance Vault $vaultName';
  }

  @override
  String get vaultDetailsTitle => 'Vault details';

  @override
  String get vaultChallengeDetailsTitle => 'Challenge details';

  @override
  String get vaultSelectAnIconTitle => 'Select an icon';

  @override
  String get vaultSelectAnIconDescription => 'Choose an icon that represents your vault';

  @override
  String get vaultDeadlineLabel => 'Deadline';

  @override
  String get vaultSparedChangeTag => 'Spare change';

  @override
  String get vaultRecurringTransferTag => 'R. transfer';

  @override
  String get vaultCreateVault => 'Create a vault';

  @override
  String get vaultCreationOnGoing => 'Creating your vault...';

  @override
  String get vaultAmountValidationExceedBalanceError => 'The amount must not exceed your vault\'s balance';

  @override
  String get vaultSettings => 'Vault settings';

  @override
  String get vaultCustomize => 'Customize your vault';

  @override
  String get vaultCustomizeDescription => 'Change the name and icon of the vault';

  @override
  String get vaultDeleteVault => 'Delete the vault';

  @override
  String vaultSparedChangeAcceleratorIndication(Object factor) {
    return 'Accelerator: x$factor';
  }

  @override
  String get vaultGiveUpChallenge => 'Quit the challenge';

  @override
  String vaultDeleteConfirmationTitle(Object vaultName) {
    return 'Are you sure you want to delete your $vaultName vault?';
  }

  @override
  String get vaultDeleteConfirmationWarning => 'The money in the vault will be returned to your main account.';

  @override
  String get vaultDeletedSuccess => 'Vault has been deleted';

  @override
  String get vaultChallenge => 'Challenge';

  @override
  String get vaultJoinChallenge => 'Join the challenge';

  @override
  String get vaultInfoOnChallenge => 'Information on the challenge';

  @override
  String get vaultChallengeReward => 'Reward';

  @override
  String get vaultMinChallengeDeposit => 'Minimum deposit';

  @override
  String vaultPercentHasSuccess(Object percent) {
    return '$percent% has succeeded';
  }

  @override
  String get vaultEnrollChallengeOnGoing => 'Enrolling in the challenge...';

  @override
  String vaultTransactionOfVault(Object vaultName) {
    return '$vaultName\'s transactions';
  }

  @override
  String get vaultUniqueNameErrorMessage => 'This name is already used by another vault';

  @override
  String get blockedUntilChallengeEnd => 'Until the end of the challenge';

  @override
  String vaultJoinChallengeSuccessMessage(Object challengeName) {
    return 'Great! You are now participating in the $challengeName challenge.';
  }

  @override
  String get vaultCantCustomizeChallengeVault => 'You can\'t customize a challenge vault';

  @override
  String get vaultQuitChallengeWarningMessage => 'Abandoning the challenge will delete the vault. If there is still money in the vault, it will be returned to your main account.';

  @override
  String vaultYouAreNotPartOfChallenge(Object challengeName) {
    return 'You are no longer participating in the $challengeName Challenge.';
  }

  @override
  String vaultBlockWarningMessage(Object date) {
    return 'Your vault will be locked until $date. You will not be able to unlock it before.';
  }

  @override
  String get vaultDoYouWantToEnableAutomaticDeposit => 'Do you want to automatically provision your vault?';

  @override
  String get transactionOnGoing => 'Transaction in progress...';

  @override
  String get transactions => 'Transactions';

  @override
  String get transferFailedMessage => 'The transfer processing failed. Please try again.';

  @override
  String get loanRequestFailedMessage => 'Your loan request has failed. Please try again';

  @override
  String get loanIncreaseCreditLimit => 'Increase your credit limit';

  @override
  String loanRepayBeforeDueDateSpecific(Object date) {
    return 'Repay your loan before $date to increase your credit limit.';
  }

  @override
  String get loanRepayNowToAvoidBeingBlacklisted => 'Repay your loan now to avoid being blacklisted in the UEMOA zone.';

  @override
  String loanRepayBeforeDueDateSpecificWithDate(Object date) {
    return 'Repay your loan before $date to avoid additional penalties.';
  }

  @override
  String loanRepayLateWarning(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: 'Warning - $number days late',
      one: 'Warning - 1 day late',
    );
    return '$_temp0';
  }

  @override
  String loanAvoidPenaltiesDaysLeft(num days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Avoid penalties - $days days left',
      one: 'Avoid penalties - 1 day left',
    );
    return '$_temp0';
  }

  @override
  String get transactionsChooseCategory => 'Choose a category';

  @override
  String transactionStatusLabel(String status) {
    String _temp0 = intl.Intl.selectLogic(
      status,
      {
        'validated': 'Completed',
        'completed': 'Completed',
        'pending': 'Pending',
        'failed': 'Failed',
        'frozen': 'Being verified',
        'initiated': 'Initiated',
        'other': '-',
      },
    );
    return '$_temp0';
  }

  @override
  String get transactionReceiptDateTimeTitle => 'Date & time';

  @override
  String get transactionReceiptStatusTitle => 'Status';

  @override
  String get transactionReceiptAmountWithoutFeesTitle => 'Amount without fees';

  @override
  String get transactionReceiptFeesTitle => 'Fees';

  @override
  String get transactionReceiptExchangeRateTitle => 'Exchange rate';

  @override
  String get transactionReceiptAmountTitle => 'Amount';

  @override
  String get transactionReceiptReferenceTitle => 'Reference';

  @override
  String get transactionReceiptBillReloadCodeTitle => 'Reload code';

  @override
  String get transactionReceiptBillMessageTitle => 'Message';

  @override
  String get transactionEmptyTransactionsListMessage => 'Votre historique de transaction s’affichera ici';

  @override
  String get transactionsReceiptsTitle => 'Period';

  @override
  String get transactionsReceiptsCustomPeriod => 'Custom Period';

  @override
  String get transactionsReceiptsLastMonthPeriod => 'Last month';

  @override
  String get transactionsReceiptsLastThreeMonthPeriod => 'Last 3 monthes';

  @override
  String get transactionsReceiptsLastSixMonthPeriod => 'Last 6 monthes';

  @override
  String get transactionsReceiptsDownloadTitle => 'Select format:';

  @override
  String get transactionsReceiptsDownloadPDF => 'Download as PDF';

  @override
  String get transactionsReceiptsDownloadCSV => 'Download as CSV';

  @override
  String get transactionsReceiptsDownloadLabel => 'Download';

  @override
  String get uncategorizedTransactions => 'Uncategorized transactions';

  @override
  String get transactionProofOfPaymentRequired => 'You must provide a photo of a receipt for this payment to avoid card suspension. This is a regulation of the central bank (BCEAO).';

  @override
  String get transactionProvideProof => 'Provide proof';

  @override
  String get transactionProofRejected => 'Proof rejected';

  @override
  String get transactionProofRejectedMessage => 'The proof you submitted for your payment has been rejected. Please submit another proof.';

  @override
  String get transactionRetryVerification => 'Retry verification';

  @override
  String get transactionPaymentValidated => 'Payment validated';

  @override
  String get transactionProofValidated => 'The proof you submitted for your payment has been validated.';

  @override
  String get transactionVerificationInProgress => 'Verification in progress';

  @override
  String get transactionProofVerificationInProgress => 'The proof you submitted for your payment is being verified.';

  @override
  String get transactionProofOfPaymentRequiredMessage => 'Please provide proof of payment to avoid card suspension.';

  @override
  String get transactionP2PNoteTitle => 'Note';

  @override
  String get sendForVerification => 'Send for verification';

  @override
  String get importAnotherImage => 'Import another image';

  @override
  String get transactionVerificationInProgressMessage => 'Verification in progress. Your proof of payment is being reviewed to confirm its authenticity and protect you from payment suspension.';

  @override
  String get remainingToRepay => 'Remaining to repay';

  @override
  String get chooseMonth => 'Choose a month';

  @override
  String get expensesByCategory => 'Expenses by category';

  @override
  String get amountValidationRequiredError => 'Please enter an amount';

  @override
  String amountValidationExceedMaxError(Object maxAmount) {
    return 'The amount must not exceed $maxAmount';
  }

  @override
  String amountValidationExceedMinError(Object minAmount) {
    return 'The amount must be at least $minAmount';
  }

  @override
  String amountValidationMultipleOfError(Object multiple) {
    return 'The amount must be a multiple of $multiple';
  }

  @override
  String amountValidationExceedBalanceError(Object balance) {
    return 'The amount must not exceed your main account balance.\nMain account balance: $balance';
  }

  @override
  String get conversion => 'Conversion';

  @override
  String get iban => 'Account number';

  @override
  String get ibanAccountNumber => 'Account number';

  @override
  String get ibanAccountNumberAbbr => 'Account number';

  @override
  String get ibanGetYourAccountNumber => 'Get your account number';

  @override
  String get ibanGetYourAccountNumberDescription => 'Now receive all your WAEMU bank transfers directly into your Djamo account and free of charge';

  @override
  String get ibanGetMyAccountNumber => 'Get my account number';

  @override
  String get ibanYourActivity => 'Your activity';

  @override
  String get ibanYourActivityQuestion => 'What is your activity?';

  @override
  String get ibanAverageIncome => 'Average monthly income';

  @override
  String get ibanAverageIncomeQuestion => 'What is your average monthly income?';

  @override
  String get ibanContinueWithoutGiveTheseInfo => 'Continue without giving this information';

  @override
  String get ibanCreationOnGoing => 'Account number creation in progress...';

  @override
  String get ibanPendingCreation => 'Account number creation in progress';

  @override
  String get ibanWeWillNotifyYou => 'We will notify you when your Account number is available';

  @override
  String get ibanYourAccountNumberCreationIsOnGoing => 'Your account number creation is in progress...';

  @override
  String get ibanYouWillReceiveNotification => 'You will receive a notification when your account number is available';

  @override
  String get ibanLocalWireTransfer => 'Local transfer';

  @override
  String get ibanLocalWireTransferSubtitle => 'Receive a bank transfer from WAEMU';

  @override
  String get ibanInternationalWireTransfer => 'International transfer';

  @override
  String get ibanInternationalWireTransferSubtitle => 'Receive a bank transfer from international';

  @override
  String get ibanBeneficiaryBankName => 'Beneficiary bank name';

  @override
  String get ibanBeneficiaryName => 'Beneficiary name';

  @override
  String get ibanBeneficiaryAccountNumber => 'Beneficiary account number';

  @override
  String get ibanAccountNumberForInternationalTransfer => 'Account number for international transfer';

  @override
  String get ibanYourAccountNumberIsProvidedBy => 'Your account number is provided by';

  @override
  String get ibanComplianceWarningMessage => 'This account number is not a bank account but only a means to allow you to receive a WAEMU bank transfer into your Djamo account.';

  @override
  String get ibanShareShortUsageDescription => 'Recevoir un virement bancaire international';

  @override
  String get ibanAccountNumberShareShortUsageDescription => 'Recevoir un virement bancaire de l\'UAEMOA';

  @override
  String ibanBankProviderName(String isoCode) {
    String _temp0 = intl.Intl.selectLogic(
      isoCode,
      {
        'ci': 'Bank of Abidjan (BDA)',
        'sn': 'Bank of Dakar (BDK)',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get ibanInPdfAccountDetail => 'Account details';

  @override
  String get ibanInPdfAccountHolder => 'Account holder';

  @override
  String get ibanInPdfAgencyCode => 'Agency code';

  @override
  String get ibanInPdfAccountNumber => 'Account number';

  @override
  String get ibanInPdfRIBKey => 'RIB key';

  @override
  String get ibanInPdfInternationalIdentifier => 'International identifier';

  @override
  String get ibanBICSWIFT => 'BIC/SWIFT';

  @override
  String get ibanUseIBANForWireTransferMessage => 'Please use the information below to make a UEMOA bank transfer from your banking application';

  @override
  String loansBorrowUpTo(Object amount) {
    return 'Borrow up to $amount';
  }

  @override
  String get loansCreditLimit => 'My credit limit';

  @override
  String get loanHistory => 'My loan history';

  @override
  String get howItWorks => 'How it works?';

  @override
  String get loanBorrowedAmount => 'Borrowed amount';

  @override
  String get loanDisbursementDate => 'Disbursement date';

  @override
  String get loanAccelerationFees => 'Acceleration fees';

  @override
  String get loanDisbursementFees => 'Disbursement fees';

  @override
  String get monthlyInterestRate => 'Monthly interest rate';

  @override
  String get loanPenalties => 'Penalties';

  @override
  String get loanLastRepayment => 'Last repayment';

  @override
  String get amountReceived => 'Amount received';

  @override
  String get loanRepaidAmount => 'Repaid amount';

  @override
  String get transactionsWillAppearHere => 'Your transactions will appear here.';

  @override
  String get loanEstimatedBorrowingCapacity => 'Estimated borrowing capacity';

  @override
  String get loanDailyBorrowingCapacity => 'Daily borrowing capacity';

  @override
  String get loansCriteria => 'Criteria';

  @override
  String updateDate(Object date) {
    return 'Updated on $date';
  }

  @override
  String get loansFastReception => 'Fast reception';

  @override
  String get loansOnlyTwoPercentFees => 'Only 2% fees';

  @override
  String get loansRepayIn30Days => 'Repay in 30 days';

  @override
  String get loansUnderstandWhy => 'Understand why';

  @override
  String get loansNotEligibleCriteria => 'You are not yet eligible for a loan';

  @override
  String get loansImproveEligibilityCriteria => 'Improve your eligibility by meeting these criteria';

  @override
  String get loansDepositAtLeast30k => 'Have deposited at least 30,000 F in the last 3 months';

  @override
  String get loansHavePhysicalCard => 'Have a physical card';

  @override
  String get loansBorrow => 'Borrow';

  @override
  String get loansTakeCredit => 'Take a loan';

  @override
  String get loanDueDate => 'Due date';

  @override
  String get loanInstantReceptionFees => 'Instant reception fees';

  @override
  String get loanMonthlyAPR => 'Monthly APR';

  @override
  String get loanAmountToRepay => 'Amount to repay';

  @override
  String get repay => 'Repay';

  @override
  String loanRepayBeforeDueDate(Object amount) {
    return 'Repay your loan before the due date to increase your borrowing capacity to $amount';
  }

  @override
  String get loanRepayBeforeDueDateWarning => 'Repay your loan before the due date to avoid penalties and losing access to the credit service';

  @override
  String get loanRepayNowToAvoidPenalties => 'Repay your loan now to avoid accumulating penalties and being reported to the UEMOA credit bureau';

  @override
  String get monthlyLabel => 'monthly';

  @override
  String get annuallyLabel => 'annually';

  @override
  String get dailyLabel => 'daily';

  @override
  String get monthPrefix => 'month(s)';

  @override
  String get yearPrefix => 'year(s)';

  @override
  String get daysPrefix => 'day(s)';

  @override
  String get lastDay => 'Dernier jour';

  @override
  String daysLate(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours de retard',
      one: '1 jour de retard',
      zero: 'Pas de retard',
    );
    return '$_temp0';
  }

  @override
  String get loansOnboardingProfessionalSituation => 'What is your professional situation?';

  @override
  String get loansOnboardingSectorOfActivity => 'What is your sector of activity?';

  @override
  String get loansOnboardingShooseSectorOfActivity => 'Choose a sector of activity';

  @override
  String get loansOnboardingAverageMonthlyIncome => 'What is your average monthly income?';

  @override
  String get loansOnboardingTermsOfEngagement => 'Terms of engagement';

  @override
  String get loansOnboardingProfessionalStateSalaried => 'Salaried';

  @override
  String get loansOnboardingProfessionalStateSelfEmployed => 'Self-employed';

  @override
  String get loansOnboardingProfessionalStateRetired => 'Retired';

  @override
  String get loansOnboardingProfessionalStateStudent => 'Student';

  @override
  String get loansOnboardingProfessionalStateUnemployed => 'Unemployed';

  @override
  String get other => 'Other';

  @override
  String get loansOnboardingSectorBankingInsurance => 'Banking / Insurance';

  @override
  String get loansOnboardingSectorITTelecom => 'IT / Telecom';

  @override
  String get loansOnboardingSectorCommerce => 'Commerce';

  @override
  String get loansOnboardingSectorScience => 'Science';

  @override
  String get loansOnboardingSectorEducation => 'Education';

  @override
  String get loansOnboardingSectorTextile => 'Textile';

  @override
  String get loansOnboardingSectorLogistics => 'Logistics';

  @override
  String get loansOnboardingSectorConstruction => 'Construction';

  @override
  String get loansOnboardingSectorCraftsmanship => 'Craftsmanship';

  @override
  String get loanDisbursementInProgress => 'Your loan is being disbursed. You can repay it once it is disbursed.';

  @override
  String loanFullyRepaidMessageSuccess(Object amount) {
    return '$amount has been repaid. You have fully repaid your loan.';
  }

  @override
  String get loanFullyRepaidMessage => 'You have already fully repaid your loan.';

  @override
  String loanCreditReversalMessage(Object hours) {
    return 'Your credit will be reversed to your main account within $hours hours.';
  }

  @override
  String get loanAccelerateDisbursement => 'Accelerate disbursement';

  @override
  String get loanCreditReversalTodayMessage => 'Your credit will be reversed to your main account today.';

  @override
  String get loanBorrowing => 'You borrow';

  @override
  String get loanCreditWillBeCreditedIn48h => 'Your credit will be credited to your main account within 48 hours.';

  @override
  String get loanDisplayMessage => 'Your loans will be displayed here.';

  @override
  String get loanDisbursed => 'Disbursement';

  @override
  String amountWithPenalty(Object amount) {
    return '(including $amount penalty)';
  }

  @override
  String get accountAnalysis => 'Account analysis';

  @override
  String get loanApproval => 'Loan approval';

  @override
  String get loanDisbursementMessage => 'Loan disbursement';

  @override
  String get loanCreditWillBeCreditedSoon => 'Your credit will be credited to your main account shortly.';

  @override
  String get loansImproveEligibility => 'Improve my eligibility';

  @override
  String get moreThanMillionCFA => 'More than 1,000,000 F CFA';

  @override
  String get late => 'Late';

  @override
  String get pending => 'Pending';

  @override
  String get loading => 'Loading';

  @override
  String get refunded => 'Refunded';

  @override
  String get reload => 'Reload';

  @override
  String get referralMyCode => 'My referral code';

  @override
  String get referralInviteFriend => 'Invite a friend';

  @override
  String referralAdvantagesTitle(Object amount) {
    return '$amount 🎉';
  }

  @override
  String get referralAdvantagesDescription => 'To get your bonus, you and your friend must have a physical Djamo card, and he or she must make a payment of at least 5.000 F.';

  @override
  String referralWinUpTo(Object amount) {
    return 'Win up to $amount in three steps!';
  }

  @override
  String get referralReceiveGainAfterFirstGoldChildPayment => '1️⃣ You have a Djamo physical card.\n2️⃣ Your friend has a Djamo physical card.\n3️⃣ Your friend makes a payment of at least 5.000 F with Djamo';

  @override
  String get referralPotentialBonus => 'Potential Bonus';

  @override
  String get referralActivatedBonus => 'Activated Bonus';

  @override
  String get referralSeeBonusDetail => 'See bonus details';

  @override
  String get referralInviteFriendAndWin => 'Invite a friend and win';

  @override
  String referralInvitedFriendsCount(Object count) {
    return 'Invited friends ($count)';
  }

  @override
  String get referralDefaultShareTitle => 'Share my Djamo referral code';

  @override
  String referralDefaultShareMessage(Object code) {
    return 'Do you know Djamo? I chose you to be one of the first to receive your Visa card.\nSign up with my code $code. Click on this link to download the app';
  }

  @override
  String get statisticsTotalExpenses => 'Total expenses';

  @override
  String get beneficiariesContactPermission => 'Contact permission';

  @override
  String get beneficiariesGiveContactPermission => 'We need your permission to access your contacts to provide';

  @override
  String get beneficiariesMyContacts => 'My contacts';

  @override
  String get beneficiariesRecent => 'Recent beneficiaries';

  @override
  String get deposit => 'Deposit';

  @override
  String get depositNoun => 'Deposit';

  @override
  String get paymentVariation => 'The dates and payment amounts may vary depending on the month and the merchant.';

  @override
  String paymentDelayed(Object merchantName) {
    return 'Payment $merchantName is delayed';
  }

  @override
  String paymentUpcoming(Object merchantName) {
    return 'Payment $merchantName upcoming';
  }

  @override
  String dueDateComingSoon(Object days) {
    return 'coming in $days jour';
  }

  @override
  String get dueDateToday => 'coming today';

  @override
  String dueDateDue(Object date) {
    return 'due on $date';
  }

  @override
  String dueDateComing(Object date) {
    return 'coming on $date';
  }

  @override
  String get yourAccountIsPending => 'Your account is pending';

  @override
  String amountWillBeCredited(Object amount) {
    return '$amount will be credited shortly to your main account.';
  }

  @override
  String get cardsNoun => 'Card';

  @override
  String get cardsSeeDetails => 'See informations';

  @override
  String get cardsLockCard => 'Lock';

  @override
  String cardDestroyedAt(Object date) {
    return 'Card destroyed the $date';
  }

  @override
  String get cardsLockCardDescription => 'Bloquez de facon temporaire';

  @override
  String get cardsLockOnGoing => 'Locking the card...';

  @override
  String get cardsUnlockCard => 'Unlock the card';

  @override
  String get cardsUnlockCardDescription => 'Débloquez votre carte Djamo';

  @override
  String get cardsUnlockOnGoing => 'Unlocking the card...';

  @override
  String get cardsManageYourSubscriptions => 'Manage your subscriptions';

  @override
  String cardsCurrentSubscriptionsCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count subscriptions identified',
      one: '1 subscription identified',
      zero: 'No subscription',
    );
    return '$_temp0';
  }

  @override
  String get cardsReplaceCard => 'Replace the card';

  @override
  String get cardsReplaceCardDescription => 'Replace your Djamo card';

  @override
  String get cardsSeeMyOrders => 'See my orders';

  @override
  String get cardsSeeMyOrdersDescription => 'Track the status of your orders';

  @override
  String get cardsChangeCardPin => 'Change the card PIN';

  @override
  String get cardDestroyedNSFTitle => 'Your card has been destroyed';

  @override
  String cardDestroyedNSFPhysicalContent(Object nsfCount) {
    return 'The reason: 20 failed paiments strike. Order a new card here.';
  }

  @override
  String cardDestroyedNSFVirtualContent(Object nsfCount) {
    return 'The reason: 20 failed paiments strike. Do a deposit here.';
  }

  @override
  String get cardDestroyedRecreatedTitle => 'Nouvelle carte créée';

  @override
  String get cardDestroyedRecreatedContent => 'Votre ancienne carte virtuelle Djamo a été supprimée. Votre nouvelle carte est disponible ici.';

  @override
  String get monthly => 'Every month';

  @override
  String get annually => 'Every year';

  @override
  String get weekly => 'Every week';

  @override
  String get quarterly => 'Every quarter';

  @override
  String get semestral => 'Every semester';

  @override
  String get chooseFrequency => 'Choose the frequency';

  @override
  String get selectFrequencyDescription => 'Please select the frequency for this subscription';

  @override
  String stepProgress(Object currentIndex, Object totalSteps) {
    return 'Step $currentIndex of $totalSteps';
  }

  @override
  String get myPayments => 'My payments';

  @override
  String get selectPaymentForSubscription => 'Select a payment that matches a subscription';

  @override
  String get subscriptionRemoved => 'This subscription has been removed from your list. You will no longer receive upcoming payment reminders.';

  @override
  String get subscriptionAdded => 'Success. Your subscription has been added successfully.';

  @override
  String get active => 'Active';

  @override
  String get blocked => 'Blocked';

  @override
  String get lastTransaction => 'Last transaction';

  @override
  String get subscriptionDate => 'Subscription date';

  @override
  String get blockFuturePayments => 'Block future payments';

  @override
  String get cancelSubscription => 'Cancel this subscription';

  @override
  String subscriptionAmountAndDate(Object amount, Object date) {
    return '$amount, on $date';
  }

  @override
  String get subscriptionRemoveBlock => 'Remove block';

  @override
  String get subscriptionRemoveReminder => 'Remove reminder';

  @override
  String get subscriptionConfirmBlocking => 'Confirm blocking';

  @override
  String get subscriptionPaymentBlockDescription => 'Block future payments for this subscription';

  @override
  String subscriptionMerchantBlockedSuccessfully(Object merchant) {
    return 'Your future payments to $merchant are now blocked.';
  }

  @override
  String get subscriptionCancelBlockDescription => 'Does not cancel your subscription';

  @override
  String subscriptionPaymentDueDescription(Object merchant) {
    return 'Does not exempt you from payments due to $merchant';
  }

  @override
  String subscriptionBlockedSince(Object date) {
    return 'Payments for this subscription have been blocked since $date.';
  }

  @override
  String get subscriptionRemoveBlockDescription => 'By removing the block:';

  @override
  String get subscriptionArrearsImmediateDeduction => 'Arrears may be deducted immediately';

  @override
  String subscriptionUnblockedMessage(Object date, Object merchant) {
    return 'Block removed.\nNext payment to $merchant scheduled around $date';
  }

  @override
  String upcomingPaymentReminderSpecific(Object amount, Object date) {
    return 'Upcoming payment of approximately $amount, scheduled around $date';
  }

  @override
  String subscriptionMerchantBlocked(Object merchant) {
    return 'Future $merchant payments ❌';
  }

  @override
  String depositAtLeastAmountToUnlockFuturePayment(Object amount) {
    return 'Make a deposit of at least $amount to unlock future payments';
  }

  @override
  String get thankYou => 'Thank you!';

  @override
  String get searchBeneficiary => 'Search for a beneficiary';

  @override
  String get addBeneficiary => 'Add a beneficiary';

  @override
  String get beneficiary => 'Beneficiary';

  @override
  String get noBeneficiariesAdded => 'Add a beneficiary';

  @override
  String get allYourBeneficiariesWillAppearHere => 'All your beneficiaries will appear here';

  @override
  String get accountHolder => 'Account holder';

  @override
  String get enterBeneficiaryDetails => 'Please enter the name and surname of the beneficiary as registered on their bank account';

  @override
  String get modifyBeneficiary => 'Modify a beneficiary';

  @override
  String get fieldRequiredErrMessage => 'Please enter a value';

  @override
  String get phoneNumberInvalidErrMessage => 'This phone number is invalid';

  @override
  String phoneNumberPrefixNotPresentErrMessage(Object callingCode) {
    return 'Please specify the prefix. Example: +$callingCode';
  }

  @override
  String get ibanCodeInvalid => 'The bank code is invalid';

  @override
  String get numberIbanCodeCaracterInvalid => '24 characters required';

  @override
  String get unknownBanque => 'Unknown Bank';

  @override
  String get transferByMobileMoney => 'By Mobile Money';

  @override
  String get transferByCash => 'In cash';

  @override
  String get transferByBankAccount => 'From my bank account';

  @override
  String get transferFromAbroad => 'From abroad';

  @override
  String get bankTransferSuccessMessage => 'You will receive the bank transfer in your account within 2 business days.';

  @override
  String get salary => 'Salary';

  @override
  String get update => 'Update';

  @override
  String get deleteBeneficiary => 'Delete beneficiary';

  @override
  String get updateBeneficiary => 'Update beneficiary';

  @override
  String get transferIbanNumber => 'IBAN Number';

  @override
  String get airtimeSelectOperator => 'Select an operator';

  @override
  String get airtimeSelectBeneficiary => 'Select a beneficiary';

  @override
  String get airtimeBuySuccessMessage => 'Airtime purchased successfully';

  @override
  String get airtimeBuySuccessWarningMessage => 'Your airtime will be credited in less than 5 minutes';

  @override
  String get airtimeWarningMessageForWrongPhoneNumber => 'Attention! In case of error, you will not be able to recover the money.';

  @override
  String get supportClient => 'Customer support';

  @override
  String get supportContactUs => 'Contact us';

  @override
  String get supportCallClientService => 'Call customer service';

  @override
  String get supportChatWithUs => 'Chat with the support';

  @override
  String get supportPhoneCopied => 'Phone number copied ✅';

  @override
  String get supportDefaultCallCenterAvailabilityMessage => '8:00 AM - 8:00 PM';

  @override
  String get supportDefaultChatSupportAvailabilityMessage => '8:00 AM - 8:00 PM - Response in less than 5 minutes';

  @override
  String get supportSearchAnswers => 'Search for answers...';

  @override
  String get supportFrequentlyAskedQuestions => 'Frequently Asked Questions';

  @override
  String get seeAll => 'See All';

  @override
  String get selectCategory => 'Select a Category';

  @override
  String get supportNeedHelp => 'Need Help?';

  @override
  String get emptySearchArticle => 'No results were found for your search. Please try another keyword.';

  @override
  String get avoid_fees_by_upgrading => 'Avoid fees by becoming premium';

  @override
  String get becomePremium => 'Become premium';

  @override
  String all_free_plus_benefits(Object message) {
    return 'All the $message benefits';
  }

  @override
  String get available_for_free => 'Free';

  @override
  String plusAmountFees(Object amount) {
    return '$amount fees';
  }

  @override
  String confirmation_subscription_message(Object price) {
    return 'By confirming, you agree to be charged $price/month after your free premium month';
  }

  @override
  String get month => 'month';

  @override
  String monthCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months',
      one: '1 month',
      zero: 'No month',
    );
    return '$_temp0';
  }

  @override
  String yearAbbrCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years',
      one: '1 year',
      zero: 'No year',
    );
    return '$_temp0';
  }

  @override
  String get all_inclusive => 'All inclusive';

  @override
  String get budgetManageMyBudgets => 'Manage my budgets';

  @override
  String get budgetDefineAmount => 'Define the budget amount';

  @override
  String get budgetDefineAmountDescription => 'Set the amount you do not want to exceed';

  @override
  String get budgetModifyMyBudget => 'Modify my budget';

  @override
  String get budgetDefineMyBudget => 'Define my budget';

  @override
  String get noTransactionsInCategory => 'You have no transactions in this category. Spend with Djamo to better track your finances.';

  @override
  String get marketPOS => 'POS';

  @override
  String get marketSeePOSForDeposit => 'See deposit POS';

  @override
  String get marketPOSMakeDeposit => 'Make a deposit';

  @override
  String get marketPOSPickup => 'Pickup my card';

  @override
  String get marketNoDepositPOS => 'No Deposit point nearby';

  @override
  String get marketNoPickupPOS => 'No card collection point nearby';

  @override
  String get marketNoPOSNearbyMessage => 'Consider moving to a more frequented area (eg. to a supermarket or restaurant)';

  @override
  String get marketEnableLocationServicesTitle => 'Enable Location Services';

  @override
  String get marketEnableLocationServicesDescription => 'Turn on Location Services to find nearby POS locations.';

  @override
  String get marketGrantLocationPermissionTitle => 'Allow Location Access';

  @override
  String get marketGrantLocationPermissionDescription => 'We need your location to show nearby POS locations. Please grant permission.';

  @override
  String get marketEnableLocationServices => 'Enable Location Services';

  @override
  String get marketSearchingPOS => 'Searching for POS...';

  @override
  String get marketCallPOS => 'Call POS';

  @override
  String get marketLocalizePOS => 'Localize POS';

  @override
  String get marketCitySelectionTitle => 'Select a city';

  @override
  String get marketCityAreaSelectionTitle => 'Select a city area';

  @override
  String get marketSearchCity => 'Search for a city';

  @override
  String get marketSearchCityLocation => 'Search for a city area';

  @override
  String get billsBuyBill => 'Buy a bill';

  @override
  String get purchaseSimulator => 'Purchase simulator';

  @override
  String get billsAccount => 'Account';

  @override
  String get billsAccountLabel => 'Label';

  @override
  String get billsReferenceAccount => 'Reference';

  @override
  String get billsReferenceAccountLabel => 'Account label';

  @override
  String billsReferenceAccountLabelDescription(Object labelTypeName) {
    return 'Your $labelTypeName will be associated with this label. You can always modify it later.';
  }

  @override
  String get billsReferenceAccountHomeLabelSuggestions => 'Home|Parent|Brother|Sister|Other';

  @override
  String get billsReferenceAccountCarLabelSuggestions => 'Main car|Second car|Other';

  @override
  String get billsReferenceAccountOwnerName => 'Owner name';

  @override
  String billsReferenceAccountCurrentBalance(Object balance) {
    return 'Current balance: $balance';
  }

  @override
  String billsReferenceAccountArrears(Object arrears) {
    return 'Arrears: $arrears';
  }

  @override
  String get selectAnAccount => 'Select an account';

  @override
  String get addAccount => 'Add an account';

  @override
  String get addTheAccount => 'Add the account';

  @override
  String get validationFieldRequired => 'This field is required';

  @override
  String get validationSpecialCharacterNotAllowed => 'Special characters are not allowed. Please use letters only.';

  @override
  String ratesWithInternationalFees(Object date) {
    return 'Rates with fees on $date';
  }

  @override
  String get estimation => 'Estimation';

  @override
  String get currencyConverterFeesExplanation => '👉🏿 This simulator estimates the total cost of your purchase, including Djamo\'s exchange fees and its partner banks.';

  @override
  String get currencyConverterDeviseExplanation => '👉🏿 Choose the merchant\'s local currency (e.g.: France-EUR, Canada-CAD) to avoid additional fees.';

  @override
  String get searchCountryCurrency => 'Search for country or currency';

  @override
  String get transactionFeesInternational => 'International Transaction Fees';

  @override
  String get messagingMyNotifications => 'My notifications';

  @override
  String get messagingNoNotification => 'No notification';

  @override
  String get messagingNoNotificationDescription => 'You will receive notifications here';

  @override
  String get cardOwner => 'Card owner';

  @override
  String get cardNumber => 'Card number';

  @override
  String get cardNumberCopied => 'Card number copied';

  @override
  String get expirationDate => 'Expiration date';

  @override
  String minimumBalanceToViewCard(Object minimumBalance) {
    return 'Minimum balance $minimumBalance';
  }

  @override
  String minimumBalanceToViewCardDescription(Object minimumBalance) {
    return 'You must have a balance of at least $minimumBalance to view the card details';
  }

  @override
  String get submitKycBeforeShowPAN => 'For regulatory reasons, please submit your identification to display the card details.';

  @override
  String get noGifsFound => 'No GIFs found';

  @override
  String get noGifsFoundDescription => 'No GIFs found for the search term';

  @override
  String get searchGif => 'Search GIF';

  @override
  String get noTransactionsFound => 'No transactions found';

  @override
  String get yourTransactionsWillAppearHere => 'Your transactions will appear here';

  @override
  String get noTransactionsFoundForPeriod => 'No transactions found for the selected period';

  @override
  String get noTransactionsFoundForCategory => 'No transactions found for the selected category';

  @override
  String get noTransactionToBeCategorized => 'No transactions to be categorized';

  @override
  String get noPaymentTransactionsFound => 'No payment transactions found';

  @override
  String get searchTransaction => 'Search for a transaction';

  @override
  String get loanAmount => 'Loan amount';

  @override
  String get receptionMode => 'Reception mode';

  @override
  String get instantReception => 'Instant reception';

  @override
  String get normalReception => 'Normal reception';

  @override
  String get interestEarned => 'Interest earned';

  @override
  String get howToCancel => 'How to cancel';

  @override
  String get subscriptionSourceQuestion => 'Where does this subscription come from?';

  @override
  String get subscriptionAutomaticSourceInfo => 'Our system automatically identified this subscription based on your transaction history.';

  @override
  String get removeSubscriptionIf => 'Remove this subscription from your list if:';

  @override
  String get subscriptionIsNotRecurring => 'This is not a recurring subscription';

  @override
  String subscriptionAlreadyCancelFromMerchant(Object merchantName) {
    return 'You have already canceled the subscription with $merchantName';
  }

  @override
  String get seeTransactions => 'See transactions';

  @override
  String get notASubscription => 'This is not a subscription';

  @override
  String howToCancelSubscriptionFromMerchant(Object merchantName) {
    return 'How to cancel a subscription from $merchantName';
  }

  @override
  String get subscriptionsTitle => 'Mes abonnements';

  @override
  String get subscriptionsNothingFound => 'Aucun abonnement détecté';

  @override
  String get subscriptionsManualAdd => 'Ajoutez un abonnement pour être prévenu à temps';

  @override
  String get subscriptionsAutoAdd => 'Vos abonnements seront automatiquement ajouté ici.';

  @override
  String get subscriptionsManualAddLabel => 'Ajouter un abonnement';

  @override
  String get subscriptionFilterAll => 'Tous';

  @override
  String get subscriptionFilterActive => 'Actifs';

  @override
  String get subscriptionFilterBlocked => 'Bloqués';

  @override
  String get invest => 'Invest';

  @override
  String get investMyInvestmentsProducts => 'My investment products';

  @override
  String get investGrowYourWealth => 'Grow your wealth';

  @override
  String get investHighYieldPotential => 'Performance objective';

  @override
  String get investDiversifiedPortfolio => 'Diversified portfolio with professional management';

  @override
  String get investYourFirstSteps => 'Your first steps with Djamo Invest';

  @override
  String get investAvailableFunds => 'Available funds';

  @override
  String get investPerformanceObjective => 'Performance objective';

  @override
  String get investAnnualYieldObjective => 'Annual yield objective';

  @override
  String get investFundDetail => 'Fund detail';

  @override
  String get investFundPricing => 'Fund pricing';

  @override
  String get investFundShareValue => 'Value of a share';

  @override
  String get investAboutThisFund => 'About this fund';

  @override
  String investDepositLabel(Object shares) {
    return 'Deposit for the purchase of $shares shares';
  }

  @override
  String investWithdrawalLabel(Object shares) {
    return 'Withdrawal of $shares shares';
  }

  @override
  String investTransactionServiceLabel(String type) {
    String _temp0 = intl.Intl.selectLogic(
      type,
      {
        'subscription': 'Buying',
        'selling': 'Selling',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String investServiceUnavailable(Object label) {
    return 'The $label service is currently unavailable. We will notify you as soon as the service is available.';
  }

  @override
  String get investWithdrawalInProgress => 'You have a withdrawal order in progress. You will be able to present a new withdrawal once the previous one has been validated.';

  @override
  String get investPurchaseConfirmationMessage => 'Your purchase of shares will be effective within 24 hours (working day).';

  @override
  String get investSellConfirmationMessage => 'Your withdrawal will be effective within 24 hours (working day).';

  @override
  String investTransactedShares(Object shares) {
    return 'Of $shares shares';
  }

  @override
  String get investKeyInformation => 'Key information for the investor';

  @override
  String investDisableAutomaticDepositConfirmationMessage(Object fundName) {
    return 'Do you want to disable your automatic deposit on $fundName? This guarantees an investment that grows without effort.';
  }

  @override
  String get readAndApproved => 'Read and approved';

  @override
  String get objectivesReached => 'Objectives reached';

  @override
  String get daysRemaining => 'Days remaining';

  @override
  String get depositSuccess => 'Deposit successful';

  @override
  String get automaticDeposit => 'Automatic deposit';

  @override
  String get quickDeposit => 'Quick deposit';

  @override
  String get depositTitle => 'Deposit';

  @override
  String get moreOptions => 'More options';

  @override
  String get newTile => 'New';

  @override
  String get enableAutomaticDeposit => 'Enable automatic deposits';

  @override
  String get settingsChangedSuccessfully => 'Settings changed successfully';

  @override
  String get myQRCode => 'My QR';

  @override
  String get scan => 'Scan';

  @override
  String get shareMyQRCode => 'Share my QR code';

  @override
  String get shareQRCode => 'Share QR Code';

  @override
  String get invalidDjamoQrCodeMessage => 'This QR code does not appear to be a valid Djamo QR code. Please try again.';

  @override
  String isNotCountryClient(Object country) {
    return 'This client is not a $country Djamo client';
  }

  @override
  String get sharingQRCodeFailedMessage => 'Failed to share QR code';

  @override
  String get useMyQRCodeDescription => 'Use my QR Code to top up my account via agent or DJAMO transfer';

  @override
  String get scanQRToMakeTransfer => 'Scan a QR code to make a Djamo transfer 🚀';

  @override
  String get unAllowedScanToYourSelf => 'You can\'t send money to yourself. Please scan another user\'s QR code.';

  @override
  String get entryFees => 'Entry fees';

  @override
  String get exitFees => 'Exit fees';

  @override
  String maxDepositByDay(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count deposits max/day',
      one: '1 deposit max/day',
      zero: 'No deposit limit',
    );
    return '$_temp0';
  }

  @override
  String get byDay => 'By day';

  @override
  String get byWeek => 'By week';

  @override
  String get byMonth => 'By month';

  @override
  String get byYear => 'By year';

  @override
  String get supplyDay => 'Supply day';

  @override
  String get modificationOnGoing => 'Modification in progress...';

  @override
  String get block => 'Block';

  @override
  String untilDate(Object date) {
    return 'Until $date';
  }

  @override
  String get later => 'Later';

  @override
  String get newCodeValidated => 'New code validated';

  @override
  String get firstAndLastName => 'First and last name';

  @override
  String get allowDjamoSendNotification => 'Allow Djamo to send you notifications';

  @override
  String get start => 'Start';

  @override
  String get performance => 'Performance';

  @override
  String get viewDetails => 'View details';

  @override
  String depositFrom(Object amount) {
    return 'Deposit from $amount';
  }

  @override
  String onTheLast(Object month) {
    return 'On the last $month months';
  }

  @override
  String iConfirmReadAndUnderstood(Object doc) {
    return 'I confirm that I have read, understood and agree to comply with the $doc';
  }

  @override
  String get cashback => 'Cashback';

  @override
  String pendingTransaction(num pendingCount) {
    String _temp0 = intl.Intl.pluralLogic(
      pendingCount,
      locale: localeName,
      other: 'Pending transactions',
      one: 'Pending transaction',
      zero: 'No pending transaction',
    );
    return '$_temp0';
  }

  @override
  String get transferInitialization => 'Transfer initialization';

  @override
  String get debitFromYourDjamoAccount => 'Debit from your Djamo account';

  @override
  String debitFromYourAccount(Object accountName) {
    return 'Debit from your $accountName account';
  }

  @override
  String get transferProcessingByOperator => 'Transfer processing by the operator';

  @override
  String get funds => 'Funds';

  @override
  String get initializingYourTransaction => 'Initializing your transaction';

  @override
  String get depositConfirmationInProgress => 'Confirmation of your deposit in progress';

  @override
  String get momoTransferConfirmationMessage => 'You will receive the transfer on your mobile money account in a few minutes.';

  @override
  String get deleteAutomaticDeposit => 'Delete automatic deposit';

  @override
  String get recurrence => 'Recurrence';

  @override
  String get leaveActivated => 'Leave activated';

  @override
  String get pauseIt => 'Pause';

  @override
  String monthlyCeilingAt(Object amount) {
    return 'Monthly ceiling at $amount';
  }

  @override
  String get onlineAndInStorePayment => '*Online and in-store* payment';

  @override
  String get withdrawalsAtTellers => '*Withdrawals at tellers*';

  @override
  String get freeMobileMoneyTransfers => '*Free mobile money transfers*';

  @override
  String get freeRibForSalary => '*Free RIB for salary*';

  @override
  String get accessToDjamoInvest => '*Access to Djamo Invest*';

  @override
  String get onlinePayment => '*Online* payment';

  @override
  String get physical => 'Physical';

  @override
  String get virtual => 'Virtual';

  @override
  String get selectCard => 'Select a card';

  @override
  String get newBalance => 'New Balance';

  @override
  String get operator => 'Operator';

  @override
  String get rate => 'Rate';

  @override
  String get rateIncludingInternationalFees => 'Rate (including international fees)';

  @override
  String djamoCardMasked(Object lastFourDigits) {
    return 'Djamo Card XXXX-$lastFourDigits';
  }

  @override
  String get paidWith => 'Paid with';

  @override
  String get refund => 'Refund';

  @override
  String get loanDisbursement => 'Credit disbursement';

  @override
  String get payment => 'Payment';

  @override
  String get transactionReceipt => 'Transaction receipt';

  @override
  String get messagingToken => 'Messaging Token';

  @override
  String get partnershipWith => 'Partnership with';

  @override
  String get issueWithAccountSubscription => 'Issue with your account subscription, please contact customer service for more information.';

  @override
  String get redoMyIdentification => 'Redo my identification';

  @override
  String get issueWithYourIdentification => 'Issue with your identification';

  @override
  String get offlineMessage => 'You are offline. Your data may not be up to date';

  @override
  String get yourCardWillBeDeliveredSoon => 'Your card will be delivered soon';

  @override
  String expectedDeliveryDate(Object date) {
    return 'The expected delivery date is $date. Change the delivery location here.';
  }

  @override
  String get collectYourCardNow => 'Collect your card now';

  @override
  String get collectYourCardFromAgent => 'Collect your card from a Djamo agent. Find one near you here.';

  @override
  String get deliveryFailed => 'We couldn’t deliver your card 😥';

  @override
  String get deliveryRescheduled => 'The delivery has been rescheduled. Customer service will contact you soon.';

  @override
  String get orderBeingProcessed => 'Order being processed';

  @override
  String get pleaseWaitSupportContact => 'Please wait. Customer service will contact you soon.';

  @override
  String get yourCardIsReady => 'Your card is ready 🎉';

  @override
  String get collectFromDjamoAgent => 'Collect your card from a Djamo agent. Find one near you here.';

  @override
  String get preferDelivery => 'Would you prefer delivery?';

  @override
  String get scheduleFreeDelivery => 'Schedule your free card delivery here.';

  @override
  String get increaseYourLimit => 'Increase your limit to 2 million F';

  @override
  String get verifyIdentityToIncreaseLimit => 'Verify your identity to increase your limit now.';

  @override
  String get orderPhysicalCard => 'Order your physical card';

  @override
  String get physicalCardBenefits => 'Make transactions up to 10 million F per month with your physical card.';

  @override
  String get verifyYourIdentity => 'Verify your identity';

  @override
  String get completeIdentificationToFinishOrder => 'Complete your identification here to finish your order.';

  @override
  String get identityIssue => 'Problème avec votre identification';

  @override
  String get invalidIdentityData => 'Some of your data is invalid. Please redo your identification.';

  @override
  String get needHelpWithIdentity => 'Need help with your identification?';

  @override
  String get getAssistanceAtRelayPoint => 'You can visit a relay point for assistance. Check the list here.';

  @override
  String get paymentInitialization => 'Payment initialization';

  @override
  String get codeActivation => 'Code activation';

  @override
  String get takePhotoWithId => 'Take a photo of yourself with your ID under the mention. Once aligned, tap to capture.';

  @override
  String get sendManualRequest => 'Send a manual request';

  @override
  String get requestManualPasscodeResetConfirmation => 'We have received your request. You will receive an SMS when your request has been successfully processed.';

  @override
  String get manualRequest => 'Manual request';

  @override
  String get passcodeIncorrect => 'Passcode incorrect';

  @override
  String get services => 'Bills';

  @override
  String get logout => 'Log out';

  @override
  String get noContactFoundForSearch => 'No contact found for the search term';

  @override
  String get confirmLogout => 'Do you want to log out?';

  @override
  String get logoutMe => 'Log me out';

  @override
  String subscriptionActivationTime(Object delayInMinutes, Object operator) {
    return 'Your $operator subscription will be active within $delayInMinutes minutes.';
  }

  @override
  String reloadCode(Object code) {
    return 'Your reload code is $code';
  }

  @override
  String get copyCode => 'Copy the code';

  @override
  String get setNewSecurityCode => 'Set a new security code';

  @override
  String get noResultForSearch => 'No result for the search term';

  @override
  String get stayInAppWhileProcessing => 'Please wait a moment and do not leave the application.';

  @override
  String get yourIdDocument => 'Your ID document';

  @override
  String get yourSelfie => 'Your selfie';

  @override
  String get verificationSuccessful => 'Verification successful';

  @override
  String get sendFailed => 'Sending failed';

  @override
  String get reconnecting => 'I am reconnecting';

  @override
  String get mandatoryUpdate => 'Mandatory update';

  @override
  String get updateNow => 'Update now';

  @override
  String get updateAvailable => 'Update available';

  @override
  String get referralAccount => 'Referral account';

  @override
  String get enterCurrentSecurityCode => 'Please enter your current security code';

  @override
  String get verifyingCurrentSecurityCode => 'Verifying your current security code...';

  @override
  String get myCode => 'My code';

  @override
  String planActivationSuccess(Object productName) {
    return 'You are now on the $productName plan';
  }

  @override
  String get updateAvailableBanner => 'An update is available 🎉';

  @override
  String get updatePrompt => 'Click here to update your version of Djamo';

  @override
  String upcomingPaymentReminder(Object amount, Object merchantName, Object nextDueAt) {
    return 'It looks like you have an upcoming payment to $merchantName on $nextDueAt, for approximately $amount.';
  }

  @override
  String multipleUpcomingPaymentsReminder(Object nextDueAt, Object totalAmount) {
    return 'It looks like you have multiple upcoming payments starting from $nextDueAt, for approximately $totalAmount.';
  }

  @override
  String get payments => 'Payments';

  @override
  String get all => 'All';

  @override
  String get expenses => 'Expenses';

  @override
  String get deposits => 'Deposits';

  @override
  String get searchTitle => 'Search';

  @override
  String get inviteCodeCopied => 'Invitation code copied successfully';

  @override
  String get loadMore => 'Load more';

  @override
  String get confirmDeposit => 'Confirm deposit';

  @override
  String get vaultNotFound => 'It looks like this vault doesn’t exist.';

  @override
  String get yourVBVConfirmationCode => 'Your confirmation code is';

  @override
  String get confirmationVBVCodeWarning => 'Do not share this code with anyone over the phone. Do not dial any USSD syntax. Enter this code on the merchant\'s website to validate the transaction.';

  @override
  String get lockEmojiCode => '🔐 Code';

  @override
  String get useThisCodeToLogin => 'Use this code to log into your Djamo business account';

  @override
  String get cardDetailLoadingError => 'Error on your card informations loading';

  @override
  String amountInCurrency(Object currency) {
    return 'Amount in $currency';
  }

  @override
  String get at => 'at';

  @override
  String get operationInfo => 'Operation information';

  @override
  String get sharePurchase => 'Share purchase';

  @override
  String get shareRedemption => 'Share redemption';

  @override
  String get client => 'Client';

  @override
  String get numberOfShares => 'Number of shares';

  @override
  String get netAssetValue => 'Net asset value';

  @override
  String transactionFeesIncludingTax(Object feesPercentage) {
    return 'Transaction fees including tax $feesPercentage%';
  }

  @override
  String get receipt => 'Receipt';

  @override
  String get checkInternetConnection => 'Please check your internet connection and try again.';

  @override
  String get purchaseAndWithdrawalUnavailable => 'Purchase and withdrawal services are currently unavailable. We will notify you as soon as the service becomes available.';

  @override
  String freeDeposits(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dépôts gratuits',
      one: 'Dépôt gratuit',
    );
    return '$_temp0';
  }

  @override
  String freeDepositsDescription(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zéro frais sur vos $count prochains dépôts.',
      one: 'Zéro frais sur votre prochain dépôt.',
    );
    return '$_temp0';
  }

  @override
  String freeDepositsDescriptionWithExpiration(num count, Object expirationDate) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zéro frais sur vos $count prochains dépôts',
      one: 'Zéro frais sur votre prochain dépôt',
    );
    return '$_temp0 avant le $expirationDate.';
  }

  @override
  String freeTransfers(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Transferts gratuits',
      one: 'Transfert gratuit',
    );
    return '$_temp0';
  }

  @override
  String freeTransfersDescription(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zéro frais sur vos $count prochains transferts.',
      one: 'Zéro frais sur votre prochain transfert.',
    );
    return '$_temp0';
  }

  @override
  String freeTransfersDescriptionWithExpiration(num count, Object expirationDate) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zéro frais sur vos $count prochains transferts',
      one: 'Zéro frais sur votre prochain transfert',
    );
    return '$_temp0 avant le $expirationDate.';
  }

  @override
  String freeCashbacks(Object percentage) {
    return '$percentage% de cashback';
  }

  @override
  String freeCashbacksDescription(num count, Object percentage) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vous disposez de $percentage% de cashback sur vos $count prochains paiements.',
      one: 'Vous disposez de $percentage% de cashback sur votre prochain paiement.',
    );
    return '$_temp0';
  }

  @override
  String freeCashbacksDescriptionWithExpiration(num count, Object expirationDate, Object percentage) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vous disposez de $percentage% de cashback sur vos $count prochains paiements',
      one: 'Vous disposez de $percentage% de cashback sur votre prochain paiement',
    );
    return '$_temp0 avant le $expirationDate.';
  }

  @override
  String get freePremiumSubscription => 'Premium gratuit';

  @override
  String get freePremiumSubscriptionDescription => 'Profitez d\'un mois Premium gratuit en appuyant ici 🥳.';

  @override
  String get cardWillExpireTitle => 'Votre carte expirera bientôt';

  @override
  String cardWillExpireMessage(Object date) {
    return 'Votre carte expirera dans $date jour(s). Renouvelez votre carte pour ne pas être déconnecté de vos abonnements';
  }

  @override
  String get cardExpiredTitle => ' Votre carte a expiré';

  @override
  String get cardExpiredMessage => 'Votre carte a expiré. Commandez une nouvelle carte ici.';

  @override
  String get selectVaultType => 'Choose a vault type';

  @override
  String get during => 'During';

  @override
  String interestRate(Object percentage) {
    return '$percentage% interest';
  }

  @override
  String get vaultNotLocked => 'Vault not locked';

  @override
  String get lockedVaults => 'Locked vaults';

  @override
  String get confirmVaultLock => 'Are you sure you want to lock your vault?';

  @override
  String get earlyUnlockPenalty => 'Unlocking before the due date will incur penalty fees.';

  @override
  String get earnUpTo6Percent => 'Generate up to 6% interest with vaults';

  @override
  String get cardIndependentFromAccount => 'Your card becomes independent from your account';

  @override
  String get accountBalanceUnlimited => 'Your account balance becomes unlimited';

  @override
  String get switchToMicrofinance => 'Switch to Microfinance';

  @override
  String get migrateToDjamoMicrofinance => 'Migrate to Djamo Microfinance 🚀';

  @override
  String get microfinanceExperience => 'An unlimited experience, extended services, and simplified management. Click here.';

  @override
  String get signToAcceptTerms => 'Sign to accept the terms';

  @override
  String get signHere => 'Sign here ✍🏾';

  @override
  String get migrationSuccessful => 'Migration successful.';

  @override
  String get restart => 'Restart';

  @override
  String get signatureSaveError => 'An error occurred while saving the signature.';

  @override
  String get accounts => 'Accounts';

  @override
  String get edit => 'Edit';

  @override
  String get unlockVault => 'Unlock the vault';

  @override
  String get vaultDeletionInfo => 'The vault will be deleted, and the money in the vault will be transferred to the main account.';

  @override
  String vaultUnlockPenalty(Object amount, Object percentage) {
    return 'You will lose $percentage% of your interest ($amount) for unlocking the vault. Are you sure you want to continue?';
  }

  @override
  String get confirmVaultUnlock => 'Unlock the vault anyway';

  @override
  String get securityUpdateRequired => 'For security reasons, please update your application 🚀';

  @override
  String get verifyPaymentInformations => 'Verify payment informations';

  @override
  String get merchant => 'Merchant';

  @override
  String get confirmPayment => 'Confirm payment';

  @override
  String get cancelPayment => 'Cancel payment';

  @override
  String get confirmAccountDeletion => 'Do you want to delete this account?';

  @override
  String getDiscountOnFxForPaymentAboveCertainAmount(Object amount, Object discount) {
    return 'Bénéficiez d’un taux de *$discount* pour un achat supérieur à $amount';
  }

  @override
  String get chooseLocalCurrencyToAvoidFees => 'Choose the local currency of the merchant or ATM to avoid additional fees';

  @override
  String get currencyConverterWarning => 'The simulator remains an estimate. The final amount may vary.';

  @override
  String get fxRateComparator => 'Comparator';

  @override
  String get markAllAsRead => 'Mark all as read';

  @override
  String get reloginRequired => 'Authentication failed. Please log in again.';

  @override
  String mySingular(Object name) {
    return 'My $name';
  }

  @override
  String get paymentDueDate => 'Payment due date:';

  @override
  String get billingPeriod => 'Billing period:';

  @override
  String get invoice => 'Invoice';

  @override
  String get invoiceNumber => 'Invoice number';

  @override
  String get vaultsWillAppearHere => 'Your vaults will appear here';

  @override
  String saveFeesWithAgent(Object fees) {
    return 'Save $fees by making your deposit with a Djamo agent. Click here.';
  }

  @override
  String get signatureStepOne => 'Please sign to confirm your approval (1/2):';

  @override
  String get signatureStepTwo => 'Please sign again (2/2):';

  @override
  String get deleteAccount => 'Delete account';
}

/// The translations for English, as used in Senegal (`en_SN`).
class AppLocalizationsEnSn extends AppLocalizationsEn {
  AppLocalizationsEnSn(): super('en_SN');

  @override
  String get welcome => 'Akksil ak to Diamo!';

  @override
  String get countryName => 'Senegal';

  @override
  String get productPCFreeIBAN => 'Free Account Number';

  @override
  String get productVCNoIBAN => 'No Account Number';

  @override
  String get accountVaultAccountName => 'Pockets';

  @override
  String get vaultMyVaults => 'My Pockets';

  @override
  String get vaultCreateNewVaultTile => 'Create a new pocket';

  @override
  String get vaultNameFieldLabel => 'Pocket Name';

  @override
  String get vaultDefineBlockingStatusTitle => 'Block the pocket';

  @override
  String vaultCurrentBalanceOf(Object vaultName) {
    return 'Pocket Balance $vaultName';
  }

  @override
  String get vaultDetailsTitle => 'Pocket Details';

  @override
  String get vaultSelectAnIconDescription => 'Choose the new icon for your pocket.';

  @override
  String get vaultCreateVault => 'Create a pocket';

  @override
  String get vaultCreationOnGoing => 'Creating pocket...';

  @override
  String get vaultAmountValidationExceedBalanceError => 'The amount must not exceed your pocket\'s balance';

  @override
  String get vaultSettings => 'Pocket Settings';

  @override
  String get vaultCustomize => 'Customize the pocket';

  @override
  String vaultDeleteConfirmationTitle(Object vaultName) {
    return 'Are you sure you want to delete your pocket $vaultName?';
  }

  @override
  String get vaultDeleteConfirmationWarning => 'The money in the pocket will be transferred to your main account.';

  @override
  String get vaultCantCustomizeChallengeVault => 'You can\'t customize a Challenge pocket';

  @override
  String get vaultQuitChallengeWarningMessage => 'Abandoning the challenge will delete the pocket. If there is still money in the pocket, it will be returned to your main account.';

  @override
  String vaultBlockWarningMessage(Object date) {
    return 'Your pocket will be locked until $date. You will not be able to unlock it before.';
  }

  @override
  String get vaultDoYouWantToEnableAutomaticDeposit => 'Do you want to automatically provision your pocket?';

  @override
  String get ibanPendingCreation => 'Account Number creation in progress';

  @override
  String get ibanWeWillNotifyYou => 'We will notify you when your Account Number is available';

  @override
  String get purchaseSimulator => 'Exchange rates';

  @override
  String ratesWithInternationalFees(Object date) {
    return 'Rates with international fees on $date';
  }

  @override
  String get estimation => 'Estimation with international fees';

  @override
  String get vaultNotLocked => 'Pocket not locked';

  @override
  String get lockedVaults => 'Locked Pockets';

  @override
  String get confirmVaultLock => 'Are you sure you want to lock your pocket?';

  @override
  String get vaultDeletionInfo => 'The pocket will be deleted, and the money in the pocket will be transferred to the main account.';

  @override
  String vaultUnlockPenalty(Object amount, Object percentage) {
    return 'You will lose $percentage% of your interest ($amount) for unlocking the pocket. Are you sure you want to continue?';
  }

  @override
  String get confirmVaultUnlock => 'Unlock the pocket anyway';
}
