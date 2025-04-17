import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get welcome => 'Bienvenue chez Djamo!';

  @override
  String get continueLabel => 'Continuer';

  @override
  String get notNow => 'Pas maintenant';

  @override
  String get retry => 'Réésayer';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get close => 'Fermer';

  @override
  String get confirm => 'Confirmer';

  @override
  String get iConfirm => 'Je confirme';

  @override
  String get yesIConfirm => 'Oui, je confirme';

  @override
  String get confirmation => 'Confirmation';

  @override
  String get done => 'Terminer';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get or => 'ou';

  @override
  String get your => 'Votre';

  @override
  String get toMe => 'A moi';

  @override
  String get back => 'Retour';

  @override
  String get backToDashboard => 'Retourner au tableau de bord';

  @override
  String get constraint => 'Contrainte';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get error => 'Erreur';

  @override
  String get help => 'Aide';

  @override
  String get success => 'Succès';

  @override
  String get allow => 'Autoriser';

  @override
  String get dontAllow => 'Ne pas autoriser';

  @override
  String get deny => 'Refuser';

  @override
  String get copy => 'Copier';

  @override
  String get authorize => 'Autoriser';

  @override
  String get iUnderstand => 'J\'ai compris';

  @override
  String get perfect => 'Parfait!';

  @override
  String get appUnderMaintenance => 'L’application est en cours de maintenance, veuillez réessayer dans quelques minutes.';

  @override
  String get addMoney => 'Ajouter de l\'argent';

  @override
  String get withdrawal => 'Retrait';

  @override
  String get withdrawMoney => 'Retirer de l\'argent';

  @override
  String get depositMoney => 'Déposer de l\'argent';

  @override
  String get enterAmount => 'Montant';

  @override
  String get showAll => 'Tout afficher';

  @override
  String get tapPhoneNumber => 'Taper un numéro';

  @override
  String get pay => 'Payer';

  @override
  String get countryName => 'Côte d\'Ivoire';

  @override
  String get deadlineHasPassed => 'Échéance dépassée';

  @override
  String remainingDays(num value) {
    String _temp0 = intl.Intl.pluralLogic(
      value,
      locale: localeName,
      other: '$value jours restants',
      one: '1 jour restant',
      zero: 'Terminé',
    );
    return '$_temp0';
  }

  @override
  String remainingWeeksAndDays(num days, num weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks sem.',
      one: '1 semaine',
      zero: '',
    );
    String _temp1 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days jrs',
      one: '1 jr',
      zero: '',
    );
    return '$_temp0 $_temp1';
  }

  @override
  String get takePhoto => 'Prendre une photo';

  @override
  String get importImage => 'Importer une image';

  @override
  String weekDay(String value) {
    String _temp0 = intl.Intl.selectLogic(
      value,
      {
        'sunday': 'Dimanche',
        'monday': 'Lundi',
        'tuesday': 'Mardi',
        'wednesday': 'Mercredi',
        'thursday': 'Jeudi',
        'friday': 'Vendredi',
        'saturday': 'Samedi',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get fees => 'Frais';

  @override
  String get operationFees => 'Frais d\'opération';

  @override
  String get withdrawalFees => 'Frais de retrait';

  @override
  String get premiumUpgradeSuccess => 'Vous êtes passé à la catégorie Premium';

  @override
  String get amountToBeReceived => 'Montant à recevoir';

  @override
  String get amountToPay => 'Montant à payer';

  @override
  String get loadingInfo => 'Chargement des informations...';

  @override
  String get loadingFailed => 'Chargement échoué';

  @override
  String get engagementConditions => 'Conditions d\'engagement';

  @override
  String get deletionOnGoing => 'Suppression en cours...';

  @override
  String get objective => 'Objectif';

  @override
  String get participants => 'Participants';

  @override
  String get period => 'Période';

  @override
  String numberOfTimes(Object times) {
    return '$times fois';
  }

  @override
  String get quitThisScreen => 'Quitter cette page';

  @override
  String get quitThisScreenConfirmation => 'Voulez-vous vraiment quitter cette page ?';

  @override
  String get number => 'Numéro';

  @override
  String get verificationOnGoing => 'Vérification en cours...';

  @override
  String get processingOnGoing => 'Traitement en cours...';

  @override
  String get waitingAMoment => 'Veuillez patienter un instant';

  @override
  String get cgu => 'Conditions générales';

  @override
  String get cguAccept => 'Tout accepter';

  @override
  String get share => 'Partager';

  @override
  String get details => 'Détails';

  @override
  String get copySuccessMessage => 'Copié avec succès';

  @override
  String get documentLoading => 'Chargement du document...';

  @override
  String get myProfile => 'Mon profil';

  @override
  String get myIban => 'Mon numéro de compte';

  @override
  String get bonusAccount => 'Compte Bonus';

  @override
  String get referral => 'Parrainage';

  @override
  String get pos => 'Point relais';

  @override
  String get lock => 'Verrouiller';

  @override
  String get lockApp => 'Déconnexion';

  @override
  String get personalInformation => 'Informations personnelles';

  @override
  String get pricingPlan => 'Plan tarifaire';

  @override
  String get documents => 'Documents';

  @override
  String get lastnameLabel => 'Nom';

  @override
  String get firstNameLabel => 'Prénoms';

  @override
  String get identificationDocuments => 'Pièces d’identification';

  @override
  String get free => 'Gratuit';

  @override
  String get popular => 'Populaire';

  @override
  String get mainAccountBalanceTitle => 'Solde Compte Principal';

  @override
  String get refresh => 'Actualiser';

  @override
  String get total => 'Total';

  @override
  String get totalToPay => 'Total à payer';

  @override
  String get paymentSuccess => 'Paiement réussi';

  @override
  String get save => 'Enregistrer';

  @override
  String get account => 'Compte';

  @override
  String get processingTime => 'Délai de traitement';

  @override
  String hours(String hours) {
    String _temp0 = intl.Intl.selectLogic(
      hours,
      {
        '0': '0 heure',
        '1': '1 heure',
        'other': '$hours heures',
      },
    );
    return '$_temp0';
  }

  @override
  String get cancelOperation => 'Annuler l\'opération';

  @override
  String get stampFee => 'Frais de timbre';

  @override
  String get recommended => 'Recommandé';

  @override
  String get nothingFound => 'Aucun résultat trouvé';

  @override
  String get category => 'Catégorie';

  @override
  String get statistics => 'Statistiques';

  @override
  String get great => 'Super ⚡️';

  @override
  String get inProgress => 'En cours...';

  @override
  String djamoFees(Object percentage) {
    return 'Frais Djamo ($percentage%)';
  }

  @override
  String get cardLocked => 'Verrouillée';

  @override
  String get myProfileChangePictureTitle => 'Prennez un selfie';

  @override
  String get myProfileChangePictureSubtitle => 'Positionnez votre visage dans le cercle de sorte a ce qu\'il soit bien visible';

  @override
  String get myProfileAvatarChangedRecently => 'Vous avez déja soumis une photo de profil il y a moins de 3 jours';

  @override
  String transactionCategorizedAsFood(Object category) {
    return 'Votre transaction a été classée dans la catégorie \'$category\'';
  }

  @override
  String get modificationsSaved => 'Vos modifications ont bien été enregistrées';

  @override
  String get invitationCode => 'Code d\'invitation';

  @override
  String get authMigrationWeAreConfiguringYourAccount => 'Nous configurons votre compte...';

  @override
  String get authEnterPhoneFieldLabel => 'Numéro de téléphone';

  @override
  String authEnterPhoneValidationErrMessage(Object digit) {
    return 'Le numéro de téléphone doit comporter $digit chiffres.';
  }

  @override
  String get authAlreadyConnectedErrMessage => 'Vous êtes déjà connecté';

  @override
  String get authPhoneVerificationOnGoing => 'Vérification du numéro de téléphone en cours...';

  @override
  String get authSendingOtp => 'Envoi du code de vérification...';

  @override
  String get authOtpVerificationOnGoing => 'Vérification du code en cours...';

  @override
  String get authSelectCountry => 'Choisissez le pays';

  @override
  String get authOtpVerificationPageTitle => 'Code de vérification';

  @override
  String authEnterOtpTitle(Object method) {
    return 'Entrez le code reçu par $method';
  }

  @override
  String authEnterOtpTitleTo(Object method, Object receiver) {
    return 'Entrez le code reçu par $method au $receiver';
  }

  @override
  String authReSentOtpIn(Object time) {
    return 'Renvoyer dans $time';
  }

  @override
  String get authSendOTP => 'Envoyer le code';

  @override
  String get authResendOTPBySms => 'Renvoyer le code par SMS';

  @override
  String get authUseAnotherOtpMethod => 'Essayez une autre méthode';

  @override
  String get authLogout => 'Déconnexion';

  @override
  String get authForgotPassword => 'J\'ai oublié mon code';

  @override
  String get authEnterPasswordTitle => 'Entrez votre code pour vous connecter';

  @override
  String authHi(Object name) {
    return 'Bonjour $name';
  }

  @override
  String get authWrongPassword => 'Code incorrect';

  @override
  String authUseBiometric(String type) {
    String _temp0 = intl.Intl.selectLogic(
      type,
      {
        'fingerprint': 'l\'empreinte digitale',
        'faceId': 'la reconnaissance faciale',
        'iris': 'l\'IRIS',
        'other': 'le scan biométrique',
      },
    );
    return 'Utiliser $_temp0';
  }

  @override
  String authUseBiometricMessage(String type) {
    String _temp0 = intl.Intl.selectLogic(
      type,
      {
        'fingerprint': 'votre empreinte digitale',
        'faceId': 'la reconnaissance faciale',
        'iris': 'l\'IRIS',
        'other': 'le scan biométrique',
      },
    );
    return 'Utilisez $_temp0 pour vous connecter rapidement';
  }

  @override
  String get authEnableBiometricMessage => 'Activez la biométrie pour vous connecter rapidement à votre compte Djamo';

  @override
  String get authEnableBiometric => 'Activer la biométrie';

  @override
  String get authUseBiometricToLogin => 'Utiliser la biométrie pour vous connecter';

  @override
  String get authExpiredSessionMessage => 'Votre session a expiré. Veuillez vous reconnecter en saisissant votre code.';

  @override
  String get authImpossible => 'Authentification impossible. Veuillez contacter le support technique.';

  @override
  String get onboardingEnterFullName => 'Entrez votre nom et prénom';

  @override
  String get onboardingLastnameValidationErrMessage => 'Veuillez entrer un nom de famille valide';

  @override
  String get onboardingFirstnameValidationErrMessage => 'Veuillez entrer un prénom valide';

  @override
  String get onboardingALeastInformation => 'Encore quelques informations';

  @override
  String onboardingGender(String gender) {
    String _temp0 = intl.Intl.selectLogic(
      gender,
      {
        'male': 'Monsieur',
        'female': 'Madame',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get onboardingGenderValidationErrMessage => 'Veuillez sélectionner votre genre';

  @override
  String get onboardingBirthdayDayField => 'Jour';

  @override
  String get onboardingBirthdayMonthField => 'Mois';

  @override
  String get onboardingBirthdayYearField => 'Année';

  @override
  String onboardingAgeRestrictionMessage(Object age) {
    return 'Vous devez avoir au moins $age ans pour utiliser Djamo';
  }

  @override
  String get onboardingAccountCreationOnGoing => 'Un instant, nous finalisons la création de votre compte...';

  @override
  String get passcodeChooseCodeForYourAccount => 'Choisissez un code de sécurité pour votre compte Djamo';

  @override
  String get passcodeConfirmCodeForYourAccount => 'Ressaisissez votre code de sécurité';

  @override
  String get passcodeChooseNewSecurityCode => 'Choisissez un nouveau code de sécurité';

  @override
  String get passcodeConfirmNewSecurityCode => 'Confirmez votre nouveau code de sécurité';

  @override
  String get passcodeRequestingVCPasscodeReset => 'Demande de réinitialisation de code en cours...';

  @override
  String get passcodeModifyMyCode => 'Modifier mon code';

  @override
  String get passcodeSetCardPinTitle => 'Entrez votre nouveau code PIN';

  @override
  String get passcodeSetConfirmCardPinTitle => 'Confirmer le code PIN';

  @override
  String get passcodeEmptyError => 'Veuillez entrer un code PIN';

  @override
  String get passcodeSameDigitsError => 'Le code PIN ne doit pas contenir les mêmes chiffres';

  @override
  String get passcodeSequentialDigitsError => 'Le code PIN ne doit pas contenir de chiffres consécutifs';

  @override
  String get passcodeNotMatchError => 'Les codes PIN ne correspondent pas';

  @override
  String get passcodeSameError => 'Le nouveau code de sécurité doit être différent de l\'ancien';

  @override
  String get passcodeResetOnGoing => 'Réinitialisation du code PIN...';

  @override
  String get passcodeResetPCTitle => 'Réinitialisation du code de sécurité';

  @override
  String get passcodeCardPinResetTitle => 'Réinitialisation du code guichet';

  @override
  String get passcodeCardPinResetSuccess => 'Votre code guichet a été modifié avec succès';

  @override
  String get passcodeLivenessWeWillCheckYourID => 'Nous allons proceder a la verification de votre identite';

  @override
  String get passcodeLivenessInstruction1 => 'Assurez-vous que la piece dans laquelle vous vous trouvez soit bien eclairée';

  @override
  String get passcodeLivenessInstruction2 => 'Retirez vos lunettes, chapeaux ou masques';

  @override
  String get passcodeLivenessConfirmYourId => 'Confirmation de votre identité';

  @override
  String get passcodeLivenessConfirmYourIdSubtitle => 'Maintenant, vous allez prendre une deuxieme photo en suivant l’instruction qui vous sera donnée';

  @override
  String get passcodeRequestResetOnGoing => 'Demande de réinitialisation en cours...';

  @override
  String get passcodeLivenessVerificationOnGoingMessage => 'Nous vérifions votre identité.\nVeuillez rester sur cet écran.\nLa vérification prend moins d’une minute';

  @override
  String get passcodeLivenessVerificationFailedForPasscode => 'La vérification de votre identification suite à votre demande de réinitialisation de votre code de sécurité a échoué';

  @override
  String get passcodeLivenessVerificationFailedForPinCard => 'La vérification de votre identification suite à votre demande de réinitialisation de votre code guichet a échoué';

  @override
  String get passcodeLivenessVerificationTimeoutMessage => 'Le temps d’attente est écoulé. Veuillez recommencer.';

  @override
  String get passcodeUpdatingOnGoing => 'Mise à jour du code de sécurité en cours...';

  @override
  String get passcodeUpdatingSuccess => 'Votre code de sécurité a bien été mis à jour';

  @override
  String get orderWhereToReceiveCard => 'Où voulez-vous réceptionner la carte ?';

  @override
  String get orderChooseReceptionMode => 'Mode de réception';

  @override
  String get orderHomeDelivery => 'Livrez-moi';

  @override
  String orderHomeDeliveryDescription(Object day) {
    return 'Livraison gratuite en $day jours ouvrés';
  }

  @override
  String get orderPickUp => 'Je passerai en point relais';

  @override
  String get orderPickupDescription => 'Gratuit et disponible immédiatement';

  @override
  String orderTheCardAt(Object amount) {
    return 'Commander la carte à $amount';
  }

  @override
  String get orderLater => 'Plus tard';

  @override
  String get orderChooseCity => 'Choisissez la ville';

  @override
  String get orderDeliveryPlace => 'Lieu de livraison';

  @override
  String get orderChooseDeliveryPlace => 'Choisissez la zone de livraison';

  @override
  String get orderDeliveryAdvice => 'Lundi au vendredi. Privilégiez votre lieu de travail.';

  @override
  String get orderDeliveryPlaceRefPointOrCompanyName => 'Point de référence / Nom de l’entreprise';

  @override
  String get orderDeliveryPlaceRefPointOrCompanyNameHelper => 'Exemple: Cap Sud';

  @override
  String get orderDeliveryPlaceRefValidationErrMessage => 'Veuillez entrer un point de référence ou le nom de l’entreprise';

  @override
  String get orderDeliveryWarning => 'Vous seul(e) êtes habilité à réceptionner votre carte. Nous ne faisons aucune exception.';

  @override
  String get orderCardOnGoing => 'Commande de votre carte en cours...';

  @override
  String get updatingOrderOnGoing => 'Mise à jour de votre commande en cours...';

  @override
  String get orderDeliverySuccessMessage => 'Votre commande a été passée avec succès 🎉. Vous serez informé de la date de livraison.';

  @override
  String get orderPickupSuccessMessage => 'Vous pouvez dès maintenat passer dans l’un de nos points relais pour la récupérer ⚡️';

  @override
  String get orderPickupLocalizePOS => 'Localiser mon point relais';

  @override
  String get orderCardReplacement => 'Remplacement de la carte';

  @override
  String get orderReplaceMyCard => 'Remplacer ma carte';

  @override
  String get orderCardReplacementNotice => 'Votre carte sera définitivement résiliée et ne pourra PAS être réutilisée, les fonds restants sur votre carte actuelle seront transférés sur votre carte de remplacement dès son activation.';

  @override
  String orderCardReplacementNoticeOnCardCost(Object cardCost) {
    return 'Le coût de remplacement est de $cardCost. Voulez-vous continuer? ';
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
  String get myOrders => 'Mes commandes';

  @override
  String orderNumber(Object number) {
    return 'Commande N˚ $number';
  }

  @override
  String get orderSummaryOrderedCard => 'Carte commandée';

  @override
  String get orderSummaryStatus => 'Statut';

  @override
  String get orderSummaryDeliveryDate => 'Date de livraison';

  @override
  String get orderSummaryTrackingNumber => 'Numéro de suivi';

  @override
  String get orderSummaryPickupPoint => 'Point relais';

  @override
  String get noOrder => 'Vous n\'avez aucune commande en cours';

  @override
  String get noOrderMessage => 'Nous vous informerons lorsque votre numéro de compte Djamo aura été créé généré.';

  @override
  String orderStatusDescription(String status) {
    String _temp0 = intl.Intl.selectLogic(
      status,
      {
        'PENDING_VALIDATION': 'En attente de validation',
        'PENDING_DELIVERY': 'En attente de livraison',
        'PENDING_PICKUP': 'En attente de collecte au point relais',
        'FAILED_VALIDATION': 'Échec de validation',
        'FAILED_DELIVERY': 'Reprogrammation en cours',
        'DELIVERED': 'Livrée',
        'PICKED_UP': 'Récupérée',
        'ACTIVATED': 'Activée',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get appCameraNotAvailable => 'La caméra n\'est pas disponible';

  @override
  String get appCameraInitOnGoing => 'Initialisation de la caméra...';

  @override
  String get appCameraPermissionTitle => 'Autorisation de la caméra';

  @override
  String get appCameraPermissionMessage => 'Djamo a besoin d\'accéder à votre appareil photo pour prendre des photos';

  @override
  String get appCameraImpossibleToAccess => 'Il est impossible d\'accéder à la caméra. Réessayez';

  @override
  String get appCameraRetakePhoto => 'Reprendre la photo';

  @override
  String get appCameraTakeSelfie => 'Prenez un selfie';

  @override
  String get appCameraTakeSelfieInstruction => 'Positionnez votre visage dans le cercle de sorte à ce qu\'il soit bien visible';

  @override
  String get appCameraTakeSelfieWithIDInstruction => 'Prenez un selfie avec votre pièce d\'identité';

  @override
  String get kycSelectGenderTitle => 'Vous êtes ?';

  @override
  String kycGender(String gender) {
    String _temp0 = intl.Intl.selectLogic(
      gender,
      {
        'male': 'Un homme',
        'female': 'Une femme',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get kycHomeLocation => 'Lieu d’habitation';

  @override
  String get kycHomeLocationTitle => 'Lieu d’habitation';

  @override
  String get kycWhereDoYouLive => 'Où habitez-vous ?';

  @override
  String get kycWhereDoYouLiveWithPrecision => 'Plus précisément';

  @override
  String get kycIdentityDocumentTitle => 'Document d’identification';

  @override
  String get kycOthersCountries => 'Autres pays';

  @override
  String get kycSelectedDocSeemsInvalid => 'Le document sélectionné semble invalide';

  @override
  String get kycUploadingYourIds => 'Chargement de votre pièce d\'identité...';

  @override
  String get kycCheckingInfoMessage => 'L’envoi de vos pièces peut prendre jusqu’à 2 minutes selon votre connexion internet. Veuillez patienter svp.';

  @override
  String get productChooseThePlan => 'Sélectionnez un plan';

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
    return 'Plan $_temp0';
  }

  @override
  String get productPCName => 'Carte Physique';

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
  String get productPCFreeATMWithdrawal => 'Retraits gratuits dans tous les guichets';

  @override
  String get productPCFreeIBAN => 'Numéro de compte gratuit';

  @override
  String get productPCAccessToInvest => 'Djamo Invest';

  @override
  String productVCMonthlyCeiling(Object amount) {
    return 'Plafond mensuel $amount';
  }

  @override
  String get productVCNoBankAccountTopUp => 'Pas de rechargements via compte bancaire';

  @override
  String get productVCNoIBAN => 'Pas de Numéro de compte';

  @override
  String get offerMonthly => '/mois';

  @override
  String get offerAllBenefitsOfAndMore => 'Tous les avantages Free inclus';

  @override
  String get offerFreeIBAN => 'Numéro de compte *gratuit*';

  @override
  String get offerFreeWithdrawal => 'Retraits au guichet *gratuits*';

  @override
  String get offerFreeRejectFee => '*0* frais de rejet';

  @override
  String get offerFreeTransfer => 'Transferts vers Mobile Money et Banques *1,5%*';

  @override
  String get offerFreeVaults => '*2* coffres simultanés';

  @override
  String get offerPremiumTransfer => 'Transferts vers Mobile Money *gratuits*';

  @override
  String get offerPremiumBank => 'Transferts vers Banques *gratuits*';

  @override
  String get offerPremiumVaults => '*10* coffres simultanés';

  @override
  String get offerPremiumPriority => 'Service client *prioritaire*';

  @override
  String get offerPremiumBonus => '2% de bonus sur les paiements';

  @override
  String serviceGroupName(String identifier) {
    String _temp0 = intl.Intl.selectLogic(
      identifier,
      {
        'transfer': 'Transfert',
        'services': 'Factures',
        'card': 'Ma carte',
        'iban': 'N° de compte',
        'subscriptions': 'Abonnements',
        'pi': 'PI',
        'currency': 'Devise',
        'business': 'Business',
        'airtime': 'Achat crédit',
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
  String get serviceBillPayment => 'Payer une facture';

  @override
  String get serviceAirtime => 'Achat de crédit';

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
  String get serviceUnavailable => 'Service indisponible';

  @override
  String get accountMainAccountName => 'Compte principal';

  @override
  String get accountCardAccountName => 'Carte';

  @override
  String get accountVaultAccountName => 'Coffres';

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
    return '$amount par rejet pour fonds insuffisants';
  }

  @override
  String get accountSubscriptionCounterWireTransferLabel => 'Transferts vers un compte bancaire';

  @override
  String get accountSubscriptionPaymentBillingLabel => '0 frais sur les paiements à l\'infini.\nDes frais de change peuvent s\'appliquer pour les paiements en devises étrangères.';

  @override
  String get accountSubscriptionPaymentMinTransferFeeForNonPremiumBillingLabel => 'Tarif minimum : 150 F CFA.';

  @override
  String get accountSubscriptionChangePlan => 'Changer de plan';

  @override
  String get accountSubscriptionChangingPlan => 'Changement de plan tarifaire';

  @override
  String accountSubscriptionChangingPlanFreeToPremiumWaringMessage(Object name, Object price) {
    return 'Vous passerez immediatement au $name $price/mois';
  }

  @override
  String accountSubscriptionChangingPlanFromPremiumToFreeWaringMessage(Object date, Object plan) {
    return 'Changement de plan tarifaire.\nVous perdrez les avantages de votre $plan à compter du $date';
  }

  @override
  String get accountsYourAccountIsLockedCheckMessage => 'Votre compte est verrouillé. Déverrouillez-le pour continuer.';

  @override
  String get depositFeesLabel => 'Frais de dépôt';

  @override
  String get depositFreeCashInAgentUpsellMessage => 'Gagnez du temps! Rechargez votre compte chez un agent Djamo proche de vous sans frais.';

  @override
  String get depositBankTransferFreeOfCharge => 'Virement sans frais';

  @override
  String get depositBankWithTransferFees => 'Virement avec frais';

  @override
  String get depositAmountToBeReceived => 'Montant à recevoir';

  @override
  String get depositBankDepositStepsToFollow => 'Étapes à suivre';

  @override
  String get depositBankSelectBankTitle => 'Sélection de votre banque';

  @override
  String get depositBankAccountDetails => 'Détails du compte';

  @override
  String get depositBankAccountDetailsBankCode => 'Code banque';

  @override
  String get depositBankAccountDetailsAgencyCode => 'Code agence';

  @override
  String get depositBankAccountDetailsAccountNumber => 'Numéro de compte';

  @override
  String get depositBankAccountDetailsRIBKey => 'Clé RIB';

  @override
  String get depositBankCopyRIBKey => 'Copier le RIB';

  @override
  String depositBankShareRIBMessageTitle(Object holder) {
    return 'Informations du compte bancaire de $holder';
  }

  @override
  String depositBankShareRIBModalTitle(Object holder) {
    return 'Partager les informations du compte bancaire de $holder';
  }

  @override
  String depositBankShareRIBMessage(Object accountHolder, Object holder, Object holderBankLabel, Object wireBankAccountAccountNumber, Object wireBankAccountAgencyCode, Object wireBankAccountBankCode, Object wireBankAccountRIBKey) {
    return 'Détails de compte bancaire de $holder pour un versement en Agence bancaire\nBanque: $holderBankLabel\nNom du compte: $accountHolder\nCode Banque: $wireBankAccountBankCode\nCode Agence: $wireBankAccountAgencyCode\nNuméro de compte: $wireBankAccountAccountNumber\nClé RIB: $wireBankAccountRIBKey';
  }

  @override
  String get depositBankCopyRIBKeySuccess => 'Clé RIB copiée ✅';

  @override
  String get depositBankSendRIB => 'Envoyer le RIB';

  @override
  String get depositBankSelectBankInstructionDescription => 'Sélectionnez votre banque d\'où vous allez faire le virement';

  @override
  String get depositBankMakeDepositDescriptionForWireTransfer => 'Faites le virement sur le compte bancaire de Djamo';

  @override
  String get depositBankEnterAmountDescription => 'Saisissez le montant viré depuis votre compte bancaire';

  @override
  String get depositBankAddDepositProofTitle => 'Ajoutez une capture du virement comme preuve';

  @override
  String get depositBankMakeDepositTitle => 'Virement';

  @override
  String get depositBankIMadePayment => 'J\'ai effectué le versement';

  @override
  String get depositBankMakeDepositDescriptionForPhysicalDeposit => 'Remplissez le bordereaux de versement pour effectuer l’opération';

  @override
  String get depositBankProofOfTransfer => 'Preuve du virement';

  @override
  String get requestSent => 'Requête envoyée';

  @override
  String depositBankProcessingTime(Object time) {
    return 'Délai de traitement: $time heures';
  }

  @override
  String get depositBankMinimumAmount => 'Montant minimum de virement';

  @override
  String get depositBankDetails => 'Coordonnées bancaires';

  @override
  String get depositBankDetailsNotice => 'Utilisez ces informations pour le virement';

  @override
  String get depositBankAccountName => 'Nom du compte';

  @override
  String get depositBankAccountNameCopied => 'Nom du compte copié ✅';

  @override
  String get depositBankAccountNumber => 'Numéro à renseigner';

  @override
  String get depositBankAccountNumberCopied => 'Numéro de compte copié ✅';

  @override
  String get depositBankEnterAmountLabel => 'Renseigner le montant';

  @override
  String get depositBankTransferAmount => 'Montant du virement';

  @override
  String get depositBankTransferReceipt => 'Reçu du versement';

  @override
  String depositBankTransferViaIBAN(Object ibanFeatureName) {
    return 'Virement via mon $ibanFeatureName';
  }

  @override
  String get depositToDjamoAccount => 'Versement sur le compte Djamo';

  @override
  String get availableWithPhysicalCard => 'Disponible avec la carte physique';

  @override
  String get depositBankAvailableDepositOptions => 'Options disponibles';

  @override
  String get depositBankAcceptedProofScreenshotTitle => 'Les captures acceptées';

  @override
  String get depositBankAcceptedProofScreenshot1 => 'Écran de confirmation de l’application';

  @override
  String get depositBankAcceptedProofScreenshot2 => 'SMS/Email de confirmation';

  @override
  String get depositBankAcceptedProofScreenshot3 => 'Bordereau du virement cacheté';

  @override
  String get depositBankAccessToYourBankWebsite => 'Accédez au site web de votre banque';

  @override
  String get depositBankAccessToYourBankApp => 'Accédez à l’application de votre banque';

  @override
  String depositBankAddHolderAsBeneficiary(Object holder) {
    return 'Ajoutez $holder comme nouveau bénéficiaire';
  }

  @override
  String get depositBankMakeYouWireTransfer => 'Effectuez votre virement';

  @override
  String get depositBankTakeScreenshotOfConfirmation => 'Prenez une capture d’écran de la confirmation';

  @override
  String get depositBankBackInDjamoToContinue => 'Retournez sur Djamo pour rensigner le montant et ajouter la capture de confirmation';

  @override
  String depositBankOpenBankApp(Object appName) {
    return 'Ouvrir $appName';
  }

  @override
  String depositBankHolderAccountAtBank(Object bank, Object holder) {
    return '$holder chez $bank';
  }

  @override
  String get depositBankPrepareYourTransferReceipt => 'Préparez votre reçu de virement';

  @override
  String get depositBankPrepareYourTransferReceiptWarning => 'Assurez-vous d\'avoir le reçu de votre versement physiquement ou en photo avant de passer à l\'étape suivante.';

  @override
  String get depositBankSuccessTitle => 'En cours de vérification...';

  @override
  String get depositMomoUseMyPhoneNumber => 'Utiliser mon numéro';

  @override
  String get depositMomoAddAnotherPhoneNumber => 'Ajouter un autre numéro';

  @override
  String depositMomoUseAnotherServicePhoneNumber(Object service) {
    return 'Utiliser autre numéro $service';
  }

  @override
  String depositOperatorFees(Object fees) {
    return 'Frais opérateur ($fees%)';
  }

  @override
  String get depositMomoValidateWithOrangeApp => 'Valider avec l\'appli Orange Money';

  @override
  String get depositMomoValidateWithMaxItApp => 'Valider via l\'appli Max IT';

  @override
  String get depositMomoValidateWithUSSD => 'Valider via USSD';

  @override
  String get depositMomoConfirm => 'Confirmez le dépôt';

  @override
  String get depositMomoConfirmation => 'Confirmation';

  @override
  String get depositMomoEnterConfirmationCodeHint => 'Entrez le code reçu par SMS dans le champ ci-dessous puis cliquez sur “Confirmer le dépôt”';

  @override
  String get depositMomoConfirmDeposit => 'Confirmer le dépôt';

  @override
  String get depositMomoObtainConfirmationCode => 'Obtenez votre code de confirmation en composant le';

  @override
  String get depositMomoEnterConfirmationCode => 'Saisissez le code reçu';

  @override
  String get depositMomoOnGoing => 'Dépôt en cours';

  @override
  String depositMomoServiceOnGoing(Object service) {
    return 'Dépôt $service en cours';
  }

  @override
  String get depositMomoWeNeedYourConfirmation => 'Nous avons juste besoin de votre confirmation';

  @override
  String depositMomoValidationInstruction(Object service, Object syntax) {
    return 'Veuillez composer le $syntax pour valider le dépôt via $service';
  }

  @override
  String get phoneNumberUpdatedSuccessMessage => 'Numéro modifié avec succès';

  @override
  String get depositCancel => 'Annuler le dépôt';

  @override
  String get depositSuccessTitle => 'Dépôt réussi';

  @override
  String depositYouCardCantHaveSomeAmountMonthly(Object monthlyCashInLimit) {
    return 'Votre carte ne peut pas avoir plus de $monthlyCashInLimit dans le mois';
  }

  @override
  String get depositMonthlyLimitReached => 'Vous ne pouvez pas faire de dépôt car vous avez atteint votre limite de dépôt mensuelle.';

  @override
  String depositVcMonthlyLimitReached(Object monthlyLimitAmount) {
    return 'Votre limite de dépôt mensuelle est de $monthlyLimitAmount.\nFaites votre identification pour lever cette limite';
  }

  @override
  String depositPaymentSubscriptionDepositAmountInsufficient(Object sufficientAmount) {
    return 'Ce montant ne sera pas suffisant pour couvrir votre abonnement. Veuillez recharger au moins $sufficientAmount';
  }

  @override
  String get depositYourDepositFailed => 'Votre dépôt a échoué';

  @override
  String transferTypeTitle(String type) {
    String _temp0 = intl.Intl.selectLogic(
      type,
      {
        'local': 'Transfert local',
        'international': 'Transfert international',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get transfer => 'Transfert';

  @override
  String beneficiariesNextCashInPhoneNumberModificationMessage(String remainingDay) {
    String _temp0 = intl.Intl.selectLogic(
      remainingDay,
      {
        '0': '0 jour',
        '1': '1 jour',
        'other': '$remainingDay jours',
      },
    );
    return 'Vous pourrez modifier ce numéro dans $_temp0';
  }

  @override
  String get transferSendBy => 'Envoyer sur';

  @override
  String get transferSelectBeneficiary => 'Selectionnez le bénéficiaire';

  @override
  String get send => 'Envoyer';

  @override
  String get transferSearchContact => 'Rechercher un contact';

  @override
  String get transferBeneficiaryNumber => 'Numéro du bénéficiaire';

  @override
  String get transferP2PDescription => 'Ajouter une note';

  @override
  String get transferBeneficiaryName => 'Nom du bénéficiaire';

  @override
  String get transferIPayWithdrawalFee => 'Je paye les frais de retrait';

  @override
  String get transferTotalAmountToPay => 'Montant total à payer';

  @override
  String transferTotalAmountToPayIsGreaterThanBalance(Object balance) {
    return 'Le montant total à payer est supérieur à votre solde $balance';
  }

  @override
  String get transferWarningMessageForWrongPhoneNumber => 'Attention! En cas d\'erreur vous ne pourrez pas récupérer l\'argent transféré.';

  @override
  String get vaultTypeClassicLabel => 'Classic';

  @override
  String get vaultTypeCashbackLabel => 'Cashback';

  @override
  String get vaultTypeBlockedLabel => 'Bloqué';

  @override
  String get vaultTypeChallengeLabel => 'Challenge';

  @override
  String get vaultMyVaults => 'Mes coffres';

  @override
  String get vaultChallenges => 'Challenges';

  @override
  String get vaultCreateNewVaultTile => 'Créer un nouveau coffre';

  @override
  String get vaultModifyIcon => 'Modifier l’icône';

  @override
  String get vaultNameFieldLabel => 'Nom du Coffre';

  @override
  String get vaultDefineBlockingStatusTitle => 'Bloquer le coffre';

  @override
  String get vaultRecurringTransferDescription => 'Économisez 2 fois plus et sans y penser';

  @override
  String vaultWeeklyRecurrenceFrequency(Object weekDay) {
    return 'Chaque $weekDay';
  }

  @override
  String vaultMonthlyRecurrenceFrequency(Object day) {
    return 'Chaque $day du mois';
  }

  @override
  String get vaultDailyRecurrenceFrequency => 'Chaque jour';

  @override
  String vaultCurrentBalanceOf(Object vaultName) {
    return 'Solde Coffre $vaultName';
  }

  @override
  String get vaultDetailsTitle => 'Détails du coffre';

  @override
  String get vaultChallengeDetailsTitle => 'Détails du challenge';

  @override
  String get vaultSelectAnIconTitle => 'Sélectionnez une icône';

  @override
  String get vaultSelectAnIconDescription => 'Choisissez la nouvelle icône de votre coffre.';

  @override
  String get vaultDeadlineLabel => 'Échéance';

  @override
  String get vaultSparedChangeTag => 'Petite Monnaie';

  @override
  String get vaultRecurringTransferTag => 'V. récurrent';

  @override
  String get vaultCreateVault => 'Créer un coffre';

  @override
  String get vaultCreationOnGoing => 'Création de votre coffre en cours...';

  @override
  String get vaultAmountValidationExceedBalanceError => 'Le montant ne doit pas dépasser le solde du coffre';

  @override
  String get vaultSettings => 'Paramètres du coffre';

  @override
  String get vaultCustomize => 'Personnaliser le coffre';

  @override
  String get vaultCustomizeDescription => 'Changer le nom et l’icône du coffre';

  @override
  String get vaultDeleteVault => 'Supprimer le coffre';

  @override
  String vaultSparedChangeAcceleratorIndication(Object factor) {
    return 'Accélérateur x$factor';
  }

  @override
  String get vaultGiveUpChallenge => 'Quitter le challenge';

  @override
  String vaultDeleteConfirmationTitle(Object vaultName) {
    return 'Êtes-vous sûr de vouloir supprimer votre coffre $vaultName ?';
  }

  @override
  String get vaultDeleteConfirmationWarning => 'L’argent sur le coffre sera reversé sur votre compte principal.';

  @override
  String get vaultDeletedSuccess => 'Coffre supprimé avec succès';

  @override
  String get vaultChallenge => 'Challenge';

  @override
  String get vaultJoinChallenge => 'Participer au Challenge';

  @override
  String get vaultInfoOnChallenge => 'Infos sur le challenge';

  @override
  String get vaultChallengeReward => 'Récompenses';

  @override
  String get vaultMinChallengeDeposit => 'Dépôt Minimum';

  @override
  String vaultPercentHasSuccess(Object percent) {
    return '$percent% ont réussi';
  }

  @override
  String get vaultEnrollChallengeOnGoing => 'Enrôlement au challenge en cours...';

  @override
  String vaultTransactionOfVault(Object vaultName) {
    return 'Transactions de $vaultName';
  }

  @override
  String get vaultUniqueNameErrorMessage => 'Ce nom est déjà utilisé pour un autre coffre';

  @override
  String get blockedUntilChallengeEnd => 'Jusqu\'à la fin du challenge';

  @override
  String vaultJoinChallengeSuccessMessage(Object challengeName) {
    return 'Super ! Vous participez désormais au challenge $challengeName.';
  }

  @override
  String get vaultCantCustomizeChallengeVault => 'Vous ne pouvez pas personnaliser un coffre challenge';

  @override
  String get vaultQuitChallengeWarningMessage => 'L’abandon du challenge entraine la suppression du coffre. S’il y a encore de l’argent sur le coffre, il sera reversé sur votre compte principal.';

  @override
  String vaultYouAreNotPartOfChallenge(Object challengeName) {
    return 'Vous ne participez plus au challenge $challengeName.';
  }

  @override
  String vaultBlockWarningMessage(Object date) {
    return 'Votre coffre sera bloqué jusqu\'au $date. Vous ne pourrez pas le débloquer avant.';
  }

  @override
  String get vaultDoYouWantToEnableAutomaticDeposit => 'Voulez-vous approvisionner automatiquement votre coffre ?';

  @override
  String get transactionOnGoing => 'Transaction en cours...';

  @override
  String get transactions => 'Transactions';

  @override
  String get transferFailedMessage => 'Le traitement du transfert a échoué. Veuillez recommencer';

  @override
  String get loanRequestFailedMessage => 'Votre demande de prêt a échoué. Veuillez recommencer';

  @override
  String get loanIncreaseCreditLimit => 'Augmentez votre limite de crédit';

  @override
  String loanRepayBeforeDueDateSpecific(Object date) {
    return 'Remboursez votre crédit avant le $date pour augmenter votre limite de crédit.';
  }

  @override
  String get loanRepayNowToAvoidBeingBlacklisted => 'Remboursez votre crédit maintenant pour éviter d’être fiché bancaire dans la zone UEMOA.';

  @override
  String loanRepayBeforeDueDateSpecificWithDate(Object date) {
    return 'Remboursez votre crédit avant le $date pour éviter des pénalités supplémentaires.';
  }

  @override
  String loanRepayLateWarning(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: 'Attention - $number jours de retard',
      one: 'Attention - 1 jour de retard',
    );
    return '$_temp0';
  }

  @override
  String loanAvoidPenaltiesDaysLeft(num days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Évitez les pénalités - $days jours restants',
      one: 'Évitez les pénalités - 1 jour restant',
    );
    return '$_temp0';
  }

  @override
  String get transactionsChooseCategory => 'Choisissez une catégorie';

  @override
  String transactionStatusLabel(String status) {
    String _temp0 = intl.Intl.selectLogic(
      status,
      {
        'validated': 'Effectué',
        'completed': 'Effectué',
        'pending': 'En cours',
        'failed': 'Échoué',
        'frozen': 'En cours de vérification',
        'initiated': 'Initié',
        'other': '-',
      },
    );
    return '$_temp0';
  }

  @override
  String get transactionReceiptDateTimeTitle => 'Date & Heure';

  @override
  String get transactionReceiptStatusTitle => 'Statut';

  @override
  String get transactionReceiptAmountWithoutFeesTitle => 'Montant (sans les frais)';

  @override
  String get transactionReceiptFeesTitle => 'Frais';

  @override
  String get transactionReceiptExchangeRateTitle => 'Taux de change';

  @override
  String get transactionReceiptAmountTitle => 'Montant';

  @override
  String get transactionReceiptReferenceTitle => 'Référence';

  @override
  String get transactionReceiptBillReloadCodeTitle => 'Code de rechargement';

  @override
  String get transactionReceiptBillMessageTitle => 'Message';

  @override
  String get transactionEmptyTransactionsListMessage => 'Votre historique de transaction s’affichera ici';

  @override
  String get transactionsReceiptsTitle => 'Période';

  @override
  String get transactionsReceiptsCustomPeriod => 'Période personnalisée';

  @override
  String get transactionsReceiptsLastMonthPeriod => 'Le mois dernier';

  @override
  String get transactionsReceiptsLastThreeMonthPeriod => 'Les 3 derniers mois';

  @override
  String get transactionsReceiptsLastSixMonthPeriod => 'Les 6 derniers mois';

  @override
  String get transactionsReceiptsDownloadTitle => 'Choisissez le format:';

  @override
  String get transactionsReceiptsDownloadPDF => 'Télécharger en PDF';

  @override
  String get transactionsReceiptsDownloadCSV => 'Télécharger en CSV';

  @override
  String get transactionsReceiptsDownloadLabel => 'Télécharger';

  @override
  String get uncategorizedTransactions => 'Transactions à catégoriser';

  @override
  String get transactionProofOfPaymentRequired => 'Vous devez nous fournir la photo d’un reçu pour ce paiement afin d\'éviter la suspension de votre carte. Ceci est une réglementation de la banque centrale (BCEAO).';

  @override
  String get transactionProvideProof => 'Fournir une preuve';

  @override
  String get transactionProofRejected => 'Preuve rejetée';

  @override
  String get transactionProofRejectedMessage => 'La preuve que vous avez envoyée pour votre paiement a été rejetée. Vous devez soumettre une autre preuve SVP.';

  @override
  String get transactionRetryVerification => 'Réessayer la vérification';

  @override
  String get transactionPaymentValidated => 'Paiement validé';

  @override
  String get transactionProofValidated => 'La preuve que vous avez envoyée pour votre paiement a bien été validée.';

  @override
  String get transactionVerificationInProgress => 'Vérification en cours';

  @override
  String get transactionProofVerificationInProgress => 'La preuve que vous avez envoyée pour votre paiement est en cours de vérification.';

  @override
  String get transactionProofOfPaymentRequiredMessage => 'Veuillez fournir une preuve de paiement afin d\'éviter la suspension de votre carte.';

  @override
  String get transactionP2PNoteTitle => 'Note';

  @override
  String get sendForVerification => 'Envoyer pour vérification';

  @override
  String get importAnotherImage => 'Importer une autre image';

  @override
  String get transactionVerificationInProgressMessage => 'Vérification en cours. Votre preuve de paiement sera examinée pour confirmer sa véracité et vous protéger d\'une suspension de paiement.';

  @override
  String get remainingToRepay => 'Reste à rembourser';

  @override
  String get chooseMonth => 'Choisissez un mois';

  @override
  String get expensesByCategory => 'Dépenses par catégories';

  @override
  String get amountValidationRequiredError => 'Veuilez entrer un montant';

  @override
  String amountValidationExceedMaxError(Object maxAmount) {
    return 'Le montant ne doit pas dépasser $maxAmount';
  }

  @override
  String amountValidationExceedMinError(Object minAmount) {
    return 'Le montant ne doit pas être inférieur à $minAmount';
  }

  @override
  String amountValidationMultipleOfError(Object multiple) {
    return 'Le montant doit être un multiple de $multiple';
  }

  @override
  String amountValidationExceedBalanceError(Object balance) {
    return 'Le montant ne doit pas dépasser le solde de votre compte principal.\nSolde compte principal: $balance';
  }

  @override
  String get conversion => 'Devise';

  @override
  String get iban => 'N° de compte';

  @override
  String get ibanAccountNumber => 'Numéro de compte';

  @override
  String get ibanAccountNumberAbbr => 'N° de compte';

  @override
  String get ibanGetYourAccountNumber => 'Obtenez un Numéro de compte';

  @override
  String get ibanGetYourAccountNumberDescription => 'Recevez desormais tous vos virements bancaires UEMOA directement sur votre compte Djamo et sans frais';

  @override
  String get ibanGetMyAccountNumber => 'Obtenir mon N° de compte';

  @override
  String get ibanYourActivity => 'Activité';

  @override
  String get ibanYourActivityQuestion => 'Que faites-vous dans la vie ?';

  @override
  String get ibanAverageIncome => 'Revenu moyen';

  @override
  String get ibanAverageIncomeQuestion => 'Combien gagnez-vous par mois?';

  @override
  String get ibanContinueWithoutGiveTheseInfo => 'Continuer sans donner ces informations';

  @override
  String get ibanCreationOnGoing => 'Création de votre compte en cours...';

  @override
  String get ibanPendingCreation => 'N° de compte en cours de traitement';

  @override
  String get ibanWeWillNotifyYou => 'Nous vous informerons lorsque votre Numéro de compte aura été créé avec succès.';

  @override
  String get ibanYourAccountNumberCreationIsOnGoing => 'Votre numéro de compte est en cours de creation';

  @override
  String get ibanYouWillReceiveNotification => 'Vous recevrez une notification pour vous informer des qu’il sera disponible⚡';

  @override
  String get ibanLocalWireTransfer => 'Virement local';

  @override
  String get ibanLocalWireTransferSubtitle => 'Recevoir de l\'UEMOA';

  @override
  String get ibanInternationalWireTransfer => 'Virement international';

  @override
  String get ibanInternationalWireTransferSubtitle => 'Recevoir par virement international';

  @override
  String get ibanBeneficiaryBankName => 'Banque du bénéficiaire';

  @override
  String get ibanBeneficiaryName => 'Nom du bénéficaire';

  @override
  String get ibanBeneficiaryAccountNumber => 'Numéro de compte';

  @override
  String get ibanAccountNumberForInternationalTransfer => 'N° de compte pour virement international';

  @override
  String get ibanYourAccountNumberIsProvidedBy => 'Votre numéro de compte vous est fourni par';

  @override
  String get ibanComplianceWarningMessage => 'Ce numéro de compte n’est pas un compte bancaire mais seulement un moyen de vous permettre de recevoir un virement bancaire UEMOA sur votre compte Djamo';

  @override
  String get ibanShareShortUsageDescription => 'Recevoir un virement bancaire international';

  @override
  String get ibanAccountNumberShareShortUsageDescription => 'Recevoir un virement bancaire de l\'UAEMOA';

  @override
  String ibanBankProviderName(String isoCode) {
    String _temp0 = intl.Intl.selectLogic(
      isoCode,
      {
        'ci': 'Banque d\'Abidjan (BDA)',
        'sn': 'Banque de Dakar (BDK)',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get ibanInPdfAccountDetail => 'Détails du compte';

  @override
  String get ibanInPdfAccountHolder => 'Titulaire du compte';

  @override
  String get ibanInPdfAgencyCode => 'Code agence';

  @override
  String get ibanInPdfAccountNumber => 'Numéro de compte';

  @override
  String get ibanInPdfRIBKey => 'Clé RIB';

  @override
  String get ibanInPdfInternationalIdentifier => 'Identification internationale';

  @override
  String get ibanBICSWIFT => 'BIC/SWIFT';

  @override
  String get ibanUseIBANForWireTransferMessage => 'Veuillez utiliser les informations ci-dessous pour effectuer un virement bancaire UEMOA depuis votre application bancaire';

  @override
  String loansBorrowUpTo(Object amount) {
    return 'Empruntez jusqu\'à $amount';
  }

  @override
  String get loansCreditLimit => 'Mon plafond de crédit';

  @override
  String get loanHistory => 'Historique de mes crédits';

  @override
  String get howItWorks => 'Comment ça marche?';

  @override
  String get loanBorrowedAmount => 'Montant emprunté';

  @override
  String get loanDisbursementDate => 'Date de décaissement';

  @override
  String get loanAccelerationFees => 'Frais d’accélération';

  @override
  String get loanDisbursementFees => 'Frais de décaissement';

  @override
  String get monthlyInterestRate => 'Taux d’intérêt mensuel';

  @override
  String get loanPenalties => 'Pénalités';

  @override
  String get loanLastRepayment => 'Dernier remboursement';

  @override
  String get amountReceived => 'Montant reçu';

  @override
  String get loanRepaidAmount => 'Montant remboursé';

  @override
  String get transactionsWillAppearHere => 'Vos transactions s’afficheront ici.';

  @override
  String get loanEstimatedBorrowingCapacity => 'Capacité d\'emprunt estimée';

  @override
  String get loanDailyBorrowingCapacity => 'Capacité d\'emprunt du jour';

  @override
  String get loansCriteria => 'Critères';

  @override
  String updateDate(Object date) {
    return 'Mise à jour $date';
  }

  @override
  String get loansFastReception => 'Reception rapide';

  @override
  String get loansOnlyTwoPercentFees => 'Seulement 2% de frais';

  @override
  String get loansRepayIn30Days => 'Remboursez en 30 jours';

  @override
  String get loansUnderstandWhy => 'Comprendre pourquoi';

  @override
  String get loansNotEligibleCriteria => 'Vous n’êtes pas encore éligible à un crédit';

  @override
  String get loansImproveEligibilityCriteria => 'Améliorer votre éligibilité en remplissant ces critères';

  @override
  String get loansDepositAtLeast30k => 'Avoir déposé au moins 30.000F sur les 3 derniers mois';

  @override
  String get loansHavePhysicalCard => 'Avoir une carte physique';

  @override
  String get loansBorrow => 'Emprunter';

  @override
  String get loansTakeCredit => 'Prendre un crédit';

  @override
  String get loanDueDate => 'Échéance';

  @override
  String get loanInstantReceptionFees => 'Frais de réception instantanée';

  @override
  String get loanMonthlyAPR => 'TEG mensuel';

  @override
  String get loanAmountToRepay => 'Montant à rembourser';

  @override
  String get repay => 'Rembourser';

  @override
  String loanRepayBeforeDueDate(Object amount) {
    return 'Remboursez votre crédit avant l’échéance pour augmenter votre capacité d’emprunt à $amount';
  }

  @override
  String get loanRepayBeforeDueDateWarning => 'Remboursez votre crédit avant l’échéance pour éviter de payer des pénalités et perdre accès au service de crédit';

  @override
  String get loanRepayNowToAvoidPenalties => 'Remboursez votre crédit maintenant pour éviter d’accumuler des pénalités et d’être signalé.e au bureau de crédit de la zone UEMOA';

  @override
  String get monthlyLabel => 'mensuel';

  @override
  String get annuallyLabel => 'annuel';

  @override
  String get dailyLabel => 'journalier';

  @override
  String get monthPrefix => 'mois';

  @override
  String get yearPrefix => 'an(s)';

  @override
  String get daysPrefix => 'jour(s)';

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
  String get loansOnboardingProfessionalSituation => 'Quelle est votre situation professionnelle ?';

  @override
  String get loansOnboardingSectorOfActivity => 'Quel est votre secteur d’activité ?';

  @override
  String get loansOnboardingShooseSectorOfActivity => 'Choisir un secteur d’activité';

  @override
  String get loansOnboardingAverageMonthlyIncome => 'Quel est votre revenu moyen mensuel ?';

  @override
  String get loansOnboardingTermsOfEngagement => 'Conditions d\'engagement';

  @override
  String get loansOnboardingProfessionalStateSalaried => 'Salarié(e)';

  @override
  String get loansOnboardingProfessionalStateSelfEmployed => 'Profession libérale';

  @override
  String get loansOnboardingProfessionalStateRetired => 'Retraité(e)';

  @override
  String get loansOnboardingProfessionalStateStudent => 'Etudiant(e)';

  @override
  String get loansOnboardingProfessionalStateUnemployed => 'Sans activité';

  @override
  String get other => 'Autres';

  @override
  String get loansOnboardingSectorBankingInsurance => 'Banque / Assurance';

  @override
  String get loansOnboardingSectorITTelecom => 'Informatique / Télécoms';

  @override
  String get loansOnboardingSectorCommerce => 'Commerce';

  @override
  String get loansOnboardingSectorScience => 'Sciences';

  @override
  String get loansOnboardingSectorEducation => 'Education';

  @override
  String get loansOnboardingSectorTextile => 'Textile';

  @override
  String get loansOnboardingSectorLogistics => 'Logistique';

  @override
  String get loansOnboardingSectorConstruction => 'BTP';

  @override
  String get loansOnboardingSectorCraftsmanship => 'Artisanat';

  @override
  String get loanDisbursementInProgress => 'Votre crédit est en cours de décaissement. Vous pourrez le rembourser quand il sera décaissé.';

  @override
  String loanFullyRepaidMessageSuccess(Object amount) {
    return '$amount ont été remboursés. Vous avez remboursé la totalité de votre crédit.';
  }

  @override
  String get loanFullyRepaidMessage => 'Vous avez déjà remboursé la totalité de votre crédit.';

  @override
  String loanCreditReversalMessage(Object hours) {
    return 'Votre crédit sera reversé sur votre compte principal dans un délai de $hours heures.';
  }

  @override
  String get loanAccelerateDisbursement => 'Accélérer le décaissement';

  @override
  String get loanCreditReversalTodayMessage => 'Votre crédit sera reversé sur votre compte principal aujourd’hui.';

  @override
  String get loanBorrowing => 'Vous empruntez';

  @override
  String get loanCreditWillBeCreditedIn48h => 'Votre crédit sera crédité sur votre compte principal dans 48h.';

  @override
  String get loanDisplayMessage => 'Vos crédits s\'afficheront ici.';

  @override
  String get loanDisbursed => 'Décaissement';

  @override
  String amountWithPenalty(Object amount) {
    return '(incluant $amount de pénalité)';
  }

  @override
  String get accountAnalysis => 'Analyse de votre compte';

  @override
  String get loanApproval => 'Approbation du crédit';

  @override
  String get loanDisbursementMessage => 'Décaissement du crédit';

  @override
  String get loanCreditWillBeCreditedSoon => 'Votre crédit sera crédité sur votre compte principal dans quelques instants.';

  @override
  String get loansImproveEligibility => 'Améliorer mon éligibilité';

  @override
  String get moreThanMillionCFA => 'plus de 1.000.000 F CFA';

  @override
  String get late => 'En retard';

  @override
  String get pending => 'En attente';

  @override
  String get loading => 'En cours';

  @override
  String get refunded => 'Remboursement';

  @override
  String get reload => 'Rechargement';

  @override
  String get referralMyCode => 'Mon code de parrainage';

  @override
  String get referralInviteFriend => 'Inviter un.e ami.e';

  @override
  String referralAdvantagesTitle(Object amount) {
    return '$amount 🎉';
  }

  @override
  String get referralAdvantagesDescription => 'Pour obtenir votre bonus, vous et votre ami.e devez avoir une carte physique Djamo, et il.elle doit effectuer un paiement d\'au moins 5.000 F.';

  @override
  String referralWinUpTo(Object amount) {
    return 'Gagnez jusqu’à $amount en 3 étapes!';
  }

  @override
  String get referralReceiveGainAfterFirstGoldChildPayment => '1️⃣ Ayez une carte physique Djamo.\n2️⃣ Votre ami.e doit aussi avoir une carte physique Djamo.\n3️⃣ Il.elle effectue un paiement d’au moins 5.000 F avec Djamo.';

  @override
  String get referralPotentialBonus => 'Bonus potentiel';

  @override
  String get referralActivatedBonus => 'Bonus activé';

  @override
  String get referralSeeBonusDetail => 'Voir les détails de mes bonus';

  @override
  String get referralInviteFriendAndWin => 'Invitez vos ami(e)s et gagnez';

  @override
  String referralInvitedFriendsCount(Object count) {
    return 'Amis invités ($count)';
  }

  @override
  String get referralDefaultShareTitle => 'Partager mon code de parrainage Djamo';

  @override
  String referralDefaultShareMessage(Object code) {
    return 'Vous connaissez Djamo ? Je t\'ai choisi pour être l\'un des premiers à recevoir ta carte Visa.\nInscris-toi avec mon code $code. Cliquez sur ce lien pour télécharger l\'application';
  }

  @override
  String get statisticsTotalExpenses => 'Total des dépenses';

  @override
  String get beneficiariesContactPermission => 'Accès aux contacts';

  @override
  String get beneficiariesGiveContactPermission => 'Nous avons besoin de votre permission pour accéder à vos contacts';

  @override
  String get beneficiariesMyContacts => 'Mes contacts';

  @override
  String get beneficiariesRecent => 'Récents';

  @override
  String get deposit => 'Déposer';

  @override
  String get depositNoun => 'Dépôt';

  @override
  String get paymentVariation => 'Les dates et les montants des paiements peuvent varier en fonction du mois et du marchand.';

  @override
  String paymentDelayed(Object merchantName) {
    return 'Paiement $merchantName en retard';
  }

  @override
  String paymentUpcoming(Object merchantName) {
    return 'Paiement $merchantName à venir';
  }

  @override
  String dueDateComingSoon(Object days) {
    return 'à venir dans $days jour';
  }

  @override
  String get dueDateToday => 'à venir aujourd\'hui';

  @override
  String dueDateDue(Object date) {
    return 'dû le $date';
  }

  @override
  String dueDateComing(Object date) {
    return 'à venir le $date';
  }

  @override
  String get yourAccountIsPending => 'Votre compte en attente';

  @override
  String amountWillBeCredited(Object amount) {
    return '$amount seront crédités prochainement sur votre compte principal.';
  }

  @override
  String get cardsNoun => 'Carte';

  @override
  String get cardsSeeDetails => 'Voir les informations';

  @override
  String get cardsLockCard => 'Verrouiller';

  @override
  String cardDestroyedAt(Object date) {
    return 'Carte détruite le $date';
  }

  @override
  String get cardsLockCardDescription => 'Bloquez de facon temporaire';

  @override
  String get cardsLockOnGoing => 'Votre carte est en cours de verrouillage...';

  @override
  String get cardsUnlockCard => 'Déverrouiller';

  @override
  String get cardsUnlockCardDescription => 'Débloquez votre carte Djamo';

  @override
  String get cardsUnlockOnGoing => 'Votre carte est en cours de déverrouillage...';

  @override
  String get cardsManageYourSubscriptions => 'Gérer vos abonnements';

  @override
  String cardsCurrentSubscriptionsCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count abonnements identifiés',
      one: '1 abonnement identifié',
      zero: 'Aucun abonnement',
    );
    return '$_temp0';
  }

  @override
  String get cardsReplaceCard => 'Remplacer la carte';

  @override
  String get cardsReplaceCardDescription => 'Remplacez votre carte Djamo';

  @override
  String get cardsSeeMyOrders => 'Voir mes commandes';

  @override
  String get cardsSeeMyOrdersDescription => 'Suivez le statut de vos commandes';

  @override
  String get cardsChangeCardPin => 'Changer le code guichet';

  @override
  String get cardDestroyedNSFTitle => 'Votre carte a été supprimée';

  @override
  String cardDestroyedNSFPhysicalContent(Object nsfCount) {
    return 'La raison: $nsfCount échecs de paiement successifs. Commandez une nouvelle ici.';
  }

  @override
  String cardDestroyedNSFVirtualContent(Object nsfCount) {
    return 'La raison: $nsfCount échecs de paiement successifs. Activez une carte virtuelle ici.';
  }

  @override
  String get cardDestroyedRecreatedTitle => 'Nouvelle carte créée';

  @override
  String get cardDestroyedRecreatedContent => 'Votre ancienne carte virtuelle Djamo a été supprimée. Votre nouvelle carte est disponible ici.';

  @override
  String get monthly => 'Chaque mois';

  @override
  String get annually => 'Chaque année';

  @override
  String get weekly => 'Chaque semaine';

  @override
  String get quarterly => 'Chaque trimestre';

  @override
  String get semestral => 'Chaque semestre';

  @override
  String get chooseFrequency => 'Choisissez la fréquence';

  @override
  String get selectFrequencyDescription => 'Veuillez sélectionner la fréquence de cet abonnement';

  @override
  String stepProgress(Object currentIndex, Object totalSteps) {
    return 'Étape $currentIndex sur $totalSteps';
  }

  @override
  String get myPayments => 'Mes paiements';

  @override
  String get selectPaymentForSubscription => 'Sélectionnez un paiement qui correspond à un abonnement';

  @override
  String get subscriptionRemoved => 'Cet abonnement a été retiré de votre liste. Vous ne recevrez plus de rappel de paiement à venir.';

  @override
  String get subscriptionAdded => 'Succès. Votre abonnement a bien été ajouté.';

  @override
  String get active => 'Active';

  @override
  String get blocked => 'Bloqué';

  @override
  String get lastTransaction => 'Dernière transaction';

  @override
  String get subscriptionDate => 'Date d’abonnement';

  @override
  String get blockFuturePayments => 'Bloquer les futurs paiements';

  @override
  String get cancelSubscription => 'Annuler cet abonnement';

  @override
  String subscriptionAmountAndDate(Object amount, Object date) {
    return '$amount, le $date';
  }

  @override
  String get subscriptionRemoveBlock => 'Retirer le blocage';

  @override
  String get subscriptionRemoveReminder => 'Retirer le rappel';

  @override
  String get subscriptionConfirmBlocking => 'Confirmer le blocage';

  @override
  String get subscriptionPaymentBlockDescription => 'Bloque les futurs paiements de cet abonnement';

  @override
  String subscriptionMerchantBlockedSuccessfully(Object merchant) {
    return 'Les futurs paiements de votre abonnement $merchant sont dorénavant bloqués.';
  }

  @override
  String get subscriptionCancelBlockDescription => 'N\'annule pas votre abonnement ';

  @override
  String subscriptionPaymentDueDescription(Object merchant) {
    return 'Ne vous dispense pas des paiements dus auprès de $merchant';
  }

  @override
  String subscriptionBlockedSince(Object date) {
    return 'Les paiements de cet abonnement sont bloqués depuis le $date.';
  }

  @override
  String get subscriptionRemoveBlockDescription => 'En retirant le blocage :';

  @override
  String get subscriptionArrearsImmediateDeduction => 'Des arriérés de paiement peuvent être prélevés immédiatement';

  @override
  String subscriptionUnblockedMessage(Object date, Object merchant) {
    return 'Blocage retiré.\nProchain paiement $merchant prévu vers le $date';
  }

  @override
  String upcomingPaymentReminderSpecific(Object amount, Object date) {
    return 'Prochain prélèvement d\'environ $amount, prévu vers le $date';
  }

  @override
  String subscriptionMerchantBlocked(Object merchant) {
    return 'Futurs paiements $merchant ❌';
  }

  @override
  String depositAtLeastAmountToUnlockFuturePayment(Object amount) {
    return 'Effectuez un dépôt d\'au moins $amount pour débloquer le paiement futur';
  }

  @override
  String get thankYou => 'Merci!';

  @override
  String get searchBeneficiary => 'Rechercher un bénéficiaire';

  @override
  String get addBeneficiary => 'Ajouter un bénéficiaire';

  @override
  String get beneficiary => 'Bénéficiaire';

  @override
  String get noBeneficiariesAdded => 'Rajouter un bénéficiaire';

  @override
  String get allYourBeneficiariesWillAppearHere => 'Tous vos bénéficiaires apparaîtront ici';

  @override
  String get accountHolder => 'Titulaire du compte';

  @override
  String get enterBeneficiaryDetails => 'Veuillez entrer le nom et les prénoms du bénéficiaire tels qu\'ils sont enregistrés sur son compte bancaire';

  @override
  String get modifyBeneficiary => 'Modifier un bénéficiaire';

  @override
  String get fieldRequiredErrMessage => 'Veuillez renseigner une valeur';

  @override
  String get phoneNumberInvalidErrMessage => 'Ce numéro de téléphone est invalide';

  @override
  String phoneNumberPrefixNotPresentErrMessage(Object callingCode) {
    return 'Veuillez préciser le préfixe. Exemple : +$callingCode';
  }

  @override
  String get ibanCodeInvalid => 'Le code banque est invalide';

  @override
  String get numberIbanCodeCaracterInvalid => '24 caractères requis';

  @override
  String get unknownBanque => 'Banque inconnue';

  @override
  String get transferByMobileMoney => 'Par Mobile Money';

  @override
  String get transferByCash => 'En espèces';

  @override
  String get transferByBankAccount => 'Depuis mon compte bancaire';

  @override
  String get transferFromAbroad => 'Depuis l’étranger';

  @override
  String get bankTransferSuccessMessage => 'Vous recevrez le transfert bancaire sur votre compte dans un délai de 2 jours ouvrés.';

  @override
  String get salary => 'Salaire';

  @override
  String get update => 'Modifier';

  @override
  String get deleteBeneficiary => 'Supprimer le bénéficiaire';

  @override
  String get updateBeneficiary => 'Modifier le bénéficiaire';

  @override
  String get transferIbanNumber => 'Numéro IBAN';

  @override
  String get airtimeSelectOperator => 'Sélectionnez l\'opérateur';

  @override
  String get airtimeSelectBeneficiary => 'Sélectionnez le bénéficiaire';

  @override
  String get airtimeBuySuccessMessage => 'Achat de crédit effectué';

  @override
  String get airtimeBuySuccessWarningMessage => 'Votre carte SIM sera rechargée dans moins de 5 minutes';

  @override
  String get airtimeWarningMessageForWrongPhoneNumber => 'Attention! En cas d\'erreur vous ne pourrez pas récupérer l\'argent.';

  @override
  String get supportClient => 'Service Client';

  @override
  String get supportContactUs => 'Contactez-nous';

  @override
  String get supportCallClientService => 'Appelez le service client';

  @override
  String get supportChatWithUs => 'Chatter avec le support';

  @override
  String get supportPhoneCopied => 'Numéro de téléphone copié ✅';

  @override
  String get supportDefaultCallCenterAvailabilityMessage => '8h à 20h';

  @override
  String get supportDefaultChatSupportAvailabilityMessage => '8h à 20h - Réponse en moins de 5 minutes';

  @override
  String get supportSearchAnswers => 'Rechercher des reponses...';

  @override
  String get supportFrequentlyAskedQuestions => 'Questions fréquentes';

  @override
  String get seeAll => 'Voir tout';

  @override
  String get selectCategory => 'Sélectionnez une catégorie';

  @override
  String get supportNeedHelp => 'Besoin d’aide?';

  @override
  String get emptySearchArticle => 'Aucun résultat n\'a été trouvé pour votre recherche. Veuillez essayer un autre mot-clé.';

  @override
  String get avoid_fees_by_upgrading => 'Évitez les frais en devenant premium';

  @override
  String get becomePremium => 'Passer au plan Prémium';

  @override
  String all_free_plus_benefits(Object message) {
    return 'Tous les avantages $message';
  }

  @override
  String get available_for_free => 'Gratuit';

  @override
  String plusAmountFees(Object amount) {
    return '$amount de Frais';
  }

  @override
  String confirmation_subscription_message(Object price) {
    return 'En confirmant, vous acceptez d\'être facturé $price/mois après votre mois premium gratuit';
  }

  @override
  String get month => 'mois';

  @override
  String monthCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mois',
    );
    return '$_temp0';
  }

  @override
  String yearAbbrCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ans',
      one: '1 an',
      zero: '',
    );
    return '$_temp0';
  }

  @override
  String get all_inclusive => 'Tout inclus';

  @override
  String get budgetManageMyBudgets => 'Gérer mes budgets';

  @override
  String get budgetDefineAmount => 'Définissez le montant du budget';

  @override
  String get budgetDefineAmountDescription => 'Fixez le montant que vous souhaitez ne pas dépasser';

  @override
  String get budgetModifyMyBudget => 'Modifier mon budget';

  @override
  String get budgetDefineMyBudget => 'Définir mon budget';

  @override
  String get noTransactionsInCategory => 'Vous n’avez aucune transaction dans cette catégorie. Faites vos dépenses avec Djamo pour mieux suivre vos finances.';

  @override
  String get marketPOS => 'Points relais Djamo';

  @override
  String get marketSeePOSForDeposit => 'Voir les points de dépôt';

  @override
  String get marketPOSMakeDeposit => 'Faire un dépôt';

  @override
  String get marketPOSPickup => 'Récupérer ma carte';

  @override
  String get marketNoDepositPOS => 'Pas de point de dépôt dans vos environs';

  @override
  String get marketNoPickupPOS => 'Pas de point de récupération de carte dans vos environs';

  @override
  String get marketNoPOSNearbyMessage => 'Pensez à vous déplacer vers une zone plus fréquentée (ex.: vers un supermarché ou un restaurant)';

  @override
  String get marketEnableLocationServicesTitle => 'Services de localisation';

  @override
  String get marketEnableLocationServicesDescription => 'Activez les services de localisation pour trouver les points de vente à proximité.';

  @override
  String get marketGrantLocationPermissionTitle => 'Accès à la localisation';

  @override
  String get marketGrantLocationPermissionDescription => 'Nous avons besoin de votre localisation pour afficher les points relais Djamo à proximité. Veuillez accorder l\'autorisation.';

  @override
  String get marketEnableLocationServices => 'Activer la localisation';

  @override
  String get marketSearchingPOS => 'Recherche des points relais à proximité...';

  @override
  String get marketCallPOS => 'Appeler le gérant';

  @override
  String get marketLocalizePOS => 'Localiser le point relais';

  @override
  String get marketCitySelectionTitle => 'Sélectionnez votre ville';

  @override
  String get marketCityAreaSelectionTitle => 'Sélectionnez une zone';

  @override
  String get marketSearchCity => 'Rechercher une ville';

  @override
  String get marketSearchCityLocation => 'Rechercher la zone...';

  @override
  String get billsBuyBill => 'Payer une facture';

  @override
  String get purchaseSimulator => 'Simulateur d’achat';

  @override
  String get billsAccount => 'Compte';

  @override
  String get billsAccountLabel => 'Libellé';

  @override
  String get billsReferenceAccount => 'Référence';

  @override
  String get billsReferenceAccountLabel => 'Libellé du compte';

  @override
  String billsReferenceAccountLabelDescription(Object labelTypeName) {
    return 'Votre $labelTypeName sera associé à ce libellé. Vous pourrez toujours le modifier plus tard.';
  }

  @override
  String get billsReferenceAccountHomeLabelSuggestions => 'Maison|Parents|Soeur|Frère|Nièce|Autre';

  @override
  String get billsReferenceAccountCarLabelSuggestions => 'Véhicule principal|Véhicule secondaire|Autre';

  @override
  String get billsReferenceAccountOwnerName => 'Nom du client';

  @override
  String billsReferenceAccountCurrentBalance(Object balance) {
    return 'Solde: $balance';
  }

  @override
  String billsReferenceAccountArrears(Object arrears) {
    return 'Solde arriéré: $arrears';
  }

  @override
  String get selectAnAccount => 'Sélectionnez un compte';

  @override
  String get addAccount => 'Ajouter un compte';

  @override
  String get addTheAccount => 'Ajouter le compte';

  @override
  String get validationFieldRequired => 'Ce champ est requis';

  @override
  String get validationSpecialCharacterNotAllowed => 'Les caractères spéciaux ne sont pas autorisés. Utilisez uniquement des lettres.';

  @override
  String ratesWithInternationalFees(Object date) {
    return 'Taux avec frais au $date';
  }

  @override
  String get estimation => 'Estimation';

  @override
  String get currencyConverterFeesExplanation => '👉🏿 Ce simulateur estime le coût total de votre achat, incluant les frais de change de Djamo et ses banques partenaires.';

  @override
  String get currencyConverterDeviseExplanation => '👉🏿 Optez pour la devise locale du marchand (ex.: France-EUR, Canada-CAD) pour éviter des frais supplémentaires.';

  @override
  String get searchCountryCurrency => 'Chercher le pays ou la monnaie';

  @override
  String get transactionFeesInternational => 'Frais de transaction internationale';

  @override
  String get messagingMyNotifications => 'Mes notifications';

  @override
  String get messagingNoNotification => 'Aucune notification';

  @override
  String get messagingNoNotificationDescription => 'Vous n\'avez pas de notification pour le moment';

  @override
  String get cardOwner => 'Titulaire de la carte';

  @override
  String get cardNumber => 'Numéro de carte';

  @override
  String get cardNumberCopied => 'Numéro de carte copié avec succès';

  @override
  String get expirationDate => 'Date d\'expiration';

  @override
  String minimumBalanceToViewCard(Object minimumBalance) {
    return 'Solde minimum de $minimumBalance';
  }

  @override
  String minimumBalanceToViewCardDescription(Object minimumBalance) {
    return 'Vous devez avoir un solde d\'au moins $minimumBalance pour afficher les détails de votre carte';
  }

  @override
  String get submitKycBeforeShowPAN => 'Pour des raisons de réglementation, veuillez soumettre votre identification afin d’afficher les informations de votre carte.';

  @override
  String get noGifsFound => 'Aucun GIF trouvé';

  @override
  String get noGifsFoundDescription => 'Désolé, nous n\'avons pas trouvé de GIF correspondant à votre recherche.';

  @override
  String get searchGif => 'Rechercher un GIF';

  @override
  String get noTransactionsFound => 'Aucune transaction trouvée';

  @override
  String get yourTransactionsWillAppearHere => 'Vos transactions s\'afficheront ici';

  @override
  String get noTransactionsFoundForPeriod => 'Aucune transaction trouvée pour la période sélectionnée';

  @override
  String get noTransactionsFoundForCategory => 'Aucune transaction trouvée pour la catégorie sélectionnée';

  @override
  String get noTransactionToBeCategorized => 'Aucune transaction à catégoriser';

  @override
  String get noPaymentTransactionsFound => 'Aucune transaction de paiement trouvée';

  @override
  String get searchTransaction => 'Rechercher une transaction';

  @override
  String get loanAmount => 'Montant du prêt';

  @override
  String get receptionMode => 'Mode de réception';

  @override
  String get instantReception => 'Réception instantanée';

  @override
  String get normalReception => 'Réception normale';

  @override
  String get interestEarned => 'Intérêts gagnés';

  @override
  String get howToCancel => 'Comment annuler';

  @override
  String get subscriptionSourceQuestion => 'D\'où vient cet abonnement ?';

  @override
  String get subscriptionAutomaticSourceInfo => 'Notre système a automatiquement identifié cet abonnement en se basant sur votre historique de transaction';

  @override
  String get removeSubscriptionIf => 'Retirez cet abonnement de votre liste d’abonnements si :';

  @override
  String get subscriptionIsNotRecurring => 'Il ne s’agit pas d’un abonnement récurrent';

  @override
  String subscriptionAlreadyCancelFromMerchant(Object merchantName) {
    return 'Vous avez déjà annulé l’abonnement chez $merchantName';
  }

  @override
  String get seeTransactions => 'Voir les transactions';

  @override
  String get notASubscription => 'Ce n’est pas un abonnement';

  @override
  String howToCancelSubscriptionFromMerchant(Object merchantName) {
    return 'Comment annuler l’abonnement chez $merchantName';
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
  String get invest => 'Investir';

  @override
  String get investMyInvestmentsProducts => 'Mes produits d\'investissement';

  @override
  String get investGrowYourWealth => 'Développez votre patrimoine';

  @override
  String get investHighYieldPotential => 'Potentiel de rendement élevé';

  @override
  String get investDiversifiedPortfolio => 'Portefeuille diversifié avec gestion professionnelle';

  @override
  String get investYourFirstSteps => 'Vos premiers pas avec Djamo Invest';

  @override
  String get investAvailableFunds => 'Fonds disponibles';

  @override
  String get investPerformanceObjective => 'Objectif de rendement';

  @override
  String get investAnnualYieldObjective => 'Objectif de rendement annuel';

  @override
  String get investFundDetail => 'Détail du fonds';

  @override
  String get investFundPricing => 'Tarification du fond';

  @override
  String get investFundShareValue => 'Valeur d’une part';

  @override
  String get investAboutThisFund => 'A propos de ce fond';

  @override
  String investDepositLabel(Object shares) {
    return 'Dépôt pour achat de $shares parts';
  }

  @override
  String investWithdrawalLabel(Object shares) {
    return 'Retrait de $shares parts';
  }

  @override
  String investTransactionServiceLabel(String type) {
    String _temp0 = intl.Intl.selectLogic(
      type,
      {
        'subscription': 'd\'achat',
        'selling': 'de retrait',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String investServiceUnavailable(Object label) {
    return 'Le service $label est indisponible pour l\'instant. Nous vous notifierons dès disponibilité du service.';
  }

  @override
  String get investWithdrawalInProgress => 'Vous avez un ordre de rachat en cours de traitement. Vous serez en mesure de présenter un nouveau retrait une fois que le précédent aura été validé.';

  @override
  String get investPurchaseConfirmationMessage => 'Votre achat de parts sera effectif dans un délai de 24h (jour ouvré).';

  @override
  String get investSellConfirmationMessage => 'Votre ordre de retrait sera effectif dans un délai de 24h (jour ouvré).';

  @override
  String investTransactedShares(Object shares) {
    return 'De $shares parts';
  }

  @override
  String get investKeyInformation => 'Informations clés pour l’investisseur';

  @override
  String investDisableAutomaticDepositConfirmationMessage(Object fundName) {
    return 'Voulez-vous désactiver votre dépôt automatique sur $fundName ? Ce dernier garantit un investissement qui fructifie sans effort.';
  }

  @override
  String get readAndApproved => 'Lu et approuvé';

  @override
  String get objectivesReached => 'Objectifs atteints';

  @override
  String get daysRemaining => 'Jours restants';

  @override
  String get depositSuccess => 'Dépôt réussi';

  @override
  String get automaticDeposit => 'Dépôt automatique';

  @override
  String get quickDeposit => 'Dépôt rapide';

  @override
  String get depositTitle => 'Dépôt';

  @override
  String get moreOptions => 'Plus d\'options';

  @override
  String get newTile => 'Nouveau';

  @override
  String get enableAutomaticDeposit => 'Activer les dépôts automatiques';

  @override
  String get settingsChangedSuccessfully => 'Paramètre(s) modifié(s) avec succès.';

  @override
  String get myQRCode => 'Mon QR';

  @override
  String get scan => 'Scanner';

  @override
  String get shareMyQRCode => 'Partager mon code QR';

  @override
  String get shareQRCode => 'Partager le QR Code';

  @override
  String get invalidDjamoQrCodeMessage => 'Ce code QR n\'est pas un code Djamo valide';

  @override
  String isNotCountryClient(Object country) {
    return 'Ce client n\'est pas un client Djamo';
  }

  @override
  String get sharingQRCodeFailedMessage => 'Échec du partage du code QR';

  @override
  String get useMyQRCodeDescription => 'Utilise mon Code QR pour me faire un dépôt chez un agent ou un transfert DJAMO';

  @override
  String get scanQRToMakeTransfer => 'Scannez un code QR pour faire un transfert Djamo 🚀';

  @override
  String get unAllowedScanToYourSelf => 'Vous ne pouvez pas vous envoyer de l\'argent à vous-même. Veuillez scanner le QR code d\'un autre utilisateur.';

  @override
  String get entryFees => 'Frais d\'entrée';

  @override
  String get exitFees => 'Frais de sortie';

  @override
  String maxDepositByDay(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dépôts max/jour',
      one: '1 dépôt max/jour',
      zero: 'Pas de limite de dépôt',
    );
    return '$_temp0';
  }

  @override
  String get byDay => 'Par jour';

  @override
  String get byWeek => 'Par semaine';

  @override
  String get byMonth => 'Par mois';

  @override
  String get byYear => 'Par an';

  @override
  String get supplyDay => 'Jour d\'approvisionnement';

  @override
  String get modificationOnGoing => 'Modification en cours...';

  @override
  String get block => 'Bloquer';

  @override
  String untilDate(Object date) {
    return 'Jusqu\'au $date';
  }

  @override
  String get later => 'Plus tard';

  @override
  String get newCodeValidated => 'Nouveau code validé';

  @override
  String get firstAndLastName => 'Nom et prénom';

  @override
  String get allowDjamoSendNotification => 'Autoriser Djamo à vous envoyer des notifications';

  @override
  String get start => 'Démarrer';

  @override
  String get performance => 'Performance';

  @override
  String get viewDetails => 'Consulter les détails';

  @override
  String depositFrom(Object amount) {
    return 'Dépôt à partir de $amount';
  }

  @override
  String onTheLast(Object month) {
    return 'Sur les $month derniers mois';
  }

  @override
  String iConfirmReadAndUnderstood(Object doc) {
    return 'Je confirme avoir lu, compris et m’engage à respecter les $doc';
  }

  @override
  String get cashback => 'Cashback';

  @override
  String pendingTransaction(num pendingCount) {
    String _temp0 = intl.Intl.pluralLogic(
      pendingCount,
      locale: localeName,
      other: 'Transactions en attente',
      one: 'Transaction en attente',
      zero: 'Aucune transaction en attente',
    );
    return '$_temp0';
  }

  @override
  String get transferInitialization => 'Initialisation du transfert';

  @override
  String get debitFromYourDjamoAccount => 'Débit de votre compte Djamo';

  @override
  String debitFromYourAccount(Object accountName) {
    return 'Débit de votre compte $accountName';
  }

  @override
  String get transferProcessingByOperator => 'Traitement du transfert par l\'opérateur';

  @override
  String get funds => 'Fonds';

  @override
  String get initializingYourTransaction => 'Initialisation de votre transaction';

  @override
  String get depositConfirmationInProgress => 'Confirmation de votre dépôt en cours';

  @override
  String get momoTransferConfirmationMessage => 'Vous recevrez le transfert sur votre compte mobile money d’ici quelques minutes.';

  @override
  String get deleteAutomaticDeposit => 'Supprimer le dépôt automatique';

  @override
  String get recurrence => 'Récurrence';

  @override
  String get leaveActivated => 'Laisser activé';

  @override
  String get pauseIt => 'Mettre en pause';

  @override
  String monthlyCeilingAt(Object amount) {
    return 'Plafond mensuel à $amount';
  }

  @override
  String get onlineAndInStorePayment => 'Paiement *en ligne et en magasin*';

  @override
  String get withdrawalsAtTellers => '*Retraits aux guichets*';

  @override
  String get freeMobileMoneyTransfers => '*Transferts mobile money gratuits*';

  @override
  String get freeRibForSalary => '*RIB gratuit pour le salaire*';

  @override
  String get accessToDjamoInvest => '*Accès à Djamo Invest*';

  @override
  String get onlinePayment => 'Paiement *en ligne*';

  @override
  String get physical => 'Physique';

  @override
  String get virtual => 'Virtuelle';

  @override
  String get selectCard => 'Sélectionnez une carte';

  @override
  String get newBalance => 'Nouveau Solde';

  @override
  String get operator => 'Opérateur';

  @override
  String get rate => 'Taux';

  @override
  String get rateIncludingInternationalFees => 'Taux (incluant frais internationaux)';

  @override
  String djamoCardMasked(Object lastFourDigits) {
    return 'Carte Djamo XXXX-$lastFourDigits';
  }

  @override
  String get paidWith => 'Payé avec';

  @override
  String get refund => 'Remboursement';

  @override
  String get loanDisbursement => 'Décaissement crédit';

  @override
  String get payment => 'Paiement';

  @override
  String get transactionReceipt => 'Reçu de transaction';

  @override
  String get messagingToken => 'Token de messagerie';

  @override
  String get partnershipWith => 'En partenariat avec';

  @override
  String get issueWithAccountSubscription => 'Problème avec l\'abonnement de votre compte, veuillez contacter le service client pour plus d\'informations.';

  @override
  String get redoMyIdentification => 'Refaire mon identification';

  @override
  String get issueWithYourIdentification => 'Problème avec votre identification';

  @override
  String get offlineMessage => 'Vous êtes hors ligne. Vos données pourraient ne pas être à jour.';

  @override
  String get yourCardWillBeDeliveredSoon => 'Votre carte vous sera bientôt livrée';

  @override
  String expectedDeliveryDate(Object date) {
    return 'La date de livraison prévue est le $date. Changez le lieu de livraison ici.';
  }

  @override
  String get collectYourCardNow => 'Récupérez votre carte maintenant';

  @override
  String get collectYourCardFromAgent => 'Récupérez votre carte chez un agent Djamo. Trouvez-en un proche de vous ici.';

  @override
  String get deliveryFailed => 'Nous n’avons pas pu vous livrer 😥';

  @override
  String get deliveryRescheduled => 'La livraison est reportée. Le service client vous contactera bientôt.';

  @override
  String get orderBeingProcessed => 'Commande en cours de traitement';

  @override
  String get pleaseWaitSupportContact => 'Veuillez patienter. Le service client vous contactera bientôt.';

  @override
  String get yourCardIsReady => 'Votre carte est prête 🎉';

  @override
  String get collectFromDjamoAgent => 'Récupérez votre carte chez un agent Djamo. Trouvez-en un proche de vous ici.';

  @override
  String get preferDelivery => 'Vous préférez vous faire livrer ?';

  @override
  String get scheduleFreeDelivery => 'Programmez la livraison gratuite de votre carte ici.';

  @override
  String get increaseYourLimit => 'Augmentez votre plafond à 2 millions F';

  @override
  String get verifyIdentityToIncreaseLimit => 'Faites votre identification pour augmenter votre plafond maintenant.';

  @override
  String get orderPhysicalCard => 'Commandez votre carte physique';

  @override
  String get physicalCardBenefits => 'Faites des transactions jusqu’à 10 millions F par mois avec votre carte physique.';

  @override
  String get verifyYourIdentity => 'Vérifiez votre identité';

  @override
  String get completeIdentificationToFinishOrder => 'Faites votre identification ici pour terminer votre commande.';

  @override
  String get identityIssue => 'Problème avec votre identification';

  @override
  String get invalidIdentityData => 'Veuillez fournir un document approuvé: CNI ou passeport. Réessayez ici.';

  @override
  String get needHelpWithIdentity => 'Besoin d’aide avec votre identification ?';

  @override
  String get getAssistanceAtRelayPoint => 'Vous pouvez passer en point relais pour être assisté(e). Consultez la liste ici.';

  @override
  String get paymentInitialization => 'Initialisation du paiement';

  @override
  String get codeActivation => 'Activation de votre code';

  @override
  String get takePhotoWithId => 'Prenez-vous en photo avec votre pièce d\'identité sous le mention. Une fois cadrée, appuyez pour capturer.';

  @override
  String get sendManualRequest => 'Envoyer une demande manuelle';

  @override
  String get requestManualPasscodeResetConfirmation => 'Nous avons bien reçu votre demande, vous recevrez un SMS lorsque votre demande sera traitée avec succès.';

  @override
  String get manualRequest => 'Demande manuelle';

  @override
  String get passcodeIncorrect => 'Code de sécurité incorrect';

  @override
  String get services => 'Factures';

  @override
  String get logout => 'Se déconnecter';

  @override
  String get noContactFoundForSearch => 'Aucun contact trouvé pour votre recherche';

  @override
  String get confirmLogout => 'Voulez-vous vous déconnecter ?';

  @override
  String get logoutMe => 'Me déconnecter';

  @override
  String subscriptionActivationTime(Object delayInMinutes, Object operator) {
    return 'Votre abonnement $operator sera actif dans un délai de ${delayInMinutes}mn.';
  }

  @override
  String reloadCode(Object code) {
    return 'Votre code de rechargement est $code';
  }

  @override
  String get copyCode => 'Copier le code';

  @override
  String get setNewSecurityCode => 'Définir un nouveau code de sécurité';

  @override
  String get noResultForSearch => 'Aucun résultat pour votre recherche';

  @override
  String get stayInAppWhileProcessing => 'Veuillez patienter un instant et ne pas sortir de l’application.';

  @override
  String get yourIdDocument => 'Votre pièce d’identité';

  @override
  String get yourSelfie => 'Votre selfie';

  @override
  String get verificationSuccessful => 'Vérification réussie';

  @override
  String get sendFailed => 'Échec de l’envoi';

  @override
  String get reconnecting => 'Je me réconnecte';

  @override
  String get mandatoryUpdate => 'Mise à jour obligatoire';

  @override
  String get updateNow => 'Mettre à jour';

  @override
  String get updateAvailable => 'Mise à jour disponible';

  @override
  String get referralAccount => 'Compte de parrainage';

  @override
  String get enterCurrentSecurityCode => 'Veuillez entrer votre code de sécurité actuel';

  @override
  String get verifyingCurrentSecurityCode => 'Vérification de votre code de sécurité actuel...';

  @override
  String get myCode => 'Mon code';

  @override
  String planActivationSuccess(Object productName) {
    return 'Vous êtes maintenant sur le plan $productName';
  }

  @override
  String get updateAvailableBanner => 'Une mise à jour disponible 🎉';

  @override
  String get updatePrompt => 'Cliquez ici pour mettre à jour votre version de Djamo';

  @override
  String upcomingPaymentReminder(Object amount, Object merchantName, Object nextDueAt) {
    return 'Il semblerait que vous ayez un paiement $merchantName à venir le $nextDueAt, pour environ $amount.';
  }

  @override
  String multipleUpcomingPaymentsReminder(Object nextDueAt, Object totalAmount) {
    return 'Il semble que vous avez plusieurs paiements à venir à partir du $nextDueAt, pour environ $totalAmount.';
  }

  @override
  String get payments => 'Paiements';

  @override
  String get all => 'Toutes';

  @override
  String get expenses => 'Dépenses';

  @override
  String get deposits => 'Dépôts';

  @override
  String get searchTitle => 'Rechercher';

  @override
  String get inviteCodeCopied => 'Code d’invitation copié avec succès';

  @override
  String get loadMore => 'Charger plus';

  @override
  String get confirmDeposit => 'Valider le dépôt';

  @override
  String get vaultNotFound => 'Il semble que ce coffre n\'existe pas.';

  @override
  String get yourVBVConfirmationCode => 'Votre code de confirmation est';

  @override
  String get confirmationVBVCodeWarning => 'Ne partagez ce code avec personne au téléphone. Ne composez aucune syntaxe USSD. Entrez ce code sur le site du marchand pour valider la transaction.';

  @override
  String get lockEmojiCode => '🔐 Code';

  @override
  String get useThisCodeToLogin => 'Utilisez ce code pour vous connecter à votre compte Djamo business';

  @override
  String get cardDetailLoadingError => 'Erreur pendant le chargement des informations de votre carte';

  @override
  String amountInCurrency(Object currency) {
    return 'Montant en $currency';
  }

  @override
  String get at => 'à';

  @override
  String get operationInfo => 'Infos sur l’opération';

  @override
  String get sharePurchase => 'Achat de parts';

  @override
  String get shareRedemption => 'Rachat de parts';

  @override
  String get client => 'Client';

  @override
  String get numberOfShares => 'Nombre de parts';

  @override
  String get netAssetValue => 'Valeur liquidative';

  @override
  String transactionFeesIncludingTax(Object feesPercentage) {
    return 'Frais de transaction TTC $feesPercentage%';
  }

  @override
  String get receipt => 'Réçu';

  @override
  String get checkInternetConnection => 'Veuillez vérifier votre connexion Internet et réessayer.';

  @override
  String get purchaseAndWithdrawalUnavailable => 'Les services d\'achat et de retrait sont indisponibles pour l\'instant. Nous vous notifierons dès disponibilité du service.';

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
  String get selectVaultType => 'Choisissez un type de coffre';

  @override
  String get during => 'Pendant';

  @override
  String interestRate(Object percentage) {
    return '$percentage% d’intérêts';
  }

  @override
  String get vaultNotLocked => 'Coffre non bloqué';

  @override
  String get lockedVaults => 'Coffres bloqués';

  @override
  String get confirmVaultLock => 'Êtes-vous sûr de vouloir bloquer votre coffre ?';

  @override
  String get earlyUnlockPenalty => 'Un déblocage avant la date d’échéance entraînera des frais de pénalité.';

  @override
  String get earnUpTo6Percent => 'Générez jusqu’à 6% d’intérêts avec les coffres';

  @override
  String get cardIndependentFromAccount => 'Votre carte devient indépendante de votre compte';

  @override
  String get accountBalanceUnlimited => 'Le solde de votre compte devient illimité';

  @override
  String get switchToMicrofinance => 'Passer à la Microfinance';

  @override
  String get migrateToDjamoMicrofinance => 'Migrer vers Djamo Microfinances 🚀';

  @override
  String get microfinanceExperience => 'Une expérience illimitée, des services étendus et une gestion simplifiée. Cliquez ici.';

  @override
  String get signToAcceptTerms => 'Signez pour accepter les conditions';

  @override
  String get signHere => 'Signez ici ✍🏾';

  @override
  String get migrationSuccessful => 'Migration réussie.';

  @override
  String get restart => 'Recommencer';

  @override
  String get signatureSaveError => 'Une erreur est survenue lors de l\'enregistrement de la signature.';

  @override
  String get accounts => 'Comptes';

  @override
  String get edit => 'Modifier';

  @override
  String get unlockVault => 'Débloquer le coffre';

  @override
  String get vaultDeletionInfo => 'Le coffre sera supprimé et l’argent sur le coffre sera reversé sur le compte principal.';

  @override
  String vaultUnlockPenalty(Object amount, Object percentage) {
    return 'Vous perdrez $percentage% de vos intérêts ($amount) pour le déblocage du coffre. Êtes-vous sûr de vouloir continuer ?';
  }

  @override
  String get confirmVaultUnlock => 'Débloquer le coffre quand même';

  @override
  String get securityUpdateRequired => 'Pour des raisons de sécurité, veuillez mettre à jour votre application 🚀';

  @override
  String get verifyPaymentInformations => 'Vérifiez à nouveau les informations du paiement';

  @override
  String get merchant => 'Marchand';

  @override
  String get confirmPayment => 'Confirmer le paiement';

  @override
  String get cancelPayment => 'Annuler le paiement';

  @override
  String get confirmAccountDeletion => 'Souhaitez-vous supprimer ce compte ?';

  @override
  String getDiscountOnFxForPaymentAboveCertainAmount(Object amount, Object discount) {
    return 'Bénéficiez d’un taux de *$discount* pour un achat supérieur à $amount';
  }

  @override
  String get chooseLocalCurrencyToAvoidFees => 'Choisissez la devise locale du marchand ou du guichet (EUR, USD) pour éviter les frais supplémentaires';

  @override
  String get currencyConverterWarning => 'Le simulateur reste une estimation et le coût final peut varier.';

  @override
  String get fxRateComparator => 'Comparateur';

  @override
  String get markAllAsRead => 'Tout marquer comme lu';

  @override
  String get reloginRequired => 'Échec de l\'authentification. Veuillez vous reconnecter.';

  @override
  String mySingular(Object name) {
    return 'Mon $name';
  }

  @override
  String get paymentDueDate => 'Date limite de paiement :';

  @override
  String get billingPeriod => 'Période de facturation :';

  @override
  String get invoice => 'Facture';

  @override
  String get invoiceNumber => 'Numéro de facture';

  @override
  String get vaultsWillAppearHere => 'Vos coffres s\'afficheront ici';

  @override
  String saveFeesWithAgent(Object fees) {
    return 'Économisez $fees en faisant votre dépôt chez un agent Djamo. Cliquez ici.';
  }

  @override
  String get signatureStepOne => 'Veuillez signer pour confirmer votre approbation (1/2) :';

  @override
  String get signatureStepTwo => 'Veuillez signer à nouveau (2/2) :';

  @override
  String get deleteAccount => 'Supprimer le compte';
}

/// The translations for French, as used in Côte d'Ivoire (`fr_CI`).
class AppLocalizationsFrCi extends AppLocalizationsFr {
  AppLocalizationsFrCi(): super('fr_CI');


}

/// The translations for French, as used in Senegal (`fr_SN`).
class AppLocalizationsFrSn extends AppLocalizationsFr {
  AppLocalizationsFrSn(): super('fr_SN');

  @override
  String get countryName => 'Sénégal';

  @override
  String get orderDeliveryPlaceRefPointOrCompanyNameHelper => 'Example: Hypermarché exclusive';

  @override
  String productFullNameByIdentifier(String identifier) {
    String _temp0 = intl.Intl.selectLogic(
      identifier,
      {
        'free': 'Gratuit',
        'premium': 'Premium',
        'other': '$identifier',
      },
    );
    return 'Plan $_temp0';
  }

  @override
  String get productPCFreeIBAN => 'Numéro de compte gratuit';

  @override
  String get productVCNoIBAN => 'Pas de Numéro de compte';

  @override
  String serviceGroupName(String identifier) {
    String _temp0 = intl.Intl.selectLogic(
      identifier,
      {
        'transfer': 'Transfert',
        'services': 'Factures',
        'card': 'Ma carte',
        'iban': 'N° de compte',
        'subscriptions': 'Abonnements',
        'pi': 'PI',
        'currency': 'Devise',
        'business': 'Business',
        'airtime': 'Achat crédit',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get accountVaultAccountName => 'Poches';

  @override
  String get vaultTypeBlockedLabel => 'Bloquée';

  @override
  String get vaultMyVaults => 'Mes poches';

  @override
  String get vaultCreateNewVaultTile => 'Créer une nouvelle poche';

  @override
  String get vaultNameFieldLabel => 'Nom de la Poche';

  @override
  String get vaultDefineBlockingStatusTitle => 'Bloquer la poche';

  @override
  String vaultCurrentBalanceOf(Object vaultName) {
    return 'Solde Poche $vaultName';
  }

  @override
  String get vaultDetailsTitle => 'Détails de la poche';

  @override
  String get vaultSelectAnIconDescription => 'Choisissez la nouvelle icône de votre poche.';

  @override
  String get vaultCreateVault => 'Créer une poche';

  @override
  String get vaultCreationOnGoing => 'Création de la poche en cours...';

  @override
  String get vaultAmountValidationExceedBalanceError => 'Le montant de la poche ne peut pas dépasser le solde de la poche';

  @override
  String get vaultSettings => 'Paramètres de la poche';

  @override
  String get vaultCustomize => 'Personnaliser la poche';

  @override
  String vaultDeleteConfirmationTitle(Object vaultName) {
    return 'Êtes-vous sûr de vouloir supprimer votre poche $vaultName ?';
  }

  @override
  String get vaultDeleteConfirmationWarning => 'L’argent sur la poche sera reversée sur votre compte principal.';

  @override
  String get vaultDeletedSuccess => 'Poche supprimée avec succès';

  @override
  String get vaultCantCustomizeChallengeVault => 'Vous ne pouvez pas personnaliser une poche Challenge';

  @override
  String get vaultQuitChallengeWarningMessage => 'L’abandon du challenge entraine la suppression de la poche. S’il y a encore de l’argent sur la poche, il sera reversé sur votre compte principal.';

  @override
  String vaultBlockWarningMessage(Object date) {
    return 'Votre poche sera bloquée jusqu\'au $date. Vous ne pourrez pas la débloquer avant.';
  }

  @override
  String get vaultDoYouWantToEnableAutomaticDeposit => 'Voulez-vous approvisionner automatiquement votre poche ?';

  @override
  String get iban => 'Numéro de compte';

  @override
  String get ibanPendingCreation => 'Numéro de compte en cours de traitement';

  @override
  String get ibanWeWillNotifyYou => 'Nous vous informerons lorsque votre Numéro de compte aura été créé avec succès.';

  @override
  String get purchaseSimulator => 'Taux de change';

  @override
  String ratesWithInternationalFees(Object date) {
    return 'Taux avec frais internationaux au $date';
  }

  @override
  String get estimation => 'Estimation avec frais internationaux';

  @override
  String get vaultNotFound => 'Il semble que cette poche n\'existe pas.';

  @override
  String get vaultNotLocked => 'Poche non-bloquée';

  @override
  String get lockedVaults => 'Poches bloquées';

  @override
  String get confirmVaultLock => 'Êtes-vous sûr de vouloir bloquer votre poche ?';

  @override
  String get vaultDeletionInfo => 'La poche sera supprimée et l’argent sur la poche sera reversée sur le compte principal.';

  @override
  String vaultUnlockPenalty(Object amount, Object percentage) {
    return 'Vous perdrez $percentage% de vos intérêts ($amount) pour le déblocage de la poche. Êtes-vous sûr de vouloir continuer ?';
  }

  @override
  String get confirmVaultUnlock => 'Débloquer la poche quand même';
}
