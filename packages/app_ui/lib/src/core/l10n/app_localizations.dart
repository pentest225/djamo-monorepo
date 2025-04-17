import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('en', 'SN'),
    Locale('fr'),
    Locale('fr', 'CI'),
    Locale('fr', 'SN')
  ];

  /// No description provided for @welcome.
  ///
  /// In fr, this message translates to:
  /// **'Bienvenue chez Djamo!'**
  String get welcome;

  /// No description provided for @continueLabel.
  ///
  /// In fr, this message translates to:
  /// **'Continuer'**
  String get continueLabel;

  /// No description provided for @notNow.
  ///
  /// In fr, this message translates to:
  /// **'Pas maintenant'**
  String get notNow;

  /// No description provided for @retry.
  ///
  /// In fr, this message translates to:
  /// **'Réésayer'**
  String get retry;

  /// No description provided for @cancel.
  ///
  /// In fr, this message translates to:
  /// **'Annuler'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer'**
  String get delete;

  /// No description provided for @close.
  ///
  /// In fr, this message translates to:
  /// **'Fermer'**
  String get close;

  /// No description provided for @confirm.
  ///
  /// In fr, this message translates to:
  /// **'Confirmer'**
  String get confirm;

  /// No description provided for @iConfirm.
  ///
  /// In fr, this message translates to:
  /// **'Je confirme'**
  String get iConfirm;

  /// No description provided for @yesIConfirm.
  ///
  /// In fr, this message translates to:
  /// **'Oui, je confirme'**
  String get yesIConfirm;

  /// No description provided for @confirmation.
  ///
  /// In fr, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @done.
  ///
  /// In fr, this message translates to:
  /// **'Terminer'**
  String get done;

  /// No description provided for @yes.
  ///
  /// In fr, this message translates to:
  /// **'Oui'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In fr, this message translates to:
  /// **'Non'**
  String get no;

  /// No description provided for @or.
  ///
  /// In fr, this message translates to:
  /// **'ou'**
  String get or;

  /// No description provided for @your.
  ///
  /// In fr, this message translates to:
  /// **'Votre'**
  String get your;

  /// No description provided for @toMe.
  ///
  /// In fr, this message translates to:
  /// **'A moi'**
  String get toMe;

  /// No description provided for @back.
  ///
  /// In fr, this message translates to:
  /// **'Retour'**
  String get back;

  /// No description provided for @backToDashboard.
  ///
  /// In fr, this message translates to:
  /// **'Retourner au tableau de bord'**
  String get backToDashboard;

  /// No description provided for @constraint.
  ///
  /// In fr, this message translates to:
  /// **'Contrainte'**
  String get constraint;

  /// No description provided for @tryAgain.
  ///
  /// In fr, this message translates to:
  /// **'Réessayer'**
  String get tryAgain;

  /// No description provided for @error.
  ///
  /// In fr, this message translates to:
  /// **'Erreur'**
  String get error;

  /// No description provided for @help.
  ///
  /// In fr, this message translates to:
  /// **'Aide'**
  String get help;

  /// No description provided for @success.
  ///
  /// In fr, this message translates to:
  /// **'Succès'**
  String get success;

  /// No description provided for @allow.
  ///
  /// In fr, this message translates to:
  /// **'Autoriser'**
  String get allow;

  /// No description provided for @dontAllow.
  ///
  /// In fr, this message translates to:
  /// **'Ne pas autoriser'**
  String get dontAllow;

  /// No description provided for @deny.
  ///
  /// In fr, this message translates to:
  /// **'Refuser'**
  String get deny;

  /// No description provided for @copy.
  ///
  /// In fr, this message translates to:
  /// **'Copier'**
  String get copy;

  /// No description provided for @authorize.
  ///
  /// In fr, this message translates to:
  /// **'Autoriser'**
  String get authorize;

  /// No description provided for @iUnderstand.
  ///
  /// In fr, this message translates to:
  /// **'J\'ai compris'**
  String get iUnderstand;

  /// No description provided for @perfect.
  ///
  /// In fr, this message translates to:
  /// **'Parfait!'**
  String get perfect;

  /// No description provided for @appUnderMaintenance.
  ///
  /// In fr, this message translates to:
  /// **'L’application est en cours de maintenance, veuillez réessayer dans quelques minutes.'**
  String get appUnderMaintenance;

  /// No description provided for @addMoney.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter de l\'argent'**
  String get addMoney;

  /// No description provided for @withdrawal.
  ///
  /// In fr, this message translates to:
  /// **'Retrait'**
  String get withdrawal;

  /// No description provided for @withdrawMoney.
  ///
  /// In fr, this message translates to:
  /// **'Retirer de l\'argent'**
  String get withdrawMoney;

  /// No description provided for @depositMoney.
  ///
  /// In fr, this message translates to:
  /// **'Déposer de l\'argent'**
  String get depositMoney;

  /// No description provided for @enterAmount.
  ///
  /// In fr, this message translates to:
  /// **'Montant'**
  String get enterAmount;

  /// No description provided for @showAll.
  ///
  /// In fr, this message translates to:
  /// **'Tout afficher'**
  String get showAll;

  /// No description provided for @tapPhoneNumber.
  ///
  /// In fr, this message translates to:
  /// **'Taper un numéro'**
  String get tapPhoneNumber;

  /// No description provided for @pay.
  ///
  /// In fr, this message translates to:
  /// **'Payer'**
  String get pay;

  /// No description provided for @countryName.
  ///
  /// In fr, this message translates to:
  /// **'Côte d\'Ivoire'**
  String get countryName;

  /// No description provided for @deadlineHasPassed.
  ///
  /// In fr, this message translates to:
  /// **'Échéance dépassée'**
  String get deadlineHasPassed;

  /// No description provided for @remainingDays.
  ///
  /// In fr, this message translates to:
  /// **'{value,plural, =0{Terminé} =1{1 jour restant} other{{value} jours restants}}'**
  String remainingDays(num value);

  /// No description provided for @remainingWeeksAndDays.
  ///
  /// In fr, this message translates to:
  /// **'{weeks,plural, =0{} one{1 semaine} other{{weeks} sem.}} {days,plural, =0{} one{1 jr} other{{days} jrs}}'**
  String remainingWeeksAndDays(num days, num weeks);

  /// No description provided for @takePhoto.
  ///
  /// In fr, this message translates to:
  /// **'Prendre une photo'**
  String get takePhoto;

  /// No description provided for @importImage.
  ///
  /// In fr, this message translates to:
  /// **'Importer une image'**
  String get importImage;

  /// No description provided for @weekDay.
  ///
  /// In fr, this message translates to:
  /// **'{value, select, sunday{Dimanche} monday{Lundi} tuesday{Mardi} wednesday{Mercredi} thursday{Jeudi} friday{Vendredi} saturday{Samedi} other{}}'**
  String weekDay(String value);

  /// No description provided for @fees.
  ///
  /// In fr, this message translates to:
  /// **'Frais'**
  String get fees;

  /// No description provided for @operationFees.
  ///
  /// In fr, this message translates to:
  /// **'Frais d\'opération'**
  String get operationFees;

  /// No description provided for @withdrawalFees.
  ///
  /// In fr, this message translates to:
  /// **'Frais de retrait'**
  String get withdrawalFees;

  /// No description provided for @premiumUpgradeSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Vous êtes passé à la catégorie Premium'**
  String get premiumUpgradeSuccess;

  /// No description provided for @amountToBeReceived.
  ///
  /// In fr, this message translates to:
  /// **'Montant à recevoir'**
  String get amountToBeReceived;

  /// No description provided for @amountToPay.
  ///
  /// In fr, this message translates to:
  /// **'Montant à payer'**
  String get amountToPay;

  /// No description provided for @loadingInfo.
  ///
  /// In fr, this message translates to:
  /// **'Chargement des informations...'**
  String get loadingInfo;

  /// No description provided for @loadingFailed.
  ///
  /// In fr, this message translates to:
  /// **'Chargement échoué'**
  String get loadingFailed;

  /// No description provided for @engagementConditions.
  ///
  /// In fr, this message translates to:
  /// **'Conditions d\'engagement'**
  String get engagementConditions;

  /// No description provided for @deletionOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Suppression en cours...'**
  String get deletionOnGoing;

  /// No description provided for @objective.
  ///
  /// In fr, this message translates to:
  /// **'Objectif'**
  String get objective;

  /// No description provided for @participants.
  ///
  /// In fr, this message translates to:
  /// **'Participants'**
  String get participants;

  /// No description provided for @period.
  ///
  /// In fr, this message translates to:
  /// **'Période'**
  String get period;

  /// No description provided for @numberOfTimes.
  ///
  /// In fr, this message translates to:
  /// **'{times} fois'**
  String numberOfTimes(Object times);

  /// No description provided for @quitThisScreen.
  ///
  /// In fr, this message translates to:
  /// **'Quitter cette page'**
  String get quitThisScreen;

  /// No description provided for @quitThisScreenConfirmation.
  ///
  /// In fr, this message translates to:
  /// **'Voulez-vous vraiment quitter cette page ?'**
  String get quitThisScreenConfirmation;

  /// No description provided for @number.
  ///
  /// In fr, this message translates to:
  /// **'Numéro'**
  String get number;

  /// No description provided for @verificationOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Vérification en cours...'**
  String get verificationOnGoing;

  /// No description provided for @processingOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Traitement en cours...'**
  String get processingOnGoing;

  /// No description provided for @waitingAMoment.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez patienter un instant'**
  String get waitingAMoment;

  /// No description provided for @cgu.
  ///
  /// In fr, this message translates to:
  /// **'Conditions générales'**
  String get cgu;

  /// No description provided for @cguAccept.
  ///
  /// In fr, this message translates to:
  /// **'Tout accepter'**
  String get cguAccept;

  /// No description provided for @share.
  ///
  /// In fr, this message translates to:
  /// **'Partager'**
  String get share;

  /// No description provided for @details.
  ///
  /// In fr, this message translates to:
  /// **'Détails'**
  String get details;

  /// No description provided for @copySuccessMessage.
  ///
  /// In fr, this message translates to:
  /// **'Copié avec succès'**
  String get copySuccessMessage;

  /// No description provided for @documentLoading.
  ///
  /// In fr, this message translates to:
  /// **'Chargement du document...'**
  String get documentLoading;

  /// No description provided for @myProfile.
  ///
  /// In fr, this message translates to:
  /// **'Mon profil'**
  String get myProfile;

  /// No description provided for @myIban.
  ///
  /// In fr, this message translates to:
  /// **'Mon numéro de compte'**
  String get myIban;

  /// No description provided for @bonusAccount.
  ///
  /// In fr, this message translates to:
  /// **'Compte Bonus'**
  String get bonusAccount;

  /// No description provided for @referral.
  ///
  /// In fr, this message translates to:
  /// **'Parrainage'**
  String get referral;

  /// No description provided for @pos.
  ///
  /// In fr, this message translates to:
  /// **'Point relais'**
  String get pos;

  /// No description provided for @lock.
  ///
  /// In fr, this message translates to:
  /// **'Verrouiller'**
  String get lock;

  /// No description provided for @lockApp.
  ///
  /// In fr, this message translates to:
  /// **'Déconnexion'**
  String get lockApp;

  /// No description provided for @personalInformation.
  ///
  /// In fr, this message translates to:
  /// **'Informations personnelles'**
  String get personalInformation;

  /// No description provided for @pricingPlan.
  ///
  /// In fr, this message translates to:
  /// **'Plan tarifaire'**
  String get pricingPlan;

  /// No description provided for @documents.
  ///
  /// In fr, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @lastnameLabel.
  ///
  /// In fr, this message translates to:
  /// **'Nom'**
  String get lastnameLabel;

  /// No description provided for @firstNameLabel.
  ///
  /// In fr, this message translates to:
  /// **'Prénoms'**
  String get firstNameLabel;

  /// No description provided for @identificationDocuments.
  ///
  /// In fr, this message translates to:
  /// **'Pièces d’identification'**
  String get identificationDocuments;

  /// No description provided for @free.
  ///
  /// In fr, this message translates to:
  /// **'Gratuit'**
  String get free;

  /// No description provided for @popular.
  ///
  /// In fr, this message translates to:
  /// **'Populaire'**
  String get popular;

  /// No description provided for @mainAccountBalanceTitle.
  ///
  /// In fr, this message translates to:
  /// **'Solde Compte Principal'**
  String get mainAccountBalanceTitle;

  /// No description provided for @refresh.
  ///
  /// In fr, this message translates to:
  /// **'Actualiser'**
  String get refresh;

  /// No description provided for @total.
  ///
  /// In fr, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @totalToPay.
  ///
  /// In fr, this message translates to:
  /// **'Total à payer'**
  String get totalToPay;

  /// No description provided for @paymentSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Paiement réussi'**
  String get paymentSuccess;

  /// No description provided for @save.
  ///
  /// In fr, this message translates to:
  /// **'Enregistrer'**
  String get save;

  /// No description provided for @account.
  ///
  /// In fr, this message translates to:
  /// **'Compte'**
  String get account;

  /// No description provided for @processingTime.
  ///
  /// In fr, this message translates to:
  /// **'Délai de traitement'**
  String get processingTime;

  /// No description provided for @hours.
  ///
  /// In fr, this message translates to:
  /// **'{hours, select, 0{0 heure} 1{1 heure} other{{hours} heures}}'**
  String hours(String hours);

  /// No description provided for @cancelOperation.
  ///
  /// In fr, this message translates to:
  /// **'Annuler l\'opération'**
  String get cancelOperation;

  /// No description provided for @stampFee.
  ///
  /// In fr, this message translates to:
  /// **'Frais de timbre'**
  String get stampFee;

  /// No description provided for @recommended.
  ///
  /// In fr, this message translates to:
  /// **'Recommandé'**
  String get recommended;

  /// No description provided for @nothingFound.
  ///
  /// In fr, this message translates to:
  /// **'Aucun résultat trouvé'**
  String get nothingFound;

  /// No description provided for @category.
  ///
  /// In fr, this message translates to:
  /// **'Catégorie'**
  String get category;

  /// No description provided for @statistics.
  ///
  /// In fr, this message translates to:
  /// **'Statistiques'**
  String get statistics;

  /// No description provided for @great.
  ///
  /// In fr, this message translates to:
  /// **'Super ⚡️'**
  String get great;

  /// No description provided for @inProgress.
  ///
  /// In fr, this message translates to:
  /// **'En cours...'**
  String get inProgress;

  /// No description provided for @djamoFees.
  ///
  /// In fr, this message translates to:
  /// **'Frais Djamo ({percentage}%)'**
  String djamoFees(Object percentage);

  /// No description provided for @cardLocked.
  ///
  /// In fr, this message translates to:
  /// **'Verrouillée'**
  String get cardLocked;

  /// No description provided for @myProfileChangePictureTitle.
  ///
  /// In fr, this message translates to:
  /// **'Prennez un selfie'**
  String get myProfileChangePictureTitle;

  /// No description provided for @myProfileChangePictureSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Positionnez votre visage dans le cercle de sorte a ce qu\'il soit bien visible'**
  String get myProfileChangePictureSubtitle;

  /// No description provided for @myProfileAvatarChangedRecently.
  ///
  /// In fr, this message translates to:
  /// **'Vous avez déja soumis une photo de profil il y a moins de 3 jours'**
  String get myProfileAvatarChangedRecently;

  /// No description provided for @transactionCategorizedAsFood.
  ///
  /// In fr, this message translates to:
  /// **'Votre transaction a été classée dans la catégorie \'{category}\''**
  String transactionCategorizedAsFood(Object category);

  /// No description provided for @modificationsSaved.
  ///
  /// In fr, this message translates to:
  /// **'Vos modifications ont bien été enregistrées'**
  String get modificationsSaved;

  /// No description provided for @invitationCode.
  ///
  /// In fr, this message translates to:
  /// **'Code d\'invitation'**
  String get invitationCode;

  /// No description provided for @authMigrationWeAreConfiguringYourAccount.
  ///
  /// In fr, this message translates to:
  /// **'Nous configurons votre compte...'**
  String get authMigrationWeAreConfiguringYourAccount;

  /// No description provided for @authEnterPhoneFieldLabel.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de téléphone'**
  String get authEnterPhoneFieldLabel;

  /// No description provided for @authEnterPhoneValidationErrMessage.
  ///
  /// In fr, this message translates to:
  /// **'Le numéro de téléphone doit comporter {digit} chiffres.'**
  String authEnterPhoneValidationErrMessage(Object digit);

  /// No description provided for @authAlreadyConnectedErrMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous êtes déjà connecté'**
  String get authAlreadyConnectedErrMessage;

  /// No description provided for @authPhoneVerificationOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Vérification du numéro de téléphone en cours...'**
  String get authPhoneVerificationOnGoing;

  /// No description provided for @authSendingOtp.
  ///
  /// In fr, this message translates to:
  /// **'Envoi du code de vérification...'**
  String get authSendingOtp;

  /// No description provided for @authOtpVerificationOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Vérification du code en cours...'**
  String get authOtpVerificationOnGoing;

  /// No description provided for @authSelectCountry.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez le pays'**
  String get authSelectCountry;

  /// No description provided for @authOtpVerificationPageTitle.
  ///
  /// In fr, this message translates to:
  /// **'Code de vérification'**
  String get authOtpVerificationPageTitle;

  /// No description provided for @authEnterOtpTitle.
  ///
  /// In fr, this message translates to:
  /// **'Entrez le code reçu par {method}'**
  String authEnterOtpTitle(Object method);

  /// No description provided for @authEnterOtpTitleTo.
  ///
  /// In fr, this message translates to:
  /// **'Entrez le code reçu par {method} au {receiver}'**
  String authEnterOtpTitleTo(Object method, Object receiver);

  /// No description provided for @authReSentOtpIn.
  ///
  /// In fr, this message translates to:
  /// **'Renvoyer dans {time}'**
  String authReSentOtpIn(Object time);

  /// No description provided for @authSendOTP.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer le code'**
  String get authSendOTP;

  /// No description provided for @authResendOTPBySms.
  ///
  /// In fr, this message translates to:
  /// **'Renvoyer le code par SMS'**
  String get authResendOTPBySms;

  /// No description provided for @authUseAnotherOtpMethod.
  ///
  /// In fr, this message translates to:
  /// **'Essayez une autre méthode'**
  String get authUseAnotherOtpMethod;

  /// No description provided for @authLogout.
  ///
  /// In fr, this message translates to:
  /// **'Déconnexion'**
  String get authLogout;

  /// No description provided for @authForgotPassword.
  ///
  /// In fr, this message translates to:
  /// **'J\'ai oublié mon code'**
  String get authForgotPassword;

  /// No description provided for @authEnterPasswordTitle.
  ///
  /// In fr, this message translates to:
  /// **'Entrez votre code pour vous connecter'**
  String get authEnterPasswordTitle;

  /// No description provided for @authHi.
  ///
  /// In fr, this message translates to:
  /// **'Bonjour {name}'**
  String authHi(Object name);

  /// No description provided for @authWrongPassword.
  ///
  /// In fr, this message translates to:
  /// **'Code incorrect'**
  String get authWrongPassword;

  /// No description provided for @authUseBiometric.
  ///
  /// In fr, this message translates to:
  /// **'Utiliser {type, select, fingerprint{l\'empreinte digitale} faceId{la reconnaissance faciale} iris{l\'IRIS} other{le scan biométrique}}'**
  String authUseBiometric(String type);

  /// No description provided for @authUseBiometricMessage.
  ///
  /// In fr, this message translates to:
  /// **'Utilisez {type, select, fingerprint{votre empreinte digitale} faceId{la reconnaissance faciale} iris{l\'IRIS} other{le scan biométrique}} pour vous connecter rapidement'**
  String authUseBiometricMessage(String type);

  /// No description provided for @authEnableBiometricMessage.
  ///
  /// In fr, this message translates to:
  /// **'Activez la biométrie pour vous connecter rapidement à votre compte Djamo'**
  String get authEnableBiometricMessage;

  /// No description provided for @authEnableBiometric.
  ///
  /// In fr, this message translates to:
  /// **'Activer la biométrie'**
  String get authEnableBiometric;

  /// No description provided for @authUseBiometricToLogin.
  ///
  /// In fr, this message translates to:
  /// **'Utiliser la biométrie pour vous connecter'**
  String get authUseBiometricToLogin;

  /// No description provided for @authExpiredSessionMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre session a expiré. Veuillez vous reconnecter en saisissant votre code.'**
  String get authExpiredSessionMessage;

  /// No description provided for @authImpossible.
  ///
  /// In fr, this message translates to:
  /// **'Authentification impossible. Veuillez contacter le support technique.'**
  String get authImpossible;

  /// No description provided for @onboardingEnterFullName.
  ///
  /// In fr, this message translates to:
  /// **'Entrez votre nom et prénom'**
  String get onboardingEnterFullName;

  /// No description provided for @onboardingLastnameValidationErrMessage.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez entrer un nom de famille valide'**
  String get onboardingLastnameValidationErrMessage;

  /// No description provided for @onboardingFirstnameValidationErrMessage.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez entrer un prénom valide'**
  String get onboardingFirstnameValidationErrMessage;

  /// No description provided for @onboardingALeastInformation.
  ///
  /// In fr, this message translates to:
  /// **'Encore quelques informations'**
  String get onboardingALeastInformation;

  /// No description provided for @onboardingGender.
  ///
  /// In fr, this message translates to:
  /// **'{gender, select, male{Monsieur} female{Madame} other{}}'**
  String onboardingGender(String gender);

  /// No description provided for @onboardingGenderValidationErrMessage.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez sélectionner votre genre'**
  String get onboardingGenderValidationErrMessage;

  /// No description provided for @onboardingBirthdayDayField.
  ///
  /// In fr, this message translates to:
  /// **'Jour'**
  String get onboardingBirthdayDayField;

  /// No description provided for @onboardingBirthdayMonthField.
  ///
  /// In fr, this message translates to:
  /// **'Mois'**
  String get onboardingBirthdayMonthField;

  /// No description provided for @onboardingBirthdayYearField.
  ///
  /// In fr, this message translates to:
  /// **'Année'**
  String get onboardingBirthdayYearField;

  /// No description provided for @onboardingAgeRestrictionMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous devez avoir au moins {age} ans pour utiliser Djamo'**
  String onboardingAgeRestrictionMessage(Object age);

  /// No description provided for @onboardingAccountCreationOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Un instant, nous finalisons la création de votre compte...'**
  String get onboardingAccountCreationOnGoing;

  /// No description provided for @passcodeChooseCodeForYourAccount.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez un code de sécurité pour votre compte Djamo'**
  String get passcodeChooseCodeForYourAccount;

  /// No description provided for @passcodeConfirmCodeForYourAccount.
  ///
  /// In fr, this message translates to:
  /// **'Ressaisissez votre code de sécurité'**
  String get passcodeConfirmCodeForYourAccount;

  /// No description provided for @passcodeChooseNewSecurityCode.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez un nouveau code de sécurité'**
  String get passcodeChooseNewSecurityCode;

  /// No description provided for @passcodeConfirmNewSecurityCode.
  ///
  /// In fr, this message translates to:
  /// **'Confirmez votre nouveau code de sécurité'**
  String get passcodeConfirmNewSecurityCode;

  /// No description provided for @passcodeRequestingVCPasscodeReset.
  ///
  /// In fr, this message translates to:
  /// **'Demande de réinitialisation de code en cours...'**
  String get passcodeRequestingVCPasscodeReset;

  /// No description provided for @passcodeModifyMyCode.
  ///
  /// In fr, this message translates to:
  /// **'Modifier mon code'**
  String get passcodeModifyMyCode;

  /// No description provided for @passcodeSetCardPinTitle.
  ///
  /// In fr, this message translates to:
  /// **'Entrez votre nouveau code PIN'**
  String get passcodeSetCardPinTitle;

  /// No description provided for @passcodeSetConfirmCardPinTitle.
  ///
  /// In fr, this message translates to:
  /// **'Confirmer le code PIN'**
  String get passcodeSetConfirmCardPinTitle;

  /// No description provided for @passcodeEmptyError.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez entrer un code PIN'**
  String get passcodeEmptyError;

  /// No description provided for @passcodeSameDigitsError.
  ///
  /// In fr, this message translates to:
  /// **'Le code PIN ne doit pas contenir les mêmes chiffres'**
  String get passcodeSameDigitsError;

  /// No description provided for @passcodeSequentialDigitsError.
  ///
  /// In fr, this message translates to:
  /// **'Le code PIN ne doit pas contenir de chiffres consécutifs'**
  String get passcodeSequentialDigitsError;

  /// No description provided for @passcodeNotMatchError.
  ///
  /// In fr, this message translates to:
  /// **'Les codes PIN ne correspondent pas'**
  String get passcodeNotMatchError;

  /// No description provided for @passcodeSameError.
  ///
  /// In fr, this message translates to:
  /// **'Le nouveau code de sécurité doit être différent de l\'ancien'**
  String get passcodeSameError;

  /// No description provided for @passcodeResetOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Réinitialisation du code PIN...'**
  String get passcodeResetOnGoing;

  /// No description provided for @passcodeResetPCTitle.
  ///
  /// In fr, this message translates to:
  /// **'Réinitialisation du code de sécurité'**
  String get passcodeResetPCTitle;

  /// No description provided for @passcodeCardPinResetTitle.
  ///
  /// In fr, this message translates to:
  /// **'Réinitialisation du code guichet'**
  String get passcodeCardPinResetTitle;

  /// No description provided for @passcodeCardPinResetSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Votre code guichet a été modifié avec succès'**
  String get passcodeCardPinResetSuccess;

  /// No description provided for @passcodeLivenessWeWillCheckYourID.
  ///
  /// In fr, this message translates to:
  /// **'Nous allons proceder a la verification de votre identite'**
  String get passcodeLivenessWeWillCheckYourID;

  /// No description provided for @passcodeLivenessInstruction1.
  ///
  /// In fr, this message translates to:
  /// **'Assurez-vous que la piece dans laquelle vous vous trouvez soit bien eclairée'**
  String get passcodeLivenessInstruction1;

  /// No description provided for @passcodeLivenessInstruction2.
  ///
  /// In fr, this message translates to:
  /// **'Retirez vos lunettes, chapeaux ou masques'**
  String get passcodeLivenessInstruction2;

  /// No description provided for @passcodeLivenessConfirmYourId.
  ///
  /// In fr, this message translates to:
  /// **'Confirmation de votre identité'**
  String get passcodeLivenessConfirmYourId;

  /// No description provided for @passcodeLivenessConfirmYourIdSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Maintenant, vous allez prendre une deuxieme photo en suivant l’instruction qui vous sera donnée'**
  String get passcodeLivenessConfirmYourIdSubtitle;

  /// No description provided for @passcodeRequestResetOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Demande de réinitialisation en cours...'**
  String get passcodeRequestResetOnGoing;

  /// No description provided for @passcodeLivenessVerificationOnGoingMessage.
  ///
  /// In fr, this message translates to:
  /// **'Nous vérifions votre identité.\nVeuillez rester sur cet écran.\nLa vérification prend moins d’une minute'**
  String get passcodeLivenessVerificationOnGoingMessage;

  /// No description provided for @passcodeLivenessVerificationFailedForPasscode.
  ///
  /// In fr, this message translates to:
  /// **'La vérification de votre identification suite à votre demande de réinitialisation de votre code de sécurité a échoué'**
  String get passcodeLivenessVerificationFailedForPasscode;

  /// No description provided for @passcodeLivenessVerificationFailedForPinCard.
  ///
  /// In fr, this message translates to:
  /// **'La vérification de votre identification suite à votre demande de réinitialisation de votre code guichet a échoué'**
  String get passcodeLivenessVerificationFailedForPinCard;

  /// No description provided for @passcodeLivenessVerificationTimeoutMessage.
  ///
  /// In fr, this message translates to:
  /// **'Le temps d’attente est écoulé. Veuillez recommencer.'**
  String get passcodeLivenessVerificationTimeoutMessage;

  /// No description provided for @passcodeUpdatingOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Mise à jour du code de sécurité en cours...'**
  String get passcodeUpdatingOnGoing;

  /// No description provided for @passcodeUpdatingSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Votre code de sécurité a bien été mis à jour'**
  String get passcodeUpdatingSuccess;

  /// No description provided for @orderWhereToReceiveCard.
  ///
  /// In fr, this message translates to:
  /// **'Où voulez-vous réceptionner la carte ?'**
  String get orderWhereToReceiveCard;

  /// No description provided for @orderChooseReceptionMode.
  ///
  /// In fr, this message translates to:
  /// **'Mode de réception'**
  String get orderChooseReceptionMode;

  /// No description provided for @orderHomeDelivery.
  ///
  /// In fr, this message translates to:
  /// **'Livrez-moi'**
  String get orderHomeDelivery;

  /// No description provided for @orderHomeDeliveryDescription.
  ///
  /// In fr, this message translates to:
  /// **'Livraison gratuite en {day} jours ouvrés'**
  String orderHomeDeliveryDescription(Object day);

  /// No description provided for @orderPickUp.
  ///
  /// In fr, this message translates to:
  /// **'Je passerai en point relais'**
  String get orderPickUp;

  /// No description provided for @orderPickupDescription.
  ///
  /// In fr, this message translates to:
  /// **'Gratuit et disponible immédiatement'**
  String get orderPickupDescription;

  /// No description provided for @orderTheCardAt.
  ///
  /// In fr, this message translates to:
  /// **'Commander la carte à {amount}'**
  String orderTheCardAt(Object amount);

  /// No description provided for @orderLater.
  ///
  /// In fr, this message translates to:
  /// **'Plus tard'**
  String get orderLater;

  /// No description provided for @orderChooseCity.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez la ville'**
  String get orderChooseCity;

  /// No description provided for @orderDeliveryPlace.
  ///
  /// In fr, this message translates to:
  /// **'Lieu de livraison'**
  String get orderDeliveryPlace;

  /// No description provided for @orderChooseDeliveryPlace.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez la zone de livraison'**
  String get orderChooseDeliveryPlace;

  /// No description provided for @orderDeliveryAdvice.
  ///
  /// In fr, this message translates to:
  /// **'Lundi au vendredi. Privilégiez votre lieu de travail.'**
  String get orderDeliveryAdvice;

  /// No description provided for @orderDeliveryPlaceRefPointOrCompanyName.
  ///
  /// In fr, this message translates to:
  /// **'Point de référence / Nom de l’entreprise'**
  String get orderDeliveryPlaceRefPointOrCompanyName;

  /// No description provided for @orderDeliveryPlaceRefPointOrCompanyNameHelper.
  ///
  /// In fr, this message translates to:
  /// **'Exemple: Cap Sud'**
  String get orderDeliveryPlaceRefPointOrCompanyNameHelper;

  /// No description provided for @orderDeliveryPlaceRefValidationErrMessage.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez entrer un point de référence ou le nom de l’entreprise'**
  String get orderDeliveryPlaceRefValidationErrMessage;

  /// No description provided for @orderDeliveryWarning.
  ///
  /// In fr, this message translates to:
  /// **'Vous seul(e) êtes habilité à réceptionner votre carte. Nous ne faisons aucune exception.'**
  String get orderDeliveryWarning;

  /// No description provided for @orderCardOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Commande de votre carte en cours...'**
  String get orderCardOnGoing;

  /// No description provided for @updatingOrderOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Mise à jour de votre commande en cours...'**
  String get updatingOrderOnGoing;

  /// No description provided for @orderDeliverySuccessMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre commande a été passée avec succès 🎉. Vous serez informé de la date de livraison.'**
  String get orderDeliverySuccessMessage;

  /// No description provided for @orderPickupSuccessMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous pouvez dès maintenat passer dans l’un de nos points relais pour la récupérer ⚡️'**
  String get orderPickupSuccessMessage;

  /// No description provided for @orderPickupLocalizePOS.
  ///
  /// In fr, this message translates to:
  /// **'Localiser mon point relais'**
  String get orderPickupLocalizePOS;

  /// No description provided for @orderCardReplacement.
  ///
  /// In fr, this message translates to:
  /// **'Remplacement de la carte'**
  String get orderCardReplacement;

  /// No description provided for @orderReplaceMyCard.
  ///
  /// In fr, this message translates to:
  /// **'Remplacer ma carte'**
  String get orderReplaceMyCard;

  /// No description provided for @orderCardReplacementNotice.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte sera définitivement résiliée et ne pourra PAS être réutilisée, les fonds restants sur votre carte actuelle seront transférés sur votre carte de remplacement dès son activation.'**
  String get orderCardReplacementNotice;

  /// No description provided for @orderCardReplacementNoticeOnCardCost.
  ///
  /// In fr, this message translates to:
  /// **'Le coût de remplacement est de {cardCost}. Voulez-vous continuer? '**
  String orderCardReplacementNoticeOnCardCost(Object cardCost);

  /// No description provided for @orderCardNSFTitle.
  ///
  /// In fr, this message translates to:
  /// **'Commander une nouvelle carte'**
  String get orderCardNSFTitle;

  /// No description provided for @orderCardNSFNotice.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte a été détruite et ne pourra pas être réutilisée. Les fonds restants sur votre carte détruite seront automatiquement transférés sur votre nouvelle carte dès son activation.'**
  String get orderCardNSFNotice;

  /// No description provided for @orderCardNSFNoticeOnCardCost.
  ///
  /// In fr, this message translates to:
  /// **'Le coût de remplacement est de {cardCost}. Voulez-vous continuer? '**
  String orderCardNSFNoticeOnCardCost(Object cardCost);

  /// No description provided for @myOrders.
  ///
  /// In fr, this message translates to:
  /// **'Mes commandes'**
  String get myOrders;

  /// No description provided for @orderNumber.
  ///
  /// In fr, this message translates to:
  /// **'Commande N˚ {number}'**
  String orderNumber(Object number);

  /// No description provided for @orderSummaryOrderedCard.
  ///
  /// In fr, this message translates to:
  /// **'Carte commandée'**
  String get orderSummaryOrderedCard;

  /// No description provided for @orderSummaryStatus.
  ///
  /// In fr, this message translates to:
  /// **'Statut'**
  String get orderSummaryStatus;

  /// No description provided for @orderSummaryDeliveryDate.
  ///
  /// In fr, this message translates to:
  /// **'Date de livraison'**
  String get orderSummaryDeliveryDate;

  /// No description provided for @orderSummaryTrackingNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de suivi'**
  String get orderSummaryTrackingNumber;

  /// No description provided for @orderSummaryPickupPoint.
  ///
  /// In fr, this message translates to:
  /// **'Point relais'**
  String get orderSummaryPickupPoint;

  /// No description provided for @noOrder.
  ///
  /// In fr, this message translates to:
  /// **'Vous n\'avez aucune commande en cours'**
  String get noOrder;

  /// No description provided for @noOrderMessage.
  ///
  /// In fr, this message translates to:
  /// **'Nous vous informerons lorsque votre numéro de compte Djamo aura été créé généré.'**
  String get noOrderMessage;

  /// No description provided for @orderStatusDescription.
  ///
  /// In fr, this message translates to:
  /// **'{status, select, PENDING_VALIDATION{En attente de validation} PENDING_DELIVERY{En attente de livraison} PENDING_PICKUP{En attente de collecte au point relais} FAILED_VALIDATION{Échec de validation} FAILED_DELIVERY{Reprogrammation en cours} DELIVERED{Livrée} PICKED_UP{Récupérée} ACTIVATED{Activée} other{}}'**
  String orderStatusDescription(String status);

  /// No description provided for @appCameraNotAvailable.
  ///
  /// In fr, this message translates to:
  /// **'La caméra n\'est pas disponible'**
  String get appCameraNotAvailable;

  /// No description provided for @appCameraInitOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Initialisation de la caméra...'**
  String get appCameraInitOnGoing;

  /// No description provided for @appCameraPermissionTitle.
  ///
  /// In fr, this message translates to:
  /// **'Autorisation de la caméra'**
  String get appCameraPermissionTitle;

  /// No description provided for @appCameraPermissionMessage.
  ///
  /// In fr, this message translates to:
  /// **'Djamo a besoin d\'accéder à votre appareil photo pour prendre des photos'**
  String get appCameraPermissionMessage;

  /// No description provided for @appCameraImpossibleToAccess.
  ///
  /// In fr, this message translates to:
  /// **'Il est impossible d\'accéder à la caméra. Réessayez'**
  String get appCameraImpossibleToAccess;

  /// No description provided for @appCameraRetakePhoto.
  ///
  /// In fr, this message translates to:
  /// **'Reprendre la photo'**
  String get appCameraRetakePhoto;

  /// No description provided for @appCameraTakeSelfie.
  ///
  /// In fr, this message translates to:
  /// **'Prenez un selfie'**
  String get appCameraTakeSelfie;

  /// No description provided for @appCameraTakeSelfieInstruction.
  ///
  /// In fr, this message translates to:
  /// **'Positionnez votre visage dans le cercle de sorte à ce qu\'il soit bien visible'**
  String get appCameraTakeSelfieInstruction;

  /// No description provided for @appCameraTakeSelfieWithIDInstruction.
  ///
  /// In fr, this message translates to:
  /// **'Prenez un selfie avec votre pièce d\'identité'**
  String get appCameraTakeSelfieWithIDInstruction;

  /// No description provided for @kycSelectGenderTitle.
  ///
  /// In fr, this message translates to:
  /// **'Vous êtes ?'**
  String get kycSelectGenderTitle;

  /// No description provided for @kycGender.
  ///
  /// In fr, this message translates to:
  /// **'{gender, select, male{Un homme} female{Une femme} other{}}'**
  String kycGender(String gender);

  /// No description provided for @kycHomeLocation.
  ///
  /// In fr, this message translates to:
  /// **'Lieu d’habitation'**
  String get kycHomeLocation;

  /// No description provided for @kycHomeLocationTitle.
  ///
  /// In fr, this message translates to:
  /// **'Lieu d’habitation'**
  String get kycHomeLocationTitle;

  /// No description provided for @kycWhereDoYouLive.
  ///
  /// In fr, this message translates to:
  /// **'Où habitez-vous ?'**
  String get kycWhereDoYouLive;

  /// No description provided for @kycWhereDoYouLiveWithPrecision.
  ///
  /// In fr, this message translates to:
  /// **'Plus précisément'**
  String get kycWhereDoYouLiveWithPrecision;

  /// No description provided for @kycIdentityDocumentTitle.
  ///
  /// In fr, this message translates to:
  /// **'Document d’identification'**
  String get kycIdentityDocumentTitle;

  /// No description provided for @kycOthersCountries.
  ///
  /// In fr, this message translates to:
  /// **'Autres pays'**
  String get kycOthersCountries;

  /// No description provided for @kycSelectedDocSeemsInvalid.
  ///
  /// In fr, this message translates to:
  /// **'Le document sélectionné semble invalide'**
  String get kycSelectedDocSeemsInvalid;

  /// No description provided for @kycUploadingYourIds.
  ///
  /// In fr, this message translates to:
  /// **'Chargement de votre pièce d\'identité...'**
  String get kycUploadingYourIds;

  /// No description provided for @kycCheckingInfoMessage.
  ///
  /// In fr, this message translates to:
  /// **'L’envoi de vos pièces peut prendre jusqu’à 2 minutes selon votre connexion internet. Veuillez patienter svp.'**
  String get kycCheckingInfoMessage;

  /// No description provided for @productChooseThePlan.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez un plan'**
  String get productChooseThePlan;

  /// No description provided for @productFullNameByIdentifier.
  ///
  /// In fr, this message translates to:
  /// **'Plan {identifier, select, free{Free} premium{Premium} other{{identifier}}}'**
  String productFullNameByIdentifier(String identifier);

  /// No description provided for @productPCName.
  ///
  /// In fr, this message translates to:
  /// **'Carte Physique'**
  String get productPCName;

  /// No description provided for @productPCCost.
  ///
  /// In fr, this message translates to:
  /// **'Carte physique à {amount}'**
  String productPCCost(Object amount);

  /// No description provided for @productDjamoVC.
  ///
  /// In fr, this message translates to:
  /// **'Carte virtuelle Djamo'**
  String get productDjamoVC;

  /// No description provided for @productDjamoPC.
  ///
  /// In fr, this message translates to:
  /// **'Carte physique Djamo'**
  String get productDjamoPC;

  /// No description provided for @productPCDailyCeiling.
  ///
  /// In fr, this message translates to:
  /// **'Plafond journalier {amount}'**
  String productPCDailyCeiling(Object amount);

  /// No description provided for @productCardMomoTransferFees.
  ///
  /// In fr, this message translates to:
  /// **'Transfert vers Mobile Money {fees}'**
  String productCardMomoTransferFees(Object fees);

  /// No description provided for @productPCFreeATMWithdrawal.
  ///
  /// In fr, this message translates to:
  /// **'Retraits gratuits dans tous les guichets'**
  String get productPCFreeATMWithdrawal;

  /// No description provided for @productPCFreeIBAN.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de compte gratuit'**
  String get productPCFreeIBAN;

  /// No description provided for @productPCAccessToInvest.
  ///
  /// In fr, this message translates to:
  /// **'Djamo Invest'**
  String get productPCAccessToInvest;

  /// No description provided for @productVCMonthlyCeiling.
  ///
  /// In fr, this message translates to:
  /// **'Plafond mensuel {amount}'**
  String productVCMonthlyCeiling(Object amount);

  /// No description provided for @productVCNoBankAccountTopUp.
  ///
  /// In fr, this message translates to:
  /// **'Pas de rechargements via compte bancaire'**
  String get productVCNoBankAccountTopUp;

  /// No description provided for @productVCNoIBAN.
  ///
  /// In fr, this message translates to:
  /// **'Pas de Numéro de compte'**
  String get productVCNoIBAN;

  /// No description provided for @offerMonthly.
  ///
  /// In fr, this message translates to:
  /// **'/mois'**
  String get offerMonthly;

  /// No description provided for @offerAllBenefitsOfAndMore.
  ///
  /// In fr, this message translates to:
  /// **'Tous les avantages Free inclus'**
  String get offerAllBenefitsOfAndMore;

  /// No description provided for @offerFreeIBAN.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de compte *gratuit*'**
  String get offerFreeIBAN;

  /// No description provided for @offerFreeWithdrawal.
  ///
  /// In fr, this message translates to:
  /// **'Retraits au guichet *gratuits*'**
  String get offerFreeWithdrawal;

  /// No description provided for @offerFreeRejectFee.
  ///
  /// In fr, this message translates to:
  /// **'*0* frais de rejet'**
  String get offerFreeRejectFee;

  /// No description provided for @offerFreeTransfer.
  ///
  /// In fr, this message translates to:
  /// **'Transferts vers Mobile Money et Banques *1,5%*'**
  String get offerFreeTransfer;

  /// No description provided for @offerFreeVaults.
  ///
  /// In fr, this message translates to:
  /// **'*2* coffres simultanés'**
  String get offerFreeVaults;

  /// No description provided for @offerPremiumTransfer.
  ///
  /// In fr, this message translates to:
  /// **'Transferts vers Mobile Money *gratuits*'**
  String get offerPremiumTransfer;

  /// No description provided for @offerPremiumBank.
  ///
  /// In fr, this message translates to:
  /// **'Transferts vers Banques *gratuits*'**
  String get offerPremiumBank;

  /// No description provided for @offerPremiumVaults.
  ///
  /// In fr, this message translates to:
  /// **'*10* coffres simultanés'**
  String get offerPremiumVaults;

  /// No description provided for @offerPremiumPriority.
  ///
  /// In fr, this message translates to:
  /// **'Service client *prioritaire*'**
  String get offerPremiumPriority;

  /// No description provided for @offerPremiumBonus.
  ///
  /// In fr, this message translates to:
  /// **'2% de bonus sur les paiements'**
  String get offerPremiumBonus;

  /// No description provided for @serviceGroupName.
  ///
  /// In fr, this message translates to:
  /// **'{identifier, select, transfer{Transfert} services{Factures} card{Ma carte} iban{N° de compte} subscriptions{Abonnements} pi{PI} currency{Devise} business{Business} airtime{Achat crédit} other{}}'**
  String serviceGroupName(String identifier);

  /// No description provided for @serviceDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter de l’argent'**
  String get serviceDeposit;

  /// No description provided for @serviceTransfer.
  ///
  /// In fr, this message translates to:
  /// **'Transférer de l’argent'**
  String get serviceTransfer;

  /// No description provided for @serviceBillPayment.
  ///
  /// In fr, this message translates to:
  /// **'Payer une facture'**
  String get serviceBillPayment;

  /// No description provided for @serviceAirtime.
  ///
  /// In fr, this message translates to:
  /// **'Achat de crédit'**
  String get serviceAirtime;

  /// No description provided for @serviceCard.
  ///
  /// In fr, this message translates to:
  /// **'Gérer ma Carte'**
  String get serviceCard;

  /// No description provided for @serviceIban.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de compte'**
  String get serviceIban;

  /// No description provided for @serviceSubscriptions.
  ///
  /// In fr, this message translates to:
  /// **'Abonnements'**
  String get serviceSubscriptions;

  /// No description provided for @serviceSelectDepositService.
  ///
  /// In fr, this message translates to:
  /// **'Faites un dépôt via'**
  String get serviceSelectDepositService;

  /// No description provided for @serviceSelectTransferService.
  ///
  /// In fr, this message translates to:
  /// **'Transférer de l\'argent'**
  String get serviceSelectTransferService;

  /// No description provided for @serviceSendOn.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer sur'**
  String get serviceSendOn;

  /// No description provided for @serviceUnavailable.
  ///
  /// In fr, this message translates to:
  /// **'Service indisponible'**
  String get serviceUnavailable;

  /// No description provided for @accountMainAccountName.
  ///
  /// In fr, this message translates to:
  /// **'Compte principal'**
  String get accountMainAccountName;

  /// No description provided for @accountCardAccountName.
  ///
  /// In fr, this message translates to:
  /// **'Carte'**
  String get accountCardAccountName;

  /// No description provided for @accountVaultAccountName.
  ///
  /// In fr, this message translates to:
  /// **'Coffres'**
  String get accountVaultAccountName;

  /// No description provided for @accountSubscriptionProductName.
  ///
  /// In fr, this message translates to:
  /// **'{identifier, select, premium{Premium} other{Free}}'**
  String accountSubscriptionProductName(String identifier);

  /// No description provided for @accountSubscriptionCounterNonSufficientFundsBillingLabel.
  ///
  /// In fr, this message translates to:
  /// **'{amount} par rejet pour fonds insuffisants'**
  String accountSubscriptionCounterNonSufficientFundsBillingLabel(Object amount);

  /// No description provided for @accountSubscriptionCounterWireTransferLabel.
  ///
  /// In fr, this message translates to:
  /// **'Transferts vers un compte bancaire'**
  String get accountSubscriptionCounterWireTransferLabel;

  /// No description provided for @accountSubscriptionPaymentBillingLabel.
  ///
  /// In fr, this message translates to:
  /// **'0 frais sur les paiements à l\'infini.\nDes frais de change peuvent s\'appliquer pour les paiements en devises étrangères.'**
  String get accountSubscriptionPaymentBillingLabel;

  /// No description provided for @accountSubscriptionPaymentMinTransferFeeForNonPremiumBillingLabel.
  ///
  /// In fr, this message translates to:
  /// **'Tarif minimum : 150 F CFA.'**
  String get accountSubscriptionPaymentMinTransferFeeForNonPremiumBillingLabel;

  /// No description provided for @accountSubscriptionChangePlan.
  ///
  /// In fr, this message translates to:
  /// **'Changer de plan'**
  String get accountSubscriptionChangePlan;

  /// No description provided for @accountSubscriptionChangingPlan.
  ///
  /// In fr, this message translates to:
  /// **'Changement de plan tarifaire'**
  String get accountSubscriptionChangingPlan;

  /// No description provided for @accountSubscriptionChangingPlanFreeToPremiumWaringMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous passerez immediatement au {name} {price}/mois'**
  String accountSubscriptionChangingPlanFreeToPremiumWaringMessage(Object name, Object price);

  /// No description provided for @accountSubscriptionChangingPlanFromPremiumToFreeWaringMessage.
  ///
  /// In fr, this message translates to:
  /// **'Changement de plan tarifaire.\nVous perdrez les avantages de votre {plan} à compter du {date}'**
  String accountSubscriptionChangingPlanFromPremiumToFreeWaringMessage(Object date, Object plan);

  /// No description provided for @accountsYourAccountIsLockedCheckMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre compte est verrouillé. Déverrouillez-le pour continuer.'**
  String get accountsYourAccountIsLockedCheckMessage;

  /// No description provided for @depositFeesLabel.
  ///
  /// In fr, this message translates to:
  /// **'Frais de dépôt'**
  String get depositFeesLabel;

  /// No description provided for @depositFreeCashInAgentUpsellMessage.
  ///
  /// In fr, this message translates to:
  /// **'Gagnez du temps! Rechargez votre compte chez un agent Djamo proche de vous sans frais.'**
  String get depositFreeCashInAgentUpsellMessage;

  /// No description provided for @depositBankTransferFreeOfCharge.
  ///
  /// In fr, this message translates to:
  /// **'Virement sans frais'**
  String get depositBankTransferFreeOfCharge;

  /// No description provided for @depositBankWithTransferFees.
  ///
  /// In fr, this message translates to:
  /// **'Virement avec frais'**
  String get depositBankWithTransferFees;

  /// No description provided for @depositAmountToBeReceived.
  ///
  /// In fr, this message translates to:
  /// **'Montant à recevoir'**
  String get depositAmountToBeReceived;

  /// No description provided for @depositBankDepositStepsToFollow.
  ///
  /// In fr, this message translates to:
  /// **'Étapes à suivre'**
  String get depositBankDepositStepsToFollow;

  /// No description provided for @depositBankSelectBankTitle.
  ///
  /// In fr, this message translates to:
  /// **'Sélection de votre banque'**
  String get depositBankSelectBankTitle;

  /// No description provided for @depositBankAccountDetails.
  ///
  /// In fr, this message translates to:
  /// **'Détails du compte'**
  String get depositBankAccountDetails;

  /// No description provided for @depositBankAccountDetailsBankCode.
  ///
  /// In fr, this message translates to:
  /// **'Code banque'**
  String get depositBankAccountDetailsBankCode;

  /// No description provided for @depositBankAccountDetailsAgencyCode.
  ///
  /// In fr, this message translates to:
  /// **'Code agence'**
  String get depositBankAccountDetailsAgencyCode;

  /// No description provided for @depositBankAccountDetailsAccountNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de compte'**
  String get depositBankAccountDetailsAccountNumber;

  /// No description provided for @depositBankAccountDetailsRIBKey.
  ///
  /// In fr, this message translates to:
  /// **'Clé RIB'**
  String get depositBankAccountDetailsRIBKey;

  /// No description provided for @depositBankCopyRIBKey.
  ///
  /// In fr, this message translates to:
  /// **'Copier le RIB'**
  String get depositBankCopyRIBKey;

  /// No description provided for @depositBankShareRIBMessageTitle.
  ///
  /// In fr, this message translates to:
  /// **'Informations du compte bancaire de {holder}'**
  String depositBankShareRIBMessageTitle(Object holder);

  /// No description provided for @depositBankShareRIBModalTitle.
  ///
  /// In fr, this message translates to:
  /// **'Partager les informations du compte bancaire de {holder}'**
  String depositBankShareRIBModalTitle(Object holder);

  /// No description provided for @depositBankShareRIBMessage.
  ///
  /// In fr, this message translates to:
  /// **'Détails de compte bancaire de {holder} pour un versement en Agence bancaire\nBanque: {holderBankLabel}\nNom du compte: {accountHolder}\nCode Banque: {wireBankAccountBankCode}\nCode Agence: {wireBankAccountAgencyCode}\nNuméro de compte: {wireBankAccountAccountNumber}\nClé RIB: {wireBankAccountRIBKey}'**
  String depositBankShareRIBMessage(Object accountHolder, Object holder, Object holderBankLabel, Object wireBankAccountAccountNumber, Object wireBankAccountAgencyCode, Object wireBankAccountBankCode, Object wireBankAccountRIBKey);

  /// No description provided for @depositBankCopyRIBKeySuccess.
  ///
  /// In fr, this message translates to:
  /// **'Clé RIB copiée ✅'**
  String get depositBankCopyRIBKeySuccess;

  /// No description provided for @depositBankSendRIB.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer le RIB'**
  String get depositBankSendRIB;

  /// No description provided for @depositBankSelectBankInstructionDescription.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez votre banque d\'où vous allez faire le virement'**
  String get depositBankSelectBankInstructionDescription;

  /// No description provided for @depositBankMakeDepositDescriptionForWireTransfer.
  ///
  /// In fr, this message translates to:
  /// **'Faites le virement sur le compte bancaire de Djamo'**
  String get depositBankMakeDepositDescriptionForWireTransfer;

  /// No description provided for @depositBankEnterAmountDescription.
  ///
  /// In fr, this message translates to:
  /// **'Saisissez le montant viré depuis votre compte bancaire'**
  String get depositBankEnterAmountDescription;

  /// No description provided for @depositBankAddDepositProofTitle.
  ///
  /// In fr, this message translates to:
  /// **'Ajoutez une capture du virement comme preuve'**
  String get depositBankAddDepositProofTitle;

  /// No description provided for @depositBankMakeDepositTitle.
  ///
  /// In fr, this message translates to:
  /// **'Virement'**
  String get depositBankMakeDepositTitle;

  /// No description provided for @depositBankIMadePayment.
  ///
  /// In fr, this message translates to:
  /// **'J\'ai effectué le versement'**
  String get depositBankIMadePayment;

  /// No description provided for @depositBankMakeDepositDescriptionForPhysicalDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Remplissez le bordereaux de versement pour effectuer l’opération'**
  String get depositBankMakeDepositDescriptionForPhysicalDeposit;

  /// No description provided for @depositBankProofOfTransfer.
  ///
  /// In fr, this message translates to:
  /// **'Preuve du virement'**
  String get depositBankProofOfTransfer;

  /// No description provided for @requestSent.
  ///
  /// In fr, this message translates to:
  /// **'Requête envoyée'**
  String get requestSent;

  /// No description provided for @depositBankProcessingTime.
  ///
  /// In fr, this message translates to:
  /// **'Délai de traitement: {time} heures'**
  String depositBankProcessingTime(Object time);

  /// No description provided for @depositBankMinimumAmount.
  ///
  /// In fr, this message translates to:
  /// **'Montant minimum de virement'**
  String get depositBankMinimumAmount;

  /// No description provided for @depositBankDetails.
  ///
  /// In fr, this message translates to:
  /// **'Coordonnées bancaires'**
  String get depositBankDetails;

  /// No description provided for @depositBankDetailsNotice.
  ///
  /// In fr, this message translates to:
  /// **'Utilisez ces informations pour le virement'**
  String get depositBankDetailsNotice;

  /// No description provided for @depositBankAccountName.
  ///
  /// In fr, this message translates to:
  /// **'Nom du compte'**
  String get depositBankAccountName;

  /// No description provided for @depositBankAccountNameCopied.
  ///
  /// In fr, this message translates to:
  /// **'Nom du compte copié ✅'**
  String get depositBankAccountNameCopied;

  /// No description provided for @depositBankAccountNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro à renseigner'**
  String get depositBankAccountNumber;

  /// No description provided for @depositBankAccountNumberCopied.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de compte copié ✅'**
  String get depositBankAccountNumberCopied;

  /// No description provided for @depositBankEnterAmountLabel.
  ///
  /// In fr, this message translates to:
  /// **'Renseigner le montant'**
  String get depositBankEnterAmountLabel;

  /// No description provided for @depositBankTransferAmount.
  ///
  /// In fr, this message translates to:
  /// **'Montant du virement'**
  String get depositBankTransferAmount;

  /// No description provided for @depositBankTransferReceipt.
  ///
  /// In fr, this message translates to:
  /// **'Reçu du versement'**
  String get depositBankTransferReceipt;

  /// No description provided for @depositBankTransferViaIBAN.
  ///
  /// In fr, this message translates to:
  /// **'Virement via mon {ibanFeatureName}'**
  String depositBankTransferViaIBAN(Object ibanFeatureName);

  /// No description provided for @depositToDjamoAccount.
  ///
  /// In fr, this message translates to:
  /// **'Versement sur le compte Djamo'**
  String get depositToDjamoAccount;

  /// No description provided for @availableWithPhysicalCard.
  ///
  /// In fr, this message translates to:
  /// **'Disponible avec la carte physique'**
  String get availableWithPhysicalCard;

  /// No description provided for @depositBankAvailableDepositOptions.
  ///
  /// In fr, this message translates to:
  /// **'Options disponibles'**
  String get depositBankAvailableDepositOptions;

  /// No description provided for @depositBankAcceptedProofScreenshotTitle.
  ///
  /// In fr, this message translates to:
  /// **'Les captures acceptées'**
  String get depositBankAcceptedProofScreenshotTitle;

  /// No description provided for @depositBankAcceptedProofScreenshot1.
  ///
  /// In fr, this message translates to:
  /// **'Écran de confirmation de l’application'**
  String get depositBankAcceptedProofScreenshot1;

  /// No description provided for @depositBankAcceptedProofScreenshot2.
  ///
  /// In fr, this message translates to:
  /// **'SMS/Email de confirmation'**
  String get depositBankAcceptedProofScreenshot2;

  /// No description provided for @depositBankAcceptedProofScreenshot3.
  ///
  /// In fr, this message translates to:
  /// **'Bordereau du virement cacheté'**
  String get depositBankAcceptedProofScreenshot3;

  /// No description provided for @depositBankAccessToYourBankWebsite.
  ///
  /// In fr, this message translates to:
  /// **'Accédez au site web de votre banque'**
  String get depositBankAccessToYourBankWebsite;

  /// No description provided for @depositBankAccessToYourBankApp.
  ///
  /// In fr, this message translates to:
  /// **'Accédez à l’application de votre banque'**
  String get depositBankAccessToYourBankApp;

  /// No description provided for @depositBankAddHolderAsBeneficiary.
  ///
  /// In fr, this message translates to:
  /// **'Ajoutez {holder} comme nouveau bénéficiaire'**
  String depositBankAddHolderAsBeneficiary(Object holder);

  /// No description provided for @depositBankMakeYouWireTransfer.
  ///
  /// In fr, this message translates to:
  /// **'Effectuez votre virement'**
  String get depositBankMakeYouWireTransfer;

  /// No description provided for @depositBankTakeScreenshotOfConfirmation.
  ///
  /// In fr, this message translates to:
  /// **'Prenez une capture d’écran de la confirmation'**
  String get depositBankTakeScreenshotOfConfirmation;

  /// No description provided for @depositBankBackInDjamoToContinue.
  ///
  /// In fr, this message translates to:
  /// **'Retournez sur Djamo pour rensigner le montant et ajouter la capture de confirmation'**
  String get depositBankBackInDjamoToContinue;

  /// No description provided for @depositBankOpenBankApp.
  ///
  /// In fr, this message translates to:
  /// **'Ouvrir {appName}'**
  String depositBankOpenBankApp(Object appName);

  /// No description provided for @depositBankHolderAccountAtBank.
  ///
  /// In fr, this message translates to:
  /// **'{holder} chez {bank}'**
  String depositBankHolderAccountAtBank(Object bank, Object holder);

  /// No description provided for @depositBankPrepareYourTransferReceipt.
  ///
  /// In fr, this message translates to:
  /// **'Préparez votre reçu de virement'**
  String get depositBankPrepareYourTransferReceipt;

  /// No description provided for @depositBankPrepareYourTransferReceiptWarning.
  ///
  /// In fr, this message translates to:
  /// **'Assurez-vous d\'avoir le reçu de votre versement physiquement ou en photo avant de passer à l\'étape suivante.'**
  String get depositBankPrepareYourTransferReceiptWarning;

  /// No description provided for @depositBankSuccessTitle.
  ///
  /// In fr, this message translates to:
  /// **'En cours de vérification...'**
  String get depositBankSuccessTitle;

  /// No description provided for @depositMomoUseMyPhoneNumber.
  ///
  /// In fr, this message translates to:
  /// **'Utiliser mon numéro'**
  String get depositMomoUseMyPhoneNumber;

  /// No description provided for @depositMomoAddAnotherPhoneNumber.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter un autre numéro'**
  String get depositMomoAddAnotherPhoneNumber;

  /// No description provided for @depositMomoUseAnotherServicePhoneNumber.
  ///
  /// In fr, this message translates to:
  /// **'Utiliser autre numéro {service}'**
  String depositMomoUseAnotherServicePhoneNumber(Object service);

  /// No description provided for @depositOperatorFees.
  ///
  /// In fr, this message translates to:
  /// **'Frais opérateur ({fees}%)'**
  String depositOperatorFees(Object fees);

  /// No description provided for @depositMomoValidateWithOrangeApp.
  ///
  /// In fr, this message translates to:
  /// **'Valider avec l\'appli Orange Money'**
  String get depositMomoValidateWithOrangeApp;

  /// No description provided for @depositMomoValidateWithMaxItApp.
  ///
  /// In fr, this message translates to:
  /// **'Valider via l\'appli Max IT'**
  String get depositMomoValidateWithMaxItApp;

  /// No description provided for @depositMomoValidateWithUSSD.
  ///
  /// In fr, this message translates to:
  /// **'Valider via USSD'**
  String get depositMomoValidateWithUSSD;

  /// No description provided for @depositMomoConfirm.
  ///
  /// In fr, this message translates to:
  /// **'Confirmez le dépôt'**
  String get depositMomoConfirm;

  /// No description provided for @depositMomoConfirmation.
  ///
  /// In fr, this message translates to:
  /// **'Confirmation'**
  String get depositMomoConfirmation;

  /// No description provided for @depositMomoEnterConfirmationCodeHint.
  ///
  /// In fr, this message translates to:
  /// **'Entrez le code reçu par SMS dans le champ ci-dessous puis cliquez sur “Confirmer le dépôt”'**
  String get depositMomoEnterConfirmationCodeHint;

  /// No description provided for @depositMomoConfirmDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Confirmer le dépôt'**
  String get depositMomoConfirmDeposit;

  /// No description provided for @depositMomoObtainConfirmationCode.
  ///
  /// In fr, this message translates to:
  /// **'Obtenez votre code de confirmation en composant le'**
  String get depositMomoObtainConfirmationCode;

  /// No description provided for @depositMomoEnterConfirmationCode.
  ///
  /// In fr, this message translates to:
  /// **'Saisissez le code reçu'**
  String get depositMomoEnterConfirmationCode;

  /// No description provided for @depositMomoOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt en cours'**
  String get depositMomoOnGoing;

  /// No description provided for @depositMomoServiceOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt {service} en cours'**
  String depositMomoServiceOnGoing(Object service);

  /// No description provided for @depositMomoWeNeedYourConfirmation.
  ///
  /// In fr, this message translates to:
  /// **'Nous avons juste besoin de votre confirmation'**
  String get depositMomoWeNeedYourConfirmation;

  /// No description provided for @depositMomoValidationInstruction.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez composer le {syntax} pour valider le dépôt via {service}'**
  String depositMomoValidationInstruction(Object service, Object syntax);

  /// No description provided for @phoneNumberUpdatedSuccessMessage.
  ///
  /// In fr, this message translates to:
  /// **'Numéro modifié avec succès'**
  String get phoneNumberUpdatedSuccessMessage;

  /// No description provided for @depositCancel.
  ///
  /// In fr, this message translates to:
  /// **'Annuler le dépôt'**
  String get depositCancel;

  /// No description provided for @depositSuccessTitle.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt réussi'**
  String get depositSuccessTitle;

  /// No description provided for @depositYouCardCantHaveSomeAmountMonthly.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte ne peut pas avoir plus de {monthlyCashInLimit} dans le mois'**
  String depositYouCardCantHaveSomeAmountMonthly(Object monthlyCashInLimit);

  /// No description provided for @depositMonthlyLimitReached.
  ///
  /// In fr, this message translates to:
  /// **'Vous ne pouvez pas faire de dépôt car vous avez atteint votre limite de dépôt mensuelle.'**
  String get depositMonthlyLimitReached;

  /// No description provided for @depositVcMonthlyLimitReached.
  ///
  /// In fr, this message translates to:
  /// **'Votre limite de dépôt mensuelle est de {monthlyLimitAmount}.\nFaites votre identification pour lever cette limite'**
  String depositVcMonthlyLimitReached(Object monthlyLimitAmount);

  /// No description provided for @depositPaymentSubscriptionDepositAmountInsufficient.
  ///
  /// In fr, this message translates to:
  /// **'Ce montant ne sera pas suffisant pour couvrir votre abonnement. Veuillez recharger au moins {sufficientAmount}'**
  String depositPaymentSubscriptionDepositAmountInsufficient(Object sufficientAmount);

  /// No description provided for @depositYourDepositFailed.
  ///
  /// In fr, this message translates to:
  /// **'Votre dépôt a échoué'**
  String get depositYourDepositFailed;

  /// No description provided for @transferTypeTitle.
  ///
  /// In fr, this message translates to:
  /// **'{type, select, local{Transfert local} international{Transfert international} other{}}'**
  String transferTypeTitle(String type);

  /// No description provided for @transfer.
  ///
  /// In fr, this message translates to:
  /// **'Transfert'**
  String get transfer;

  /// No description provided for @beneficiariesNextCashInPhoneNumberModificationMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous pourrez modifier ce numéro dans {remainingDay, select, 0{0 jour} 1{1 jour} other{{remainingDay} jours}}'**
  String beneficiariesNextCashInPhoneNumberModificationMessage(String remainingDay);

  /// No description provided for @transferSendBy.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer sur'**
  String get transferSendBy;

  /// No description provided for @transferSelectBeneficiary.
  ///
  /// In fr, this message translates to:
  /// **'Selectionnez le bénéficiaire'**
  String get transferSelectBeneficiary;

  /// No description provided for @send.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer'**
  String get send;

  /// No description provided for @transferSearchContact.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un contact'**
  String get transferSearchContact;

  /// No description provided for @transferBeneficiaryNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro du bénéficiaire'**
  String get transferBeneficiaryNumber;

  /// No description provided for @transferP2PDescription.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter une note'**
  String get transferP2PDescription;

  /// No description provided for @transferBeneficiaryName.
  ///
  /// In fr, this message translates to:
  /// **'Nom du bénéficiaire'**
  String get transferBeneficiaryName;

  /// No description provided for @transferIPayWithdrawalFee.
  ///
  /// In fr, this message translates to:
  /// **'Je paye les frais de retrait'**
  String get transferIPayWithdrawalFee;

  /// No description provided for @transferTotalAmountToPay.
  ///
  /// In fr, this message translates to:
  /// **'Montant total à payer'**
  String get transferTotalAmountToPay;

  /// No description provided for @transferTotalAmountToPayIsGreaterThanBalance.
  ///
  /// In fr, this message translates to:
  /// **'Le montant total à payer est supérieur à votre solde {balance}'**
  String transferTotalAmountToPayIsGreaterThanBalance(Object balance);

  /// No description provided for @transferWarningMessageForWrongPhoneNumber.
  ///
  /// In fr, this message translates to:
  /// **'Attention! En cas d\'erreur vous ne pourrez pas récupérer l\'argent transféré.'**
  String get transferWarningMessageForWrongPhoneNumber;

  /// No description provided for @vaultTypeClassicLabel.
  ///
  /// In fr, this message translates to:
  /// **'Classic'**
  String get vaultTypeClassicLabel;

  /// No description provided for @vaultTypeCashbackLabel.
  ///
  /// In fr, this message translates to:
  /// **'Cashback'**
  String get vaultTypeCashbackLabel;

  /// No description provided for @vaultTypeBlockedLabel.
  ///
  /// In fr, this message translates to:
  /// **'Bloqué'**
  String get vaultTypeBlockedLabel;

  /// No description provided for @vaultTypeChallengeLabel.
  ///
  /// In fr, this message translates to:
  /// **'Challenge'**
  String get vaultTypeChallengeLabel;

  /// No description provided for @vaultMyVaults.
  ///
  /// In fr, this message translates to:
  /// **'Mes coffres'**
  String get vaultMyVaults;

  /// No description provided for @vaultChallenges.
  ///
  /// In fr, this message translates to:
  /// **'Challenges'**
  String get vaultChallenges;

  /// No description provided for @vaultCreateNewVaultTile.
  ///
  /// In fr, this message translates to:
  /// **'Créer un nouveau coffre'**
  String get vaultCreateNewVaultTile;

  /// No description provided for @vaultModifyIcon.
  ///
  /// In fr, this message translates to:
  /// **'Modifier l’icône'**
  String get vaultModifyIcon;

  /// No description provided for @vaultNameFieldLabel.
  ///
  /// In fr, this message translates to:
  /// **'Nom du Coffre'**
  String get vaultNameFieldLabel;

  /// No description provided for @vaultDefineBlockingStatusTitle.
  ///
  /// In fr, this message translates to:
  /// **'Bloquer le coffre'**
  String get vaultDefineBlockingStatusTitle;

  /// No description provided for @vaultRecurringTransferDescription.
  ///
  /// In fr, this message translates to:
  /// **'Économisez 2 fois plus et sans y penser'**
  String get vaultRecurringTransferDescription;

  /// No description provided for @vaultWeeklyRecurrenceFrequency.
  ///
  /// In fr, this message translates to:
  /// **'Chaque {weekDay}'**
  String vaultWeeklyRecurrenceFrequency(Object weekDay);

  /// No description provided for @vaultMonthlyRecurrenceFrequency.
  ///
  /// In fr, this message translates to:
  /// **'Chaque {day} du mois'**
  String vaultMonthlyRecurrenceFrequency(Object day);

  /// No description provided for @vaultDailyRecurrenceFrequency.
  ///
  /// In fr, this message translates to:
  /// **'Chaque jour'**
  String get vaultDailyRecurrenceFrequency;

  /// No description provided for @vaultCurrentBalanceOf.
  ///
  /// In fr, this message translates to:
  /// **'Solde Coffre {vaultName}'**
  String vaultCurrentBalanceOf(Object vaultName);

  /// No description provided for @vaultDetailsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Détails du coffre'**
  String get vaultDetailsTitle;

  /// No description provided for @vaultChallengeDetailsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Détails du challenge'**
  String get vaultChallengeDetailsTitle;

  /// No description provided for @vaultSelectAnIconTitle.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez une icône'**
  String get vaultSelectAnIconTitle;

  /// No description provided for @vaultSelectAnIconDescription.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez la nouvelle icône de votre coffre.'**
  String get vaultSelectAnIconDescription;

  /// No description provided for @vaultDeadlineLabel.
  ///
  /// In fr, this message translates to:
  /// **'Échéance'**
  String get vaultDeadlineLabel;

  /// No description provided for @vaultSparedChangeTag.
  ///
  /// In fr, this message translates to:
  /// **'Petite Monnaie'**
  String get vaultSparedChangeTag;

  /// No description provided for @vaultRecurringTransferTag.
  ///
  /// In fr, this message translates to:
  /// **'V. récurrent'**
  String get vaultRecurringTransferTag;

  /// No description provided for @vaultCreateVault.
  ///
  /// In fr, this message translates to:
  /// **'Créer un coffre'**
  String get vaultCreateVault;

  /// No description provided for @vaultCreationOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Création de votre coffre en cours...'**
  String get vaultCreationOnGoing;

  /// No description provided for @vaultAmountValidationExceedBalanceError.
  ///
  /// In fr, this message translates to:
  /// **'Le montant ne doit pas dépasser le solde du coffre'**
  String get vaultAmountValidationExceedBalanceError;

  /// No description provided for @vaultSettings.
  ///
  /// In fr, this message translates to:
  /// **'Paramètres du coffre'**
  String get vaultSettings;

  /// No description provided for @vaultCustomize.
  ///
  /// In fr, this message translates to:
  /// **'Personnaliser le coffre'**
  String get vaultCustomize;

  /// No description provided for @vaultCustomizeDescription.
  ///
  /// In fr, this message translates to:
  /// **'Changer le nom et l’icône du coffre'**
  String get vaultCustomizeDescription;

  /// No description provided for @vaultDeleteVault.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer le coffre'**
  String get vaultDeleteVault;

  /// No description provided for @vaultSparedChangeAcceleratorIndication.
  ///
  /// In fr, this message translates to:
  /// **'Accélérateur x{factor}'**
  String vaultSparedChangeAcceleratorIndication(Object factor);

  /// No description provided for @vaultGiveUpChallenge.
  ///
  /// In fr, this message translates to:
  /// **'Quitter le challenge'**
  String get vaultGiveUpChallenge;

  /// No description provided for @vaultDeleteConfirmationTitle.
  ///
  /// In fr, this message translates to:
  /// **'Êtes-vous sûr de vouloir supprimer votre coffre {vaultName} ?'**
  String vaultDeleteConfirmationTitle(Object vaultName);

  /// No description provided for @vaultDeleteConfirmationWarning.
  ///
  /// In fr, this message translates to:
  /// **'L’argent sur le coffre sera reversé sur votre compte principal.'**
  String get vaultDeleteConfirmationWarning;

  /// No description provided for @vaultDeletedSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Coffre supprimé avec succès'**
  String get vaultDeletedSuccess;

  /// No description provided for @vaultChallenge.
  ///
  /// In fr, this message translates to:
  /// **'Challenge'**
  String get vaultChallenge;

  /// No description provided for @vaultJoinChallenge.
  ///
  /// In fr, this message translates to:
  /// **'Participer au Challenge'**
  String get vaultJoinChallenge;

  /// No description provided for @vaultInfoOnChallenge.
  ///
  /// In fr, this message translates to:
  /// **'Infos sur le challenge'**
  String get vaultInfoOnChallenge;

  /// No description provided for @vaultChallengeReward.
  ///
  /// In fr, this message translates to:
  /// **'Récompenses'**
  String get vaultChallengeReward;

  /// No description provided for @vaultMinChallengeDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt Minimum'**
  String get vaultMinChallengeDeposit;

  /// No description provided for @vaultPercentHasSuccess.
  ///
  /// In fr, this message translates to:
  /// **'{percent}% ont réussi'**
  String vaultPercentHasSuccess(Object percent);

  /// No description provided for @vaultEnrollChallengeOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Enrôlement au challenge en cours...'**
  String get vaultEnrollChallengeOnGoing;

  /// No description provided for @vaultTransactionOfVault.
  ///
  /// In fr, this message translates to:
  /// **'Transactions de {vaultName}'**
  String vaultTransactionOfVault(Object vaultName);

  /// No description provided for @vaultUniqueNameErrorMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ce nom est déjà utilisé pour un autre coffre'**
  String get vaultUniqueNameErrorMessage;

  /// No description provided for @blockedUntilChallengeEnd.
  ///
  /// In fr, this message translates to:
  /// **'Jusqu\'à la fin du challenge'**
  String get blockedUntilChallengeEnd;

  /// No description provided for @vaultJoinChallengeSuccessMessage.
  ///
  /// In fr, this message translates to:
  /// **'Super ! Vous participez désormais au challenge {challengeName}.'**
  String vaultJoinChallengeSuccessMessage(Object challengeName);

  /// No description provided for @vaultCantCustomizeChallengeVault.
  ///
  /// In fr, this message translates to:
  /// **'Vous ne pouvez pas personnaliser un coffre challenge'**
  String get vaultCantCustomizeChallengeVault;

  /// No description provided for @vaultQuitChallengeWarningMessage.
  ///
  /// In fr, this message translates to:
  /// **'L’abandon du challenge entraine la suppression du coffre. S’il y a encore de l’argent sur le coffre, il sera reversé sur votre compte principal.'**
  String get vaultQuitChallengeWarningMessage;

  /// No description provided for @vaultYouAreNotPartOfChallenge.
  ///
  /// In fr, this message translates to:
  /// **'Vous ne participez plus au challenge {challengeName}.'**
  String vaultYouAreNotPartOfChallenge(Object challengeName);

  /// No description provided for @vaultBlockWarningMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre coffre sera bloqué jusqu\'au {date}. Vous ne pourrez pas le débloquer avant.'**
  String vaultBlockWarningMessage(Object date);

  /// No description provided for @vaultDoYouWantToEnableAutomaticDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Voulez-vous approvisionner automatiquement votre coffre ?'**
  String get vaultDoYouWantToEnableAutomaticDeposit;

  /// No description provided for @transactionOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Transaction en cours...'**
  String get transactionOnGoing;

  /// No description provided for @transactions.
  ///
  /// In fr, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// No description provided for @transferFailedMessage.
  ///
  /// In fr, this message translates to:
  /// **'Le traitement du transfert a échoué. Veuillez recommencer'**
  String get transferFailedMessage;

  /// No description provided for @loanRequestFailedMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre demande de prêt a échoué. Veuillez recommencer'**
  String get loanRequestFailedMessage;

  /// No description provided for @loanIncreaseCreditLimit.
  ///
  /// In fr, this message translates to:
  /// **'Augmentez votre limite de crédit'**
  String get loanIncreaseCreditLimit;

  /// No description provided for @loanRepayBeforeDueDateSpecific.
  ///
  /// In fr, this message translates to:
  /// **'Remboursez votre crédit avant le {date} pour augmenter votre limite de crédit.'**
  String loanRepayBeforeDueDateSpecific(Object date);

  /// No description provided for @loanRepayNowToAvoidBeingBlacklisted.
  ///
  /// In fr, this message translates to:
  /// **'Remboursez votre crédit maintenant pour éviter d’être fiché bancaire dans la zone UEMOA.'**
  String get loanRepayNowToAvoidBeingBlacklisted;

  /// No description provided for @loanRepayBeforeDueDateSpecificWithDate.
  ///
  /// In fr, this message translates to:
  /// **'Remboursez votre crédit avant le {date} pour éviter des pénalités supplémentaires.'**
  String loanRepayBeforeDueDateSpecificWithDate(Object date);

  /// No description provided for @loanRepayLateWarning.
  ///
  /// In fr, this message translates to:
  /// **'{number, plural, =1{Attention - 1 jour de retard} other{Attention - {number} jours de retard}}'**
  String loanRepayLateWarning(num number);

  /// No description provided for @loanAvoidPenaltiesDaysLeft.
  ///
  /// In fr, this message translates to:
  /// **'{days, plural, =1{Évitez les pénalités - 1 jour restant} other{Évitez les pénalités - {days} jours restants}}'**
  String loanAvoidPenaltiesDaysLeft(num days);

  /// No description provided for @transactionsChooseCategory.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez une catégorie'**
  String get transactionsChooseCategory;

  /// No description provided for @transactionStatusLabel.
  ///
  /// In fr, this message translates to:
  /// **'{status, select, validated{Effectué} completed{Effectué} pending{En cours} failed{Échoué} frozen{En cours de vérification} initiated{Initié} other{-}}'**
  String transactionStatusLabel(String status);

  /// No description provided for @transactionReceiptDateTimeTitle.
  ///
  /// In fr, this message translates to:
  /// **'Date & Heure'**
  String get transactionReceiptDateTimeTitle;

  /// No description provided for @transactionReceiptStatusTitle.
  ///
  /// In fr, this message translates to:
  /// **'Statut'**
  String get transactionReceiptStatusTitle;

  /// No description provided for @transactionReceiptAmountWithoutFeesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Montant (sans les frais)'**
  String get transactionReceiptAmountWithoutFeesTitle;

  /// No description provided for @transactionReceiptFeesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Frais'**
  String get transactionReceiptFeesTitle;

  /// No description provided for @transactionReceiptExchangeRateTitle.
  ///
  /// In fr, this message translates to:
  /// **'Taux de change'**
  String get transactionReceiptExchangeRateTitle;

  /// No description provided for @transactionReceiptAmountTitle.
  ///
  /// In fr, this message translates to:
  /// **'Montant'**
  String get transactionReceiptAmountTitle;

  /// No description provided for @transactionReceiptReferenceTitle.
  ///
  /// In fr, this message translates to:
  /// **'Référence'**
  String get transactionReceiptReferenceTitle;

  /// No description provided for @transactionReceiptBillReloadCodeTitle.
  ///
  /// In fr, this message translates to:
  /// **'Code de rechargement'**
  String get transactionReceiptBillReloadCodeTitle;

  /// No description provided for @transactionReceiptBillMessageTitle.
  ///
  /// In fr, this message translates to:
  /// **'Message'**
  String get transactionReceiptBillMessageTitle;

  /// No description provided for @transactionEmptyTransactionsListMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre historique de transaction s’affichera ici'**
  String get transactionEmptyTransactionsListMessage;

  /// No description provided for @transactionsReceiptsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Période'**
  String get transactionsReceiptsTitle;

  /// No description provided for @transactionsReceiptsCustomPeriod.
  ///
  /// In fr, this message translates to:
  /// **'Période personnalisée'**
  String get transactionsReceiptsCustomPeriod;

  /// No description provided for @transactionsReceiptsLastMonthPeriod.
  ///
  /// In fr, this message translates to:
  /// **'Le mois dernier'**
  String get transactionsReceiptsLastMonthPeriod;

  /// No description provided for @transactionsReceiptsLastThreeMonthPeriod.
  ///
  /// In fr, this message translates to:
  /// **'Les 3 derniers mois'**
  String get transactionsReceiptsLastThreeMonthPeriod;

  /// No description provided for @transactionsReceiptsLastSixMonthPeriod.
  ///
  /// In fr, this message translates to:
  /// **'Les 6 derniers mois'**
  String get transactionsReceiptsLastSixMonthPeriod;

  /// No description provided for @transactionsReceiptsDownloadTitle.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez le format:'**
  String get transactionsReceiptsDownloadTitle;

  /// No description provided for @transactionsReceiptsDownloadPDF.
  ///
  /// In fr, this message translates to:
  /// **'Télécharger en PDF'**
  String get transactionsReceiptsDownloadPDF;

  /// No description provided for @transactionsReceiptsDownloadCSV.
  ///
  /// In fr, this message translates to:
  /// **'Télécharger en CSV'**
  String get transactionsReceiptsDownloadCSV;

  /// No description provided for @transactionsReceiptsDownloadLabel.
  ///
  /// In fr, this message translates to:
  /// **'Télécharger'**
  String get transactionsReceiptsDownloadLabel;

  /// No description provided for @uncategorizedTransactions.
  ///
  /// In fr, this message translates to:
  /// **'Transactions à catégoriser'**
  String get uncategorizedTransactions;

  /// No description provided for @transactionProofOfPaymentRequired.
  ///
  /// In fr, this message translates to:
  /// **'Vous devez nous fournir la photo d’un reçu pour ce paiement afin d\'éviter la suspension de votre carte. Ceci est une réglementation de la banque centrale (BCEAO).'**
  String get transactionProofOfPaymentRequired;

  /// No description provided for @transactionProvideProof.
  ///
  /// In fr, this message translates to:
  /// **'Fournir une preuve'**
  String get transactionProvideProof;

  /// No description provided for @transactionProofRejected.
  ///
  /// In fr, this message translates to:
  /// **'Preuve rejetée'**
  String get transactionProofRejected;

  /// No description provided for @transactionProofRejectedMessage.
  ///
  /// In fr, this message translates to:
  /// **'La preuve que vous avez envoyée pour votre paiement a été rejetée. Vous devez soumettre une autre preuve SVP.'**
  String get transactionProofRejectedMessage;

  /// No description provided for @transactionRetryVerification.
  ///
  /// In fr, this message translates to:
  /// **'Réessayer la vérification'**
  String get transactionRetryVerification;

  /// No description provided for @transactionPaymentValidated.
  ///
  /// In fr, this message translates to:
  /// **'Paiement validé'**
  String get transactionPaymentValidated;

  /// No description provided for @transactionProofValidated.
  ///
  /// In fr, this message translates to:
  /// **'La preuve que vous avez envoyée pour votre paiement a bien été validée.'**
  String get transactionProofValidated;

  /// No description provided for @transactionVerificationInProgress.
  ///
  /// In fr, this message translates to:
  /// **'Vérification en cours'**
  String get transactionVerificationInProgress;

  /// No description provided for @transactionProofVerificationInProgress.
  ///
  /// In fr, this message translates to:
  /// **'La preuve que vous avez envoyée pour votre paiement est en cours de vérification.'**
  String get transactionProofVerificationInProgress;

  /// No description provided for @transactionProofOfPaymentRequiredMessage.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez fournir une preuve de paiement afin d\'éviter la suspension de votre carte.'**
  String get transactionProofOfPaymentRequiredMessage;

  /// No description provided for @transactionP2PNoteTitle.
  ///
  /// In fr, this message translates to:
  /// **'Note'**
  String get transactionP2PNoteTitle;

  /// No description provided for @sendForVerification.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer pour vérification'**
  String get sendForVerification;

  /// No description provided for @importAnotherImage.
  ///
  /// In fr, this message translates to:
  /// **'Importer une autre image'**
  String get importAnotherImage;

  /// No description provided for @transactionVerificationInProgressMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vérification en cours. Votre preuve de paiement sera examinée pour confirmer sa véracité et vous protéger d\'une suspension de paiement.'**
  String get transactionVerificationInProgressMessage;

  /// No description provided for @remainingToRepay.
  ///
  /// In fr, this message translates to:
  /// **'Reste à rembourser'**
  String get remainingToRepay;

  /// No description provided for @chooseMonth.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez un mois'**
  String get chooseMonth;

  /// No description provided for @expensesByCategory.
  ///
  /// In fr, this message translates to:
  /// **'Dépenses par catégories'**
  String get expensesByCategory;

  /// No description provided for @amountValidationRequiredError.
  ///
  /// In fr, this message translates to:
  /// **'Veuilez entrer un montant'**
  String get amountValidationRequiredError;

  /// No description provided for @amountValidationExceedMaxError.
  ///
  /// In fr, this message translates to:
  /// **'Le montant ne doit pas dépasser {maxAmount}'**
  String amountValidationExceedMaxError(Object maxAmount);

  /// No description provided for @amountValidationExceedMinError.
  ///
  /// In fr, this message translates to:
  /// **'Le montant ne doit pas être inférieur à {minAmount}'**
  String amountValidationExceedMinError(Object minAmount);

  /// No description provided for @amountValidationMultipleOfError.
  ///
  /// In fr, this message translates to:
  /// **'Le montant doit être un multiple de {multiple}'**
  String amountValidationMultipleOfError(Object multiple);

  /// No description provided for @amountValidationExceedBalanceError.
  ///
  /// In fr, this message translates to:
  /// **'Le montant ne doit pas dépasser le solde de votre compte principal.\nSolde compte principal: {balance}'**
  String amountValidationExceedBalanceError(Object balance);

  /// No description provided for @conversion.
  ///
  /// In fr, this message translates to:
  /// **'Devise'**
  String get conversion;

  /// No description provided for @iban.
  ///
  /// In fr, this message translates to:
  /// **'N° de compte'**
  String get iban;

  /// No description provided for @ibanAccountNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de compte'**
  String get ibanAccountNumber;

  /// No description provided for @ibanAccountNumberAbbr.
  ///
  /// In fr, this message translates to:
  /// **'N° de compte'**
  String get ibanAccountNumberAbbr;

  /// No description provided for @ibanGetYourAccountNumber.
  ///
  /// In fr, this message translates to:
  /// **'Obtenez un Numéro de compte'**
  String get ibanGetYourAccountNumber;

  /// No description provided for @ibanGetYourAccountNumberDescription.
  ///
  /// In fr, this message translates to:
  /// **'Recevez desormais tous vos virements bancaires UEMOA directement sur votre compte Djamo et sans frais'**
  String get ibanGetYourAccountNumberDescription;

  /// No description provided for @ibanGetMyAccountNumber.
  ///
  /// In fr, this message translates to:
  /// **'Obtenir mon N° de compte'**
  String get ibanGetMyAccountNumber;

  /// No description provided for @ibanYourActivity.
  ///
  /// In fr, this message translates to:
  /// **'Activité'**
  String get ibanYourActivity;

  /// No description provided for @ibanYourActivityQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Que faites-vous dans la vie ?'**
  String get ibanYourActivityQuestion;

  /// No description provided for @ibanAverageIncome.
  ///
  /// In fr, this message translates to:
  /// **'Revenu moyen'**
  String get ibanAverageIncome;

  /// No description provided for @ibanAverageIncomeQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Combien gagnez-vous par mois?'**
  String get ibanAverageIncomeQuestion;

  /// No description provided for @ibanContinueWithoutGiveTheseInfo.
  ///
  /// In fr, this message translates to:
  /// **'Continuer sans donner ces informations'**
  String get ibanContinueWithoutGiveTheseInfo;

  /// No description provided for @ibanCreationOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Création de votre compte en cours...'**
  String get ibanCreationOnGoing;

  /// No description provided for @ibanPendingCreation.
  ///
  /// In fr, this message translates to:
  /// **'N° de compte en cours de traitement'**
  String get ibanPendingCreation;

  /// No description provided for @ibanWeWillNotifyYou.
  ///
  /// In fr, this message translates to:
  /// **'Nous vous informerons lorsque votre Numéro de compte aura été créé avec succès.'**
  String get ibanWeWillNotifyYou;

  /// No description provided for @ibanYourAccountNumberCreationIsOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Votre numéro de compte est en cours de creation'**
  String get ibanYourAccountNumberCreationIsOnGoing;

  /// No description provided for @ibanYouWillReceiveNotification.
  ///
  /// In fr, this message translates to:
  /// **'Vous recevrez une notification pour vous informer des qu’il sera disponible⚡'**
  String get ibanYouWillReceiveNotification;

  /// No description provided for @ibanLocalWireTransfer.
  ///
  /// In fr, this message translates to:
  /// **'Virement local'**
  String get ibanLocalWireTransfer;

  /// No description provided for @ibanLocalWireTransferSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Recevoir de l\'UEMOA'**
  String get ibanLocalWireTransferSubtitle;

  /// No description provided for @ibanInternationalWireTransfer.
  ///
  /// In fr, this message translates to:
  /// **'Virement international'**
  String get ibanInternationalWireTransfer;

  /// No description provided for @ibanInternationalWireTransferSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Recevoir par virement international'**
  String get ibanInternationalWireTransferSubtitle;

  /// No description provided for @ibanBeneficiaryBankName.
  ///
  /// In fr, this message translates to:
  /// **'Banque du bénéficiaire'**
  String get ibanBeneficiaryBankName;

  /// No description provided for @ibanBeneficiaryName.
  ///
  /// In fr, this message translates to:
  /// **'Nom du bénéficaire'**
  String get ibanBeneficiaryName;

  /// No description provided for @ibanBeneficiaryAccountNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de compte'**
  String get ibanBeneficiaryAccountNumber;

  /// No description provided for @ibanAccountNumberForInternationalTransfer.
  ///
  /// In fr, this message translates to:
  /// **'N° de compte pour virement international'**
  String get ibanAccountNumberForInternationalTransfer;

  /// No description provided for @ibanYourAccountNumberIsProvidedBy.
  ///
  /// In fr, this message translates to:
  /// **'Votre numéro de compte vous est fourni par'**
  String get ibanYourAccountNumberIsProvidedBy;

  /// No description provided for @ibanComplianceWarningMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ce numéro de compte n’est pas un compte bancaire mais seulement un moyen de vous permettre de recevoir un virement bancaire UEMOA sur votre compte Djamo'**
  String get ibanComplianceWarningMessage;

  /// No description provided for @ibanShareShortUsageDescription.
  ///
  /// In fr, this message translates to:
  /// **'Recevoir un virement bancaire international'**
  String get ibanShareShortUsageDescription;

  /// No description provided for @ibanAccountNumberShareShortUsageDescription.
  ///
  /// In fr, this message translates to:
  /// **'Recevoir un virement bancaire de l\'UAEMOA'**
  String get ibanAccountNumberShareShortUsageDescription;

  /// No description provided for @ibanBankProviderName.
  ///
  /// In fr, this message translates to:
  /// **'{isoCode, select, ci{Banque d\'Abidjan (BDA)} sn{Banque de Dakar (BDK)} other{}}'**
  String ibanBankProviderName(String isoCode);

  /// No description provided for @ibanInPdfAccountDetail.
  ///
  /// In fr, this message translates to:
  /// **'Détails du compte'**
  String get ibanInPdfAccountDetail;

  /// No description provided for @ibanInPdfAccountHolder.
  ///
  /// In fr, this message translates to:
  /// **'Titulaire du compte'**
  String get ibanInPdfAccountHolder;

  /// No description provided for @ibanInPdfAgencyCode.
  ///
  /// In fr, this message translates to:
  /// **'Code agence'**
  String get ibanInPdfAgencyCode;

  /// No description provided for @ibanInPdfAccountNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de compte'**
  String get ibanInPdfAccountNumber;

  /// No description provided for @ibanInPdfRIBKey.
  ///
  /// In fr, this message translates to:
  /// **'Clé RIB'**
  String get ibanInPdfRIBKey;

  /// No description provided for @ibanInPdfInternationalIdentifier.
  ///
  /// In fr, this message translates to:
  /// **'Identification internationale'**
  String get ibanInPdfInternationalIdentifier;

  /// No description provided for @ibanBICSWIFT.
  ///
  /// In fr, this message translates to:
  /// **'BIC/SWIFT'**
  String get ibanBICSWIFT;

  /// No description provided for @ibanUseIBANForWireTransferMessage.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez utiliser les informations ci-dessous pour effectuer un virement bancaire UEMOA depuis votre application bancaire'**
  String get ibanUseIBANForWireTransferMessage;

  /// No description provided for @loansBorrowUpTo.
  ///
  /// In fr, this message translates to:
  /// **'Empruntez jusqu\'à {amount}'**
  String loansBorrowUpTo(Object amount);

  /// No description provided for @loansCreditLimit.
  ///
  /// In fr, this message translates to:
  /// **'Mon plafond de crédit'**
  String get loansCreditLimit;

  /// No description provided for @loanHistory.
  ///
  /// In fr, this message translates to:
  /// **'Historique de mes crédits'**
  String get loanHistory;

  /// No description provided for @howItWorks.
  ///
  /// In fr, this message translates to:
  /// **'Comment ça marche?'**
  String get howItWorks;

  /// No description provided for @loanBorrowedAmount.
  ///
  /// In fr, this message translates to:
  /// **'Montant emprunté'**
  String get loanBorrowedAmount;

  /// No description provided for @loanDisbursementDate.
  ///
  /// In fr, this message translates to:
  /// **'Date de décaissement'**
  String get loanDisbursementDate;

  /// No description provided for @loanAccelerationFees.
  ///
  /// In fr, this message translates to:
  /// **'Frais d’accélération'**
  String get loanAccelerationFees;

  /// No description provided for @loanDisbursementFees.
  ///
  /// In fr, this message translates to:
  /// **'Frais de décaissement'**
  String get loanDisbursementFees;

  /// No description provided for @monthlyInterestRate.
  ///
  /// In fr, this message translates to:
  /// **'Taux d’intérêt mensuel'**
  String get monthlyInterestRate;

  /// No description provided for @loanPenalties.
  ///
  /// In fr, this message translates to:
  /// **'Pénalités'**
  String get loanPenalties;

  /// No description provided for @loanLastRepayment.
  ///
  /// In fr, this message translates to:
  /// **'Dernier remboursement'**
  String get loanLastRepayment;

  /// No description provided for @amountReceived.
  ///
  /// In fr, this message translates to:
  /// **'Montant reçu'**
  String get amountReceived;

  /// No description provided for @loanRepaidAmount.
  ///
  /// In fr, this message translates to:
  /// **'Montant remboursé'**
  String get loanRepaidAmount;

  /// No description provided for @transactionsWillAppearHere.
  ///
  /// In fr, this message translates to:
  /// **'Vos transactions s’afficheront ici.'**
  String get transactionsWillAppearHere;

  /// No description provided for @loanEstimatedBorrowingCapacity.
  ///
  /// In fr, this message translates to:
  /// **'Capacité d\'emprunt estimée'**
  String get loanEstimatedBorrowingCapacity;

  /// No description provided for @loanDailyBorrowingCapacity.
  ///
  /// In fr, this message translates to:
  /// **'Capacité d\'emprunt du jour'**
  String get loanDailyBorrowingCapacity;

  /// No description provided for @loansCriteria.
  ///
  /// In fr, this message translates to:
  /// **'Critères'**
  String get loansCriteria;

  /// No description provided for @updateDate.
  ///
  /// In fr, this message translates to:
  /// **'Mise à jour {date}'**
  String updateDate(Object date);

  /// No description provided for @loansFastReception.
  ///
  /// In fr, this message translates to:
  /// **'Reception rapide'**
  String get loansFastReception;

  /// No description provided for @loansOnlyTwoPercentFees.
  ///
  /// In fr, this message translates to:
  /// **'Seulement 2% de frais'**
  String get loansOnlyTwoPercentFees;

  /// No description provided for @loansRepayIn30Days.
  ///
  /// In fr, this message translates to:
  /// **'Remboursez en 30 jours'**
  String get loansRepayIn30Days;

  /// No description provided for @loansUnderstandWhy.
  ///
  /// In fr, this message translates to:
  /// **'Comprendre pourquoi'**
  String get loansUnderstandWhy;

  /// No description provided for @loansNotEligibleCriteria.
  ///
  /// In fr, this message translates to:
  /// **'Vous n’êtes pas encore éligible à un crédit'**
  String get loansNotEligibleCriteria;

  /// No description provided for @loansImproveEligibilityCriteria.
  ///
  /// In fr, this message translates to:
  /// **'Améliorer votre éligibilité en remplissant ces critères'**
  String get loansImproveEligibilityCriteria;

  /// No description provided for @loansDepositAtLeast30k.
  ///
  /// In fr, this message translates to:
  /// **'Avoir déposé au moins 30.000F sur les 3 derniers mois'**
  String get loansDepositAtLeast30k;

  /// No description provided for @loansHavePhysicalCard.
  ///
  /// In fr, this message translates to:
  /// **'Avoir une carte physique'**
  String get loansHavePhysicalCard;

  /// No description provided for @loansBorrow.
  ///
  /// In fr, this message translates to:
  /// **'Emprunter'**
  String get loansBorrow;

  /// No description provided for @loansTakeCredit.
  ///
  /// In fr, this message translates to:
  /// **'Prendre un crédit'**
  String get loansTakeCredit;

  /// No description provided for @loanDueDate.
  ///
  /// In fr, this message translates to:
  /// **'Échéance'**
  String get loanDueDate;

  /// No description provided for @loanInstantReceptionFees.
  ///
  /// In fr, this message translates to:
  /// **'Frais de réception instantanée'**
  String get loanInstantReceptionFees;

  /// No description provided for @loanMonthlyAPR.
  ///
  /// In fr, this message translates to:
  /// **'TEG mensuel'**
  String get loanMonthlyAPR;

  /// No description provided for @loanAmountToRepay.
  ///
  /// In fr, this message translates to:
  /// **'Montant à rembourser'**
  String get loanAmountToRepay;

  /// No description provided for @repay.
  ///
  /// In fr, this message translates to:
  /// **'Rembourser'**
  String get repay;

  /// No description provided for @loanRepayBeforeDueDate.
  ///
  /// In fr, this message translates to:
  /// **'Remboursez votre crédit avant l’échéance pour augmenter votre capacité d’emprunt à {amount}'**
  String loanRepayBeforeDueDate(Object amount);

  /// No description provided for @loanRepayBeforeDueDateWarning.
  ///
  /// In fr, this message translates to:
  /// **'Remboursez votre crédit avant l’échéance pour éviter de payer des pénalités et perdre accès au service de crédit'**
  String get loanRepayBeforeDueDateWarning;

  /// No description provided for @loanRepayNowToAvoidPenalties.
  ///
  /// In fr, this message translates to:
  /// **'Remboursez votre crédit maintenant pour éviter d’accumuler des pénalités et d’être signalé.e au bureau de crédit de la zone UEMOA'**
  String get loanRepayNowToAvoidPenalties;

  /// No description provided for @monthlyLabel.
  ///
  /// In fr, this message translates to:
  /// **'mensuel'**
  String get monthlyLabel;

  /// No description provided for @annuallyLabel.
  ///
  /// In fr, this message translates to:
  /// **'annuel'**
  String get annuallyLabel;

  /// No description provided for @dailyLabel.
  ///
  /// In fr, this message translates to:
  /// **'journalier'**
  String get dailyLabel;

  /// No description provided for @monthPrefix.
  ///
  /// In fr, this message translates to:
  /// **'mois'**
  String get monthPrefix;

  /// No description provided for @yearPrefix.
  ///
  /// In fr, this message translates to:
  /// **'an(s)'**
  String get yearPrefix;

  /// No description provided for @daysPrefix.
  ///
  /// In fr, this message translates to:
  /// **'jour(s)'**
  String get daysPrefix;

  /// No description provided for @lastDay.
  ///
  /// In fr, this message translates to:
  /// **'Dernier jour'**
  String get lastDay;

  /// No description provided for @daysLate.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{Pas de retard} =1{1 jour de retard} other{{count} jours de retard}}'**
  String daysLate(num count);

  /// No description provided for @loansOnboardingProfessionalSituation.
  ///
  /// In fr, this message translates to:
  /// **'Quelle est votre situation professionnelle ?'**
  String get loansOnboardingProfessionalSituation;

  /// No description provided for @loansOnboardingSectorOfActivity.
  ///
  /// In fr, this message translates to:
  /// **'Quel est votre secteur d’activité ?'**
  String get loansOnboardingSectorOfActivity;

  /// No description provided for @loansOnboardingShooseSectorOfActivity.
  ///
  /// In fr, this message translates to:
  /// **'Choisir un secteur d’activité'**
  String get loansOnboardingShooseSectorOfActivity;

  /// No description provided for @loansOnboardingAverageMonthlyIncome.
  ///
  /// In fr, this message translates to:
  /// **'Quel est votre revenu moyen mensuel ?'**
  String get loansOnboardingAverageMonthlyIncome;

  /// No description provided for @loansOnboardingTermsOfEngagement.
  ///
  /// In fr, this message translates to:
  /// **'Conditions d\'engagement'**
  String get loansOnboardingTermsOfEngagement;

  /// No description provided for @loansOnboardingProfessionalStateSalaried.
  ///
  /// In fr, this message translates to:
  /// **'Salarié(e)'**
  String get loansOnboardingProfessionalStateSalaried;

  /// No description provided for @loansOnboardingProfessionalStateSelfEmployed.
  ///
  /// In fr, this message translates to:
  /// **'Profession libérale'**
  String get loansOnboardingProfessionalStateSelfEmployed;

  /// No description provided for @loansOnboardingProfessionalStateRetired.
  ///
  /// In fr, this message translates to:
  /// **'Retraité(e)'**
  String get loansOnboardingProfessionalStateRetired;

  /// No description provided for @loansOnboardingProfessionalStateStudent.
  ///
  /// In fr, this message translates to:
  /// **'Etudiant(e)'**
  String get loansOnboardingProfessionalStateStudent;

  /// No description provided for @loansOnboardingProfessionalStateUnemployed.
  ///
  /// In fr, this message translates to:
  /// **'Sans activité'**
  String get loansOnboardingProfessionalStateUnemployed;

  /// No description provided for @other.
  ///
  /// In fr, this message translates to:
  /// **'Autres'**
  String get other;

  /// No description provided for @loansOnboardingSectorBankingInsurance.
  ///
  /// In fr, this message translates to:
  /// **'Banque / Assurance'**
  String get loansOnboardingSectorBankingInsurance;

  /// No description provided for @loansOnboardingSectorITTelecom.
  ///
  /// In fr, this message translates to:
  /// **'Informatique / Télécoms'**
  String get loansOnboardingSectorITTelecom;

  /// No description provided for @loansOnboardingSectorCommerce.
  ///
  /// In fr, this message translates to:
  /// **'Commerce'**
  String get loansOnboardingSectorCommerce;

  /// No description provided for @loansOnboardingSectorScience.
  ///
  /// In fr, this message translates to:
  /// **'Sciences'**
  String get loansOnboardingSectorScience;

  /// No description provided for @loansOnboardingSectorEducation.
  ///
  /// In fr, this message translates to:
  /// **'Education'**
  String get loansOnboardingSectorEducation;

  /// No description provided for @loansOnboardingSectorTextile.
  ///
  /// In fr, this message translates to:
  /// **'Textile'**
  String get loansOnboardingSectorTextile;

  /// No description provided for @loansOnboardingSectorLogistics.
  ///
  /// In fr, this message translates to:
  /// **'Logistique'**
  String get loansOnboardingSectorLogistics;

  /// No description provided for @loansOnboardingSectorConstruction.
  ///
  /// In fr, this message translates to:
  /// **'BTP'**
  String get loansOnboardingSectorConstruction;

  /// No description provided for @loansOnboardingSectorCraftsmanship.
  ///
  /// In fr, this message translates to:
  /// **'Artisanat'**
  String get loansOnboardingSectorCraftsmanship;

  /// No description provided for @loanDisbursementInProgress.
  ///
  /// In fr, this message translates to:
  /// **'Votre crédit est en cours de décaissement. Vous pourrez le rembourser quand il sera décaissé.'**
  String get loanDisbursementInProgress;

  /// No description provided for @loanFullyRepaidMessageSuccess.
  ///
  /// In fr, this message translates to:
  /// **'{amount} ont été remboursés. Vous avez remboursé la totalité de votre crédit.'**
  String loanFullyRepaidMessageSuccess(Object amount);

  /// No description provided for @loanFullyRepaidMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous avez déjà remboursé la totalité de votre crédit.'**
  String get loanFullyRepaidMessage;

  /// No description provided for @loanCreditReversalMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre crédit sera reversé sur votre compte principal dans un délai de {hours} heures.'**
  String loanCreditReversalMessage(Object hours);

  /// No description provided for @loanAccelerateDisbursement.
  ///
  /// In fr, this message translates to:
  /// **'Accélérer le décaissement'**
  String get loanAccelerateDisbursement;

  /// No description provided for @loanCreditReversalTodayMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre crédit sera reversé sur votre compte principal aujourd’hui.'**
  String get loanCreditReversalTodayMessage;

  /// No description provided for @loanBorrowing.
  ///
  /// In fr, this message translates to:
  /// **'Vous empruntez'**
  String get loanBorrowing;

  /// No description provided for @loanCreditWillBeCreditedIn48h.
  ///
  /// In fr, this message translates to:
  /// **'Votre crédit sera crédité sur votre compte principal dans 48h.'**
  String get loanCreditWillBeCreditedIn48h;

  /// No description provided for @loanDisplayMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vos crédits s\'afficheront ici.'**
  String get loanDisplayMessage;

  /// No description provided for @loanDisbursed.
  ///
  /// In fr, this message translates to:
  /// **'Décaissement'**
  String get loanDisbursed;

  /// No description provided for @amountWithPenalty.
  ///
  /// In fr, this message translates to:
  /// **'(incluant {amount} de pénalité)'**
  String amountWithPenalty(Object amount);

  /// No description provided for @accountAnalysis.
  ///
  /// In fr, this message translates to:
  /// **'Analyse de votre compte'**
  String get accountAnalysis;

  /// No description provided for @loanApproval.
  ///
  /// In fr, this message translates to:
  /// **'Approbation du crédit'**
  String get loanApproval;

  /// No description provided for @loanDisbursementMessage.
  ///
  /// In fr, this message translates to:
  /// **'Décaissement du crédit'**
  String get loanDisbursementMessage;

  /// No description provided for @loanCreditWillBeCreditedSoon.
  ///
  /// In fr, this message translates to:
  /// **'Votre crédit sera crédité sur votre compte principal dans quelques instants.'**
  String get loanCreditWillBeCreditedSoon;

  /// No description provided for @loansImproveEligibility.
  ///
  /// In fr, this message translates to:
  /// **'Améliorer mon éligibilité'**
  String get loansImproveEligibility;

  /// No description provided for @moreThanMillionCFA.
  ///
  /// In fr, this message translates to:
  /// **'plus de 1.000.000 F CFA'**
  String get moreThanMillionCFA;

  /// No description provided for @late.
  ///
  /// In fr, this message translates to:
  /// **'En retard'**
  String get late;

  /// No description provided for @pending.
  ///
  /// In fr, this message translates to:
  /// **'En attente'**
  String get pending;

  /// No description provided for @loading.
  ///
  /// In fr, this message translates to:
  /// **'En cours'**
  String get loading;

  /// No description provided for @refunded.
  ///
  /// In fr, this message translates to:
  /// **'Remboursement'**
  String get refunded;

  /// No description provided for @reload.
  ///
  /// In fr, this message translates to:
  /// **'Rechargement'**
  String get reload;

  /// No description provided for @referralMyCode.
  ///
  /// In fr, this message translates to:
  /// **'Mon code de parrainage'**
  String get referralMyCode;

  /// No description provided for @referralInviteFriend.
  ///
  /// In fr, this message translates to:
  /// **'Inviter un.e ami.e'**
  String get referralInviteFriend;

  /// No description provided for @referralAdvantagesTitle.
  ///
  /// In fr, this message translates to:
  /// **'{amount} 🎉'**
  String referralAdvantagesTitle(Object amount);

  /// No description provided for @referralAdvantagesDescription.
  ///
  /// In fr, this message translates to:
  /// **'Pour obtenir votre bonus, vous et votre ami.e devez avoir une carte physique Djamo, et il.elle doit effectuer un paiement d\'au moins 5.000 F.'**
  String get referralAdvantagesDescription;

  /// No description provided for @referralWinUpTo.
  ///
  /// In fr, this message translates to:
  /// **'Gagnez jusqu’à {amount} en 3 étapes!'**
  String referralWinUpTo(Object amount);

  /// No description provided for @referralReceiveGainAfterFirstGoldChildPayment.
  ///
  /// In fr, this message translates to:
  /// **'1️⃣ Ayez une carte physique Djamo.\n2️⃣ Votre ami.e doit aussi avoir une carte physique Djamo.\n3️⃣ Il.elle effectue un paiement d’au moins 5.000 F avec Djamo.'**
  String get referralReceiveGainAfterFirstGoldChildPayment;

  /// No description provided for @referralPotentialBonus.
  ///
  /// In fr, this message translates to:
  /// **'Bonus potentiel'**
  String get referralPotentialBonus;

  /// No description provided for @referralActivatedBonus.
  ///
  /// In fr, this message translates to:
  /// **'Bonus activé'**
  String get referralActivatedBonus;

  /// No description provided for @referralSeeBonusDetail.
  ///
  /// In fr, this message translates to:
  /// **'Voir les détails de mes bonus'**
  String get referralSeeBonusDetail;

  /// No description provided for @referralInviteFriendAndWin.
  ///
  /// In fr, this message translates to:
  /// **'Invitez vos ami(e)s et gagnez'**
  String get referralInviteFriendAndWin;

  /// No description provided for @referralInvitedFriendsCount.
  ///
  /// In fr, this message translates to:
  /// **'Amis invités ({count})'**
  String referralInvitedFriendsCount(Object count);

  /// No description provided for @referralDefaultShareTitle.
  ///
  /// In fr, this message translates to:
  /// **'Partager mon code de parrainage Djamo'**
  String get referralDefaultShareTitle;

  /// No description provided for @referralDefaultShareMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous connaissez Djamo ? Je t\'ai choisi pour être l\'un des premiers à recevoir ta carte Visa.\nInscris-toi avec mon code {code}. Cliquez sur ce lien pour télécharger l\'application'**
  String referralDefaultShareMessage(Object code);

  /// No description provided for @statisticsTotalExpenses.
  ///
  /// In fr, this message translates to:
  /// **'Total des dépenses'**
  String get statisticsTotalExpenses;

  /// No description provided for @beneficiariesContactPermission.
  ///
  /// In fr, this message translates to:
  /// **'Accès aux contacts'**
  String get beneficiariesContactPermission;

  /// No description provided for @beneficiariesGiveContactPermission.
  ///
  /// In fr, this message translates to:
  /// **'Nous avons besoin de votre permission pour accéder à vos contacts'**
  String get beneficiariesGiveContactPermission;

  /// No description provided for @beneficiariesMyContacts.
  ///
  /// In fr, this message translates to:
  /// **'Mes contacts'**
  String get beneficiariesMyContacts;

  /// No description provided for @beneficiariesRecent.
  ///
  /// In fr, this message translates to:
  /// **'Récents'**
  String get beneficiariesRecent;

  /// No description provided for @deposit.
  ///
  /// In fr, this message translates to:
  /// **'Déposer'**
  String get deposit;

  /// No description provided for @depositNoun.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt'**
  String get depositNoun;

  /// No description provided for @paymentVariation.
  ///
  /// In fr, this message translates to:
  /// **'Les dates et les montants des paiements peuvent varier en fonction du mois et du marchand.'**
  String get paymentVariation;

  /// No description provided for @paymentDelayed.
  ///
  /// In fr, this message translates to:
  /// **'Paiement {merchantName} en retard'**
  String paymentDelayed(Object merchantName);

  /// No description provided for @paymentUpcoming.
  ///
  /// In fr, this message translates to:
  /// **'Paiement {merchantName} à venir'**
  String paymentUpcoming(Object merchantName);

  /// No description provided for @dueDateComingSoon.
  ///
  /// In fr, this message translates to:
  /// **'à venir dans {days} jour'**
  String dueDateComingSoon(Object days);

  /// No description provided for @dueDateToday.
  ///
  /// In fr, this message translates to:
  /// **'à venir aujourd\'hui'**
  String get dueDateToday;

  /// No description provided for @dueDateDue.
  ///
  /// In fr, this message translates to:
  /// **'dû le {date}'**
  String dueDateDue(Object date);

  /// No description provided for @dueDateComing.
  ///
  /// In fr, this message translates to:
  /// **'à venir le {date}'**
  String dueDateComing(Object date);

  /// No description provided for @yourAccountIsPending.
  ///
  /// In fr, this message translates to:
  /// **'Votre compte en attente'**
  String get yourAccountIsPending;

  /// No description provided for @amountWillBeCredited.
  ///
  /// In fr, this message translates to:
  /// **'{amount} seront crédités prochainement sur votre compte principal.'**
  String amountWillBeCredited(Object amount);

  /// No description provided for @cardsNoun.
  ///
  /// In fr, this message translates to:
  /// **'Carte'**
  String get cardsNoun;

  /// No description provided for @cardsSeeDetails.
  ///
  /// In fr, this message translates to:
  /// **'Voir les informations'**
  String get cardsSeeDetails;

  /// No description provided for @cardsLockCard.
  ///
  /// In fr, this message translates to:
  /// **'Verrouiller'**
  String get cardsLockCard;

  /// No description provided for @cardDestroyedAt.
  ///
  /// In fr, this message translates to:
  /// **'Carte détruite le {date}'**
  String cardDestroyedAt(Object date);

  /// No description provided for @cardsLockCardDescription.
  ///
  /// In fr, this message translates to:
  /// **'Bloquez de facon temporaire'**
  String get cardsLockCardDescription;

  /// No description provided for @cardsLockOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte est en cours de verrouillage...'**
  String get cardsLockOnGoing;

  /// No description provided for @cardsUnlockCard.
  ///
  /// In fr, this message translates to:
  /// **'Déverrouiller'**
  String get cardsUnlockCard;

  /// No description provided for @cardsUnlockCardDescription.
  ///
  /// In fr, this message translates to:
  /// **'Débloquez votre carte Djamo'**
  String get cardsUnlockCardDescription;

  /// No description provided for @cardsUnlockOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte est en cours de déverrouillage...'**
  String get cardsUnlockOnGoing;

  /// No description provided for @cardsManageYourSubscriptions.
  ///
  /// In fr, this message translates to:
  /// **'Gérer vos abonnements'**
  String get cardsManageYourSubscriptions;

  /// No description provided for @cardsCurrentSubscriptionsCount.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{Aucun abonnement} =1{1 abonnement identifié} other{{count} abonnements identifiés}}'**
  String cardsCurrentSubscriptionsCount(num count);

  /// No description provided for @cardsReplaceCard.
  ///
  /// In fr, this message translates to:
  /// **'Remplacer la carte'**
  String get cardsReplaceCard;

  /// No description provided for @cardsReplaceCardDescription.
  ///
  /// In fr, this message translates to:
  /// **'Remplacez votre carte Djamo'**
  String get cardsReplaceCardDescription;

  /// No description provided for @cardsSeeMyOrders.
  ///
  /// In fr, this message translates to:
  /// **'Voir mes commandes'**
  String get cardsSeeMyOrders;

  /// No description provided for @cardsSeeMyOrdersDescription.
  ///
  /// In fr, this message translates to:
  /// **'Suivez le statut de vos commandes'**
  String get cardsSeeMyOrdersDescription;

  /// No description provided for @cardsChangeCardPin.
  ///
  /// In fr, this message translates to:
  /// **'Changer le code guichet'**
  String get cardsChangeCardPin;

  /// No description provided for @cardDestroyedNSFTitle.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte a été supprimée'**
  String get cardDestroyedNSFTitle;

  /// No description provided for @cardDestroyedNSFPhysicalContent.
  ///
  /// In fr, this message translates to:
  /// **'La raison: {nsfCount} échecs de paiement successifs. Commandez une nouvelle ici.'**
  String cardDestroyedNSFPhysicalContent(Object nsfCount);

  /// No description provided for @cardDestroyedNSFVirtualContent.
  ///
  /// In fr, this message translates to:
  /// **'La raison: {nsfCount} échecs de paiement successifs. Activez une carte virtuelle ici.'**
  String cardDestroyedNSFVirtualContent(Object nsfCount);

  /// No description provided for @cardDestroyedRecreatedTitle.
  ///
  /// In fr, this message translates to:
  /// **'Nouvelle carte créée'**
  String get cardDestroyedRecreatedTitle;

  /// No description provided for @cardDestroyedRecreatedContent.
  ///
  /// In fr, this message translates to:
  /// **'Votre ancienne carte virtuelle Djamo a été supprimée. Votre nouvelle carte est disponible ici.'**
  String get cardDestroyedRecreatedContent;

  /// No description provided for @monthly.
  ///
  /// In fr, this message translates to:
  /// **'Chaque mois'**
  String get monthly;

  /// No description provided for @annually.
  ///
  /// In fr, this message translates to:
  /// **'Chaque année'**
  String get annually;

  /// No description provided for @weekly.
  ///
  /// In fr, this message translates to:
  /// **'Chaque semaine'**
  String get weekly;

  /// No description provided for @quarterly.
  ///
  /// In fr, this message translates to:
  /// **'Chaque trimestre'**
  String get quarterly;

  /// No description provided for @semestral.
  ///
  /// In fr, this message translates to:
  /// **'Chaque semestre'**
  String get semestral;

  /// No description provided for @chooseFrequency.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez la fréquence'**
  String get chooseFrequency;

  /// No description provided for @selectFrequencyDescription.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez sélectionner la fréquence de cet abonnement'**
  String get selectFrequencyDescription;

  /// No description provided for @stepProgress.
  ///
  /// In fr, this message translates to:
  /// **'Étape {currentIndex} sur {totalSteps}'**
  String stepProgress(Object currentIndex, Object totalSteps);

  /// No description provided for @myPayments.
  ///
  /// In fr, this message translates to:
  /// **'Mes paiements'**
  String get myPayments;

  /// No description provided for @selectPaymentForSubscription.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez un paiement qui correspond à un abonnement'**
  String get selectPaymentForSubscription;

  /// No description provided for @subscriptionRemoved.
  ///
  /// In fr, this message translates to:
  /// **'Cet abonnement a été retiré de votre liste. Vous ne recevrez plus de rappel de paiement à venir.'**
  String get subscriptionRemoved;

  /// No description provided for @subscriptionAdded.
  ///
  /// In fr, this message translates to:
  /// **'Succès. Votre abonnement a bien été ajouté.'**
  String get subscriptionAdded;

  /// No description provided for @active.
  ///
  /// In fr, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @blocked.
  ///
  /// In fr, this message translates to:
  /// **'Bloqué'**
  String get blocked;

  /// No description provided for @lastTransaction.
  ///
  /// In fr, this message translates to:
  /// **'Dernière transaction'**
  String get lastTransaction;

  /// No description provided for @subscriptionDate.
  ///
  /// In fr, this message translates to:
  /// **'Date d’abonnement'**
  String get subscriptionDate;

  /// No description provided for @blockFuturePayments.
  ///
  /// In fr, this message translates to:
  /// **'Bloquer les futurs paiements'**
  String get blockFuturePayments;

  /// No description provided for @cancelSubscription.
  ///
  /// In fr, this message translates to:
  /// **'Annuler cet abonnement'**
  String get cancelSubscription;

  /// No description provided for @subscriptionAmountAndDate.
  ///
  /// In fr, this message translates to:
  /// **'{amount}, le {date}'**
  String subscriptionAmountAndDate(Object amount, Object date);

  /// No description provided for @subscriptionRemoveBlock.
  ///
  /// In fr, this message translates to:
  /// **'Retirer le blocage'**
  String get subscriptionRemoveBlock;

  /// No description provided for @subscriptionRemoveReminder.
  ///
  /// In fr, this message translates to:
  /// **'Retirer le rappel'**
  String get subscriptionRemoveReminder;

  /// No description provided for @subscriptionConfirmBlocking.
  ///
  /// In fr, this message translates to:
  /// **'Confirmer le blocage'**
  String get subscriptionConfirmBlocking;

  /// No description provided for @subscriptionPaymentBlockDescription.
  ///
  /// In fr, this message translates to:
  /// **'Bloque les futurs paiements de cet abonnement'**
  String get subscriptionPaymentBlockDescription;

  /// No description provided for @subscriptionMerchantBlockedSuccessfully.
  ///
  /// In fr, this message translates to:
  /// **'Les futurs paiements de votre abonnement {merchant} sont dorénavant bloqués.'**
  String subscriptionMerchantBlockedSuccessfully(Object merchant);

  /// No description provided for @subscriptionCancelBlockDescription.
  ///
  /// In fr, this message translates to:
  /// **'N\'annule pas votre abonnement '**
  String get subscriptionCancelBlockDescription;

  /// No description provided for @subscriptionPaymentDueDescription.
  ///
  /// In fr, this message translates to:
  /// **'Ne vous dispense pas des paiements dus auprès de {merchant}'**
  String subscriptionPaymentDueDescription(Object merchant);

  /// No description provided for @subscriptionBlockedSince.
  ///
  /// In fr, this message translates to:
  /// **'Les paiements de cet abonnement sont bloqués depuis le {date}.'**
  String subscriptionBlockedSince(Object date);

  /// No description provided for @subscriptionRemoveBlockDescription.
  ///
  /// In fr, this message translates to:
  /// **'En retirant le blocage :'**
  String get subscriptionRemoveBlockDescription;

  /// No description provided for @subscriptionArrearsImmediateDeduction.
  ///
  /// In fr, this message translates to:
  /// **'Des arriérés de paiement peuvent être prélevés immédiatement'**
  String get subscriptionArrearsImmediateDeduction;

  /// No description provided for @subscriptionUnblockedMessage.
  ///
  /// In fr, this message translates to:
  /// **'Blocage retiré.\nProchain paiement {merchant} prévu vers le {date}'**
  String subscriptionUnblockedMessage(Object date, Object merchant);

  /// No description provided for @upcomingPaymentReminderSpecific.
  ///
  /// In fr, this message translates to:
  /// **'Prochain prélèvement d\'environ {amount}, prévu vers le {date}'**
  String upcomingPaymentReminderSpecific(Object amount, Object date);

  /// No description provided for @subscriptionMerchantBlocked.
  ///
  /// In fr, this message translates to:
  /// **'Futurs paiements {merchant} ❌'**
  String subscriptionMerchantBlocked(Object merchant);

  /// No description provided for @depositAtLeastAmountToUnlockFuturePayment.
  ///
  /// In fr, this message translates to:
  /// **'Effectuez un dépôt d\'au moins {amount} pour débloquer le paiement futur'**
  String depositAtLeastAmountToUnlockFuturePayment(Object amount);

  /// No description provided for @thankYou.
  ///
  /// In fr, this message translates to:
  /// **'Merci!'**
  String get thankYou;

  /// No description provided for @searchBeneficiary.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un bénéficiaire'**
  String get searchBeneficiary;

  /// No description provided for @addBeneficiary.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter un bénéficiaire'**
  String get addBeneficiary;

  /// No description provided for @beneficiary.
  ///
  /// In fr, this message translates to:
  /// **'Bénéficiaire'**
  String get beneficiary;

  /// No description provided for @noBeneficiariesAdded.
  ///
  /// In fr, this message translates to:
  /// **'Rajouter un bénéficiaire'**
  String get noBeneficiariesAdded;

  /// No description provided for @allYourBeneficiariesWillAppearHere.
  ///
  /// In fr, this message translates to:
  /// **'Tous vos bénéficiaires apparaîtront ici'**
  String get allYourBeneficiariesWillAppearHere;

  /// No description provided for @accountHolder.
  ///
  /// In fr, this message translates to:
  /// **'Titulaire du compte'**
  String get accountHolder;

  /// No description provided for @enterBeneficiaryDetails.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez entrer le nom et les prénoms du bénéficiaire tels qu\'ils sont enregistrés sur son compte bancaire'**
  String get enterBeneficiaryDetails;

  /// No description provided for @modifyBeneficiary.
  ///
  /// In fr, this message translates to:
  /// **'Modifier un bénéficiaire'**
  String get modifyBeneficiary;

  /// No description provided for @fieldRequiredErrMessage.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez renseigner une valeur'**
  String get fieldRequiredErrMessage;

  /// No description provided for @phoneNumberInvalidErrMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ce numéro de téléphone est invalide'**
  String get phoneNumberInvalidErrMessage;

  /// No description provided for @phoneNumberPrefixNotPresentErrMessage.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez préciser le préfixe. Exemple : +{callingCode}'**
  String phoneNumberPrefixNotPresentErrMessage(Object callingCode);

  /// No description provided for @ibanCodeInvalid.
  ///
  /// In fr, this message translates to:
  /// **'Le code banque est invalide'**
  String get ibanCodeInvalid;

  /// No description provided for @numberIbanCodeCaracterInvalid.
  ///
  /// In fr, this message translates to:
  /// **'24 caractères requis'**
  String get numberIbanCodeCaracterInvalid;

  /// No description provided for @unknownBanque.
  ///
  /// In fr, this message translates to:
  /// **'Banque inconnue'**
  String get unknownBanque;

  /// No description provided for @transferByMobileMoney.
  ///
  /// In fr, this message translates to:
  /// **'Par Mobile Money'**
  String get transferByMobileMoney;

  /// No description provided for @transferByCash.
  ///
  /// In fr, this message translates to:
  /// **'En espèces'**
  String get transferByCash;

  /// No description provided for @transferByBankAccount.
  ///
  /// In fr, this message translates to:
  /// **'Depuis mon compte bancaire'**
  String get transferByBankAccount;

  /// No description provided for @transferFromAbroad.
  ///
  /// In fr, this message translates to:
  /// **'Depuis l’étranger'**
  String get transferFromAbroad;

  /// No description provided for @bankTransferSuccessMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous recevrez le transfert bancaire sur votre compte dans un délai de 2 jours ouvrés.'**
  String get bankTransferSuccessMessage;

  /// No description provided for @salary.
  ///
  /// In fr, this message translates to:
  /// **'Salaire'**
  String get salary;

  /// No description provided for @update.
  ///
  /// In fr, this message translates to:
  /// **'Modifier'**
  String get update;

  /// No description provided for @deleteBeneficiary.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer le bénéficiaire'**
  String get deleteBeneficiary;

  /// No description provided for @updateBeneficiary.
  ///
  /// In fr, this message translates to:
  /// **'Modifier le bénéficiaire'**
  String get updateBeneficiary;

  /// No description provided for @transferIbanNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro IBAN'**
  String get transferIbanNumber;

  /// No description provided for @airtimeSelectOperator.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez l\'opérateur'**
  String get airtimeSelectOperator;

  /// No description provided for @airtimeSelectBeneficiary.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez le bénéficiaire'**
  String get airtimeSelectBeneficiary;

  /// No description provided for @airtimeBuySuccessMessage.
  ///
  /// In fr, this message translates to:
  /// **'Achat de crédit effectué'**
  String get airtimeBuySuccessMessage;

  /// No description provided for @airtimeBuySuccessWarningMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte SIM sera rechargée dans moins de 5 minutes'**
  String get airtimeBuySuccessWarningMessage;

  /// No description provided for @airtimeWarningMessageForWrongPhoneNumber.
  ///
  /// In fr, this message translates to:
  /// **'Attention! En cas d\'erreur vous ne pourrez pas récupérer l\'argent.'**
  String get airtimeWarningMessageForWrongPhoneNumber;

  /// No description provided for @supportClient.
  ///
  /// In fr, this message translates to:
  /// **'Service Client'**
  String get supportClient;

  /// No description provided for @supportContactUs.
  ///
  /// In fr, this message translates to:
  /// **'Contactez-nous'**
  String get supportContactUs;

  /// No description provided for @supportCallClientService.
  ///
  /// In fr, this message translates to:
  /// **'Appelez le service client'**
  String get supportCallClientService;

  /// No description provided for @supportChatWithUs.
  ///
  /// In fr, this message translates to:
  /// **'Chatter avec le support'**
  String get supportChatWithUs;

  /// No description provided for @supportPhoneCopied.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de téléphone copié ✅'**
  String get supportPhoneCopied;

  /// No description provided for @supportDefaultCallCenterAvailabilityMessage.
  ///
  /// In fr, this message translates to:
  /// **'8h à 20h'**
  String get supportDefaultCallCenterAvailabilityMessage;

  /// No description provided for @supportDefaultChatSupportAvailabilityMessage.
  ///
  /// In fr, this message translates to:
  /// **'8h à 20h - Réponse en moins de 5 minutes'**
  String get supportDefaultChatSupportAvailabilityMessage;

  /// No description provided for @supportSearchAnswers.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher des reponses...'**
  String get supportSearchAnswers;

  /// No description provided for @supportFrequentlyAskedQuestions.
  ///
  /// In fr, this message translates to:
  /// **'Questions fréquentes'**
  String get supportFrequentlyAskedQuestions;

  /// No description provided for @seeAll.
  ///
  /// In fr, this message translates to:
  /// **'Voir tout'**
  String get seeAll;

  /// No description provided for @selectCategory.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez une catégorie'**
  String get selectCategory;

  /// No description provided for @supportNeedHelp.
  ///
  /// In fr, this message translates to:
  /// **'Besoin d’aide?'**
  String get supportNeedHelp;

  /// No description provided for @emptySearchArticle.
  ///
  /// In fr, this message translates to:
  /// **'Aucun résultat n\'a été trouvé pour votre recherche. Veuillez essayer un autre mot-clé.'**
  String get emptySearchArticle;

  /// No description provided for @avoid_fees_by_upgrading.
  ///
  /// In fr, this message translates to:
  /// **'Évitez les frais en devenant premium'**
  String get avoid_fees_by_upgrading;

  /// No description provided for @becomePremium.
  ///
  /// In fr, this message translates to:
  /// **'Passer au plan Prémium'**
  String get becomePremium;

  /// No description provided for @all_free_plus_benefits.
  ///
  /// In fr, this message translates to:
  /// **'Tous les avantages {message}'**
  String all_free_plus_benefits(Object message);

  /// No description provided for @available_for_free.
  ///
  /// In fr, this message translates to:
  /// **'Gratuit'**
  String get available_for_free;

  /// No description provided for @plusAmountFees.
  ///
  /// In fr, this message translates to:
  /// **'{amount} de Frais'**
  String plusAmountFees(Object amount);

  /// No description provided for @confirmation_subscription_message.
  ///
  /// In fr, this message translates to:
  /// **'En confirmant, vous acceptez d\'être facturé {price}/mois après votre mois premium gratuit'**
  String confirmation_subscription_message(Object price);

  /// No description provided for @month.
  ///
  /// In fr, this message translates to:
  /// **'mois'**
  String get month;

  /// No description provided for @monthCount.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, other{{count} mois}}'**
  String monthCount(num count);

  /// No description provided for @yearAbbrCount.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{} =1{1 an} other{{count} ans}}'**
  String yearAbbrCount(num count);

  /// No description provided for @all_inclusive.
  ///
  /// In fr, this message translates to:
  /// **'Tout inclus'**
  String get all_inclusive;

  /// No description provided for @budgetManageMyBudgets.
  ///
  /// In fr, this message translates to:
  /// **'Gérer mes budgets'**
  String get budgetManageMyBudgets;

  /// No description provided for @budgetDefineAmount.
  ///
  /// In fr, this message translates to:
  /// **'Définissez le montant du budget'**
  String get budgetDefineAmount;

  /// No description provided for @budgetDefineAmountDescription.
  ///
  /// In fr, this message translates to:
  /// **'Fixez le montant que vous souhaitez ne pas dépasser'**
  String get budgetDefineAmountDescription;

  /// No description provided for @budgetModifyMyBudget.
  ///
  /// In fr, this message translates to:
  /// **'Modifier mon budget'**
  String get budgetModifyMyBudget;

  /// No description provided for @budgetDefineMyBudget.
  ///
  /// In fr, this message translates to:
  /// **'Définir mon budget'**
  String get budgetDefineMyBudget;

  /// No description provided for @noTransactionsInCategory.
  ///
  /// In fr, this message translates to:
  /// **'Vous n’avez aucune transaction dans cette catégorie. Faites vos dépenses avec Djamo pour mieux suivre vos finances.'**
  String get noTransactionsInCategory;

  /// No description provided for @marketPOS.
  ///
  /// In fr, this message translates to:
  /// **'Points relais Djamo'**
  String get marketPOS;

  /// No description provided for @marketSeePOSForDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Voir les points de dépôt'**
  String get marketSeePOSForDeposit;

  /// No description provided for @marketPOSMakeDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Faire un dépôt'**
  String get marketPOSMakeDeposit;

  /// No description provided for @marketPOSPickup.
  ///
  /// In fr, this message translates to:
  /// **'Récupérer ma carte'**
  String get marketPOSPickup;

  /// No description provided for @marketNoDepositPOS.
  ///
  /// In fr, this message translates to:
  /// **'Pas de point de dépôt dans vos environs'**
  String get marketNoDepositPOS;

  /// No description provided for @marketNoPickupPOS.
  ///
  /// In fr, this message translates to:
  /// **'Pas de point de récupération de carte dans vos environs'**
  String get marketNoPickupPOS;

  /// No description provided for @marketNoPOSNearbyMessage.
  ///
  /// In fr, this message translates to:
  /// **'Pensez à vous déplacer vers une zone plus fréquentée (ex.: vers un supermarché ou un restaurant)'**
  String get marketNoPOSNearbyMessage;

  /// No description provided for @marketEnableLocationServicesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Services de localisation'**
  String get marketEnableLocationServicesTitle;

  /// No description provided for @marketEnableLocationServicesDescription.
  ///
  /// In fr, this message translates to:
  /// **'Activez les services de localisation pour trouver les points de vente à proximité.'**
  String get marketEnableLocationServicesDescription;

  /// No description provided for @marketGrantLocationPermissionTitle.
  ///
  /// In fr, this message translates to:
  /// **'Accès à la localisation'**
  String get marketGrantLocationPermissionTitle;

  /// No description provided for @marketGrantLocationPermissionDescription.
  ///
  /// In fr, this message translates to:
  /// **'Nous avons besoin de votre localisation pour afficher les points relais Djamo à proximité. Veuillez accorder l\'autorisation.'**
  String get marketGrantLocationPermissionDescription;

  /// No description provided for @marketEnableLocationServices.
  ///
  /// In fr, this message translates to:
  /// **'Activer la localisation'**
  String get marketEnableLocationServices;

  /// No description provided for @marketSearchingPOS.
  ///
  /// In fr, this message translates to:
  /// **'Recherche des points relais à proximité...'**
  String get marketSearchingPOS;

  /// No description provided for @marketCallPOS.
  ///
  /// In fr, this message translates to:
  /// **'Appeler le gérant'**
  String get marketCallPOS;

  /// No description provided for @marketLocalizePOS.
  ///
  /// In fr, this message translates to:
  /// **'Localiser le point relais'**
  String get marketLocalizePOS;

  /// No description provided for @marketCitySelectionTitle.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez votre ville'**
  String get marketCitySelectionTitle;

  /// No description provided for @marketCityAreaSelectionTitle.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez une zone'**
  String get marketCityAreaSelectionTitle;

  /// No description provided for @marketSearchCity.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher une ville'**
  String get marketSearchCity;

  /// No description provided for @marketSearchCityLocation.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher la zone...'**
  String get marketSearchCityLocation;

  /// No description provided for @billsBuyBill.
  ///
  /// In fr, this message translates to:
  /// **'Payer une facture'**
  String get billsBuyBill;

  /// No description provided for @purchaseSimulator.
  ///
  /// In fr, this message translates to:
  /// **'Simulateur d’achat'**
  String get purchaseSimulator;

  /// No description provided for @billsAccount.
  ///
  /// In fr, this message translates to:
  /// **'Compte'**
  String get billsAccount;

  /// No description provided for @billsAccountLabel.
  ///
  /// In fr, this message translates to:
  /// **'Libellé'**
  String get billsAccountLabel;

  /// No description provided for @billsReferenceAccount.
  ///
  /// In fr, this message translates to:
  /// **'Référence'**
  String get billsReferenceAccount;

  /// No description provided for @billsReferenceAccountLabel.
  ///
  /// In fr, this message translates to:
  /// **'Libellé du compte'**
  String get billsReferenceAccountLabel;

  /// No description provided for @billsReferenceAccountLabelDescription.
  ///
  /// In fr, this message translates to:
  /// **'Votre {labelTypeName} sera associé à ce libellé. Vous pourrez toujours le modifier plus tard.'**
  String billsReferenceAccountLabelDescription(Object labelTypeName);

  /// No description provided for @billsReferenceAccountHomeLabelSuggestions.
  ///
  /// In fr, this message translates to:
  /// **'Maison|Parents|Soeur|Frère|Nièce|Autre'**
  String get billsReferenceAccountHomeLabelSuggestions;

  /// No description provided for @billsReferenceAccountCarLabelSuggestions.
  ///
  /// In fr, this message translates to:
  /// **'Véhicule principal|Véhicule secondaire|Autre'**
  String get billsReferenceAccountCarLabelSuggestions;

  /// No description provided for @billsReferenceAccountOwnerName.
  ///
  /// In fr, this message translates to:
  /// **'Nom du client'**
  String get billsReferenceAccountOwnerName;

  /// No description provided for @billsReferenceAccountCurrentBalance.
  ///
  /// In fr, this message translates to:
  /// **'Solde: {balance}'**
  String billsReferenceAccountCurrentBalance(Object balance);

  /// No description provided for @billsReferenceAccountArrears.
  ///
  /// In fr, this message translates to:
  /// **'Solde arriéré: {arrears}'**
  String billsReferenceAccountArrears(Object arrears);

  /// No description provided for @selectAnAccount.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez un compte'**
  String get selectAnAccount;

  /// No description provided for @addAccount.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter un compte'**
  String get addAccount;

  /// No description provided for @addTheAccount.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter le compte'**
  String get addTheAccount;

  /// No description provided for @validationFieldRequired.
  ///
  /// In fr, this message translates to:
  /// **'Ce champ est requis'**
  String get validationFieldRequired;

  /// No description provided for @validationSpecialCharacterNotAllowed.
  ///
  /// In fr, this message translates to:
  /// **'Les caractères spéciaux ne sont pas autorisés. Utilisez uniquement des lettres.'**
  String get validationSpecialCharacterNotAllowed;

  /// No description provided for @ratesWithInternationalFees.
  ///
  /// In fr, this message translates to:
  /// **'Taux avec frais au {date}'**
  String ratesWithInternationalFees(Object date);

  /// No description provided for @estimation.
  ///
  /// In fr, this message translates to:
  /// **'Estimation'**
  String get estimation;

  /// No description provided for @currencyConverterFeesExplanation.
  ///
  /// In fr, this message translates to:
  /// **'👉🏿 Ce simulateur estime le coût total de votre achat, incluant les frais de change de Djamo et ses banques partenaires.'**
  String get currencyConverterFeesExplanation;

  /// No description provided for @currencyConverterDeviseExplanation.
  ///
  /// In fr, this message translates to:
  /// **'👉🏿 Optez pour la devise locale du marchand (ex.: France-EUR, Canada-CAD) pour éviter des frais supplémentaires.'**
  String get currencyConverterDeviseExplanation;

  /// No description provided for @searchCountryCurrency.
  ///
  /// In fr, this message translates to:
  /// **'Chercher le pays ou la monnaie'**
  String get searchCountryCurrency;

  /// No description provided for @transactionFeesInternational.
  ///
  /// In fr, this message translates to:
  /// **'Frais de transaction internationale'**
  String get transactionFeesInternational;

  /// No description provided for @messagingMyNotifications.
  ///
  /// In fr, this message translates to:
  /// **'Mes notifications'**
  String get messagingMyNotifications;

  /// No description provided for @messagingNoNotification.
  ///
  /// In fr, this message translates to:
  /// **'Aucune notification'**
  String get messagingNoNotification;

  /// No description provided for @messagingNoNotificationDescription.
  ///
  /// In fr, this message translates to:
  /// **'Vous n\'avez pas de notification pour le moment'**
  String get messagingNoNotificationDescription;

  /// No description provided for @cardOwner.
  ///
  /// In fr, this message translates to:
  /// **'Titulaire de la carte'**
  String get cardOwner;

  /// No description provided for @cardNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de carte'**
  String get cardNumber;

  /// No description provided for @cardNumberCopied.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de carte copié avec succès'**
  String get cardNumberCopied;

  /// No description provided for @expirationDate.
  ///
  /// In fr, this message translates to:
  /// **'Date d\'expiration'**
  String get expirationDate;

  /// No description provided for @minimumBalanceToViewCard.
  ///
  /// In fr, this message translates to:
  /// **'Solde minimum de {minimumBalance}'**
  String minimumBalanceToViewCard(Object minimumBalance);

  /// No description provided for @minimumBalanceToViewCardDescription.
  ///
  /// In fr, this message translates to:
  /// **'Vous devez avoir un solde d\'au moins {minimumBalance} pour afficher les détails de votre carte'**
  String minimumBalanceToViewCardDescription(Object minimumBalance);

  /// No description provided for @submitKycBeforeShowPAN.
  ///
  /// In fr, this message translates to:
  /// **'Pour des raisons de réglementation, veuillez soumettre votre identification afin d’afficher les informations de votre carte.'**
  String get submitKycBeforeShowPAN;

  /// No description provided for @noGifsFound.
  ///
  /// In fr, this message translates to:
  /// **'Aucun GIF trouvé'**
  String get noGifsFound;

  /// No description provided for @noGifsFoundDescription.
  ///
  /// In fr, this message translates to:
  /// **'Désolé, nous n\'avons pas trouvé de GIF correspondant à votre recherche.'**
  String get noGifsFoundDescription;

  /// No description provided for @searchGif.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un GIF'**
  String get searchGif;

  /// No description provided for @noTransactionsFound.
  ///
  /// In fr, this message translates to:
  /// **'Aucune transaction trouvée'**
  String get noTransactionsFound;

  /// No description provided for @yourTransactionsWillAppearHere.
  ///
  /// In fr, this message translates to:
  /// **'Vos transactions s\'afficheront ici'**
  String get yourTransactionsWillAppearHere;

  /// No description provided for @noTransactionsFoundForPeriod.
  ///
  /// In fr, this message translates to:
  /// **'Aucune transaction trouvée pour la période sélectionnée'**
  String get noTransactionsFoundForPeriod;

  /// No description provided for @noTransactionsFoundForCategory.
  ///
  /// In fr, this message translates to:
  /// **'Aucune transaction trouvée pour la catégorie sélectionnée'**
  String get noTransactionsFoundForCategory;

  /// No description provided for @noTransactionToBeCategorized.
  ///
  /// In fr, this message translates to:
  /// **'Aucune transaction à catégoriser'**
  String get noTransactionToBeCategorized;

  /// No description provided for @noPaymentTransactionsFound.
  ///
  /// In fr, this message translates to:
  /// **'Aucune transaction de paiement trouvée'**
  String get noPaymentTransactionsFound;

  /// No description provided for @searchTransaction.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher une transaction'**
  String get searchTransaction;

  /// No description provided for @loanAmount.
  ///
  /// In fr, this message translates to:
  /// **'Montant du prêt'**
  String get loanAmount;

  /// No description provided for @receptionMode.
  ///
  /// In fr, this message translates to:
  /// **'Mode de réception'**
  String get receptionMode;

  /// No description provided for @instantReception.
  ///
  /// In fr, this message translates to:
  /// **'Réception instantanée'**
  String get instantReception;

  /// No description provided for @normalReception.
  ///
  /// In fr, this message translates to:
  /// **'Réception normale'**
  String get normalReception;

  /// No description provided for @interestEarned.
  ///
  /// In fr, this message translates to:
  /// **'Intérêts gagnés'**
  String get interestEarned;

  /// No description provided for @howToCancel.
  ///
  /// In fr, this message translates to:
  /// **'Comment annuler'**
  String get howToCancel;

  /// No description provided for @subscriptionSourceQuestion.
  ///
  /// In fr, this message translates to:
  /// **'D\'où vient cet abonnement ?'**
  String get subscriptionSourceQuestion;

  /// No description provided for @subscriptionAutomaticSourceInfo.
  ///
  /// In fr, this message translates to:
  /// **'Notre système a automatiquement identifié cet abonnement en se basant sur votre historique de transaction'**
  String get subscriptionAutomaticSourceInfo;

  /// No description provided for @removeSubscriptionIf.
  ///
  /// In fr, this message translates to:
  /// **'Retirez cet abonnement de votre liste d’abonnements si :'**
  String get removeSubscriptionIf;

  /// No description provided for @subscriptionIsNotRecurring.
  ///
  /// In fr, this message translates to:
  /// **'Il ne s’agit pas d’un abonnement récurrent'**
  String get subscriptionIsNotRecurring;

  /// No description provided for @subscriptionAlreadyCancelFromMerchant.
  ///
  /// In fr, this message translates to:
  /// **'Vous avez déjà annulé l’abonnement chez {merchantName}'**
  String subscriptionAlreadyCancelFromMerchant(Object merchantName);

  /// No description provided for @seeTransactions.
  ///
  /// In fr, this message translates to:
  /// **'Voir les transactions'**
  String get seeTransactions;

  /// No description provided for @notASubscription.
  ///
  /// In fr, this message translates to:
  /// **'Ce n’est pas un abonnement'**
  String get notASubscription;

  /// No description provided for @howToCancelSubscriptionFromMerchant.
  ///
  /// In fr, this message translates to:
  /// **'Comment annuler l’abonnement chez {merchantName}'**
  String howToCancelSubscriptionFromMerchant(Object merchantName);

  /// No description provided for @subscriptionsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Mes abonnements'**
  String get subscriptionsTitle;

  /// No description provided for @subscriptionsNothingFound.
  ///
  /// In fr, this message translates to:
  /// **'Aucun abonnement détecté'**
  String get subscriptionsNothingFound;

  /// No description provided for @subscriptionsManualAdd.
  ///
  /// In fr, this message translates to:
  /// **'Ajoutez un abonnement pour être prévenu à temps'**
  String get subscriptionsManualAdd;

  /// No description provided for @subscriptionsAutoAdd.
  ///
  /// In fr, this message translates to:
  /// **'Vos abonnements seront automatiquement ajouté ici.'**
  String get subscriptionsAutoAdd;

  /// No description provided for @subscriptionsManualAddLabel.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter un abonnement'**
  String get subscriptionsManualAddLabel;

  /// No description provided for @subscriptionFilterAll.
  ///
  /// In fr, this message translates to:
  /// **'Tous'**
  String get subscriptionFilterAll;

  /// No description provided for @subscriptionFilterActive.
  ///
  /// In fr, this message translates to:
  /// **'Actifs'**
  String get subscriptionFilterActive;

  /// No description provided for @subscriptionFilterBlocked.
  ///
  /// In fr, this message translates to:
  /// **'Bloqués'**
  String get subscriptionFilterBlocked;

  /// No description provided for @invest.
  ///
  /// In fr, this message translates to:
  /// **'Investir'**
  String get invest;

  /// No description provided for @investMyInvestmentsProducts.
  ///
  /// In fr, this message translates to:
  /// **'Mes produits d\'investissement'**
  String get investMyInvestmentsProducts;

  /// No description provided for @investGrowYourWealth.
  ///
  /// In fr, this message translates to:
  /// **'Développez votre patrimoine'**
  String get investGrowYourWealth;

  /// No description provided for @investHighYieldPotential.
  ///
  /// In fr, this message translates to:
  /// **'Potentiel de rendement élevé'**
  String get investHighYieldPotential;

  /// No description provided for @investDiversifiedPortfolio.
  ///
  /// In fr, this message translates to:
  /// **'Portefeuille diversifié avec gestion professionnelle'**
  String get investDiversifiedPortfolio;

  /// No description provided for @investYourFirstSteps.
  ///
  /// In fr, this message translates to:
  /// **'Vos premiers pas avec Djamo Invest'**
  String get investYourFirstSteps;

  /// No description provided for @investAvailableFunds.
  ///
  /// In fr, this message translates to:
  /// **'Fonds disponibles'**
  String get investAvailableFunds;

  /// No description provided for @investPerformanceObjective.
  ///
  /// In fr, this message translates to:
  /// **'Objectif de rendement'**
  String get investPerformanceObjective;

  /// No description provided for @investAnnualYieldObjective.
  ///
  /// In fr, this message translates to:
  /// **'Objectif de rendement annuel'**
  String get investAnnualYieldObjective;

  /// No description provided for @investFundDetail.
  ///
  /// In fr, this message translates to:
  /// **'Détail du fonds'**
  String get investFundDetail;

  /// No description provided for @investFundPricing.
  ///
  /// In fr, this message translates to:
  /// **'Tarification du fond'**
  String get investFundPricing;

  /// No description provided for @investFundShareValue.
  ///
  /// In fr, this message translates to:
  /// **'Valeur d’une part'**
  String get investFundShareValue;

  /// No description provided for @investAboutThisFund.
  ///
  /// In fr, this message translates to:
  /// **'A propos de ce fond'**
  String get investAboutThisFund;

  /// No description provided for @investDepositLabel.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt pour achat de {shares} parts'**
  String investDepositLabel(Object shares);

  /// No description provided for @investWithdrawalLabel.
  ///
  /// In fr, this message translates to:
  /// **'Retrait de {shares} parts'**
  String investWithdrawalLabel(Object shares);

  /// No description provided for @investTransactionServiceLabel.
  ///
  /// In fr, this message translates to:
  /// **'{type, select, subscription{d\'achat} selling{de retrait} other{}}'**
  String investTransactionServiceLabel(String type);

  /// No description provided for @investServiceUnavailable.
  ///
  /// In fr, this message translates to:
  /// **'Le service {label} est indisponible pour l\'instant. Nous vous notifierons dès disponibilité du service.'**
  String investServiceUnavailable(Object label);

  /// No description provided for @investWithdrawalInProgress.
  ///
  /// In fr, this message translates to:
  /// **'Vous avez un ordre de rachat en cours de traitement. Vous serez en mesure de présenter un nouveau retrait une fois que le précédent aura été validé.'**
  String get investWithdrawalInProgress;

  /// No description provided for @investPurchaseConfirmationMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre achat de parts sera effectif dans un délai de 24h (jour ouvré).'**
  String get investPurchaseConfirmationMessage;

  /// No description provided for @investSellConfirmationMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre ordre de retrait sera effectif dans un délai de 24h (jour ouvré).'**
  String get investSellConfirmationMessage;

  /// No description provided for @investTransactedShares.
  ///
  /// In fr, this message translates to:
  /// **'De {shares} parts'**
  String investTransactedShares(Object shares);

  /// No description provided for @investKeyInformation.
  ///
  /// In fr, this message translates to:
  /// **'Informations clés pour l’investisseur'**
  String get investKeyInformation;

  /// No description provided for @investDisableAutomaticDepositConfirmationMessage.
  ///
  /// In fr, this message translates to:
  /// **'Voulez-vous désactiver votre dépôt automatique sur {fundName} ? Ce dernier garantit un investissement qui fructifie sans effort.'**
  String investDisableAutomaticDepositConfirmationMessage(Object fundName);

  /// No description provided for @readAndApproved.
  ///
  /// In fr, this message translates to:
  /// **'Lu et approuvé'**
  String get readAndApproved;

  /// No description provided for @objectivesReached.
  ///
  /// In fr, this message translates to:
  /// **'Objectifs atteints'**
  String get objectivesReached;

  /// No description provided for @daysRemaining.
  ///
  /// In fr, this message translates to:
  /// **'Jours restants'**
  String get daysRemaining;

  /// No description provided for @depositSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt réussi'**
  String get depositSuccess;

  /// No description provided for @automaticDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt automatique'**
  String get automaticDeposit;

  /// No description provided for @quickDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt rapide'**
  String get quickDeposit;

  /// No description provided for @depositTitle.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt'**
  String get depositTitle;

  /// No description provided for @moreOptions.
  ///
  /// In fr, this message translates to:
  /// **'Plus d\'options'**
  String get moreOptions;

  /// No description provided for @newTile.
  ///
  /// In fr, this message translates to:
  /// **'Nouveau'**
  String get newTile;

  /// No description provided for @enableAutomaticDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Activer les dépôts automatiques'**
  String get enableAutomaticDeposit;

  /// No description provided for @settingsChangedSuccessfully.
  ///
  /// In fr, this message translates to:
  /// **'Paramètre(s) modifié(s) avec succès.'**
  String get settingsChangedSuccessfully;

  /// No description provided for @myQRCode.
  ///
  /// In fr, this message translates to:
  /// **'Mon QR'**
  String get myQRCode;

  /// No description provided for @scan.
  ///
  /// In fr, this message translates to:
  /// **'Scanner'**
  String get scan;

  /// No description provided for @shareMyQRCode.
  ///
  /// In fr, this message translates to:
  /// **'Partager mon code QR'**
  String get shareMyQRCode;

  /// No description provided for @shareQRCode.
  ///
  /// In fr, this message translates to:
  /// **'Partager le QR Code'**
  String get shareQRCode;

  /// No description provided for @invalidDjamoQrCodeMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ce code QR n\'est pas un code Djamo valide'**
  String get invalidDjamoQrCodeMessage;

  /// No description provided for @isNotCountryClient.
  ///
  /// In fr, this message translates to:
  /// **'Ce client n\'est pas un client Djamo'**
  String isNotCountryClient(Object country);

  /// No description provided for @sharingQRCodeFailedMessage.
  ///
  /// In fr, this message translates to:
  /// **'Échec du partage du code QR'**
  String get sharingQRCodeFailedMessage;

  /// No description provided for @useMyQRCodeDescription.
  ///
  /// In fr, this message translates to:
  /// **'Utilise mon Code QR pour me faire un dépôt chez un agent ou un transfert DJAMO'**
  String get useMyQRCodeDescription;

  /// No description provided for @scanQRToMakeTransfer.
  ///
  /// In fr, this message translates to:
  /// **'Scannez un code QR pour faire un transfert Djamo 🚀'**
  String get scanQRToMakeTransfer;

  /// No description provided for @unAllowedScanToYourSelf.
  ///
  /// In fr, this message translates to:
  /// **'Vous ne pouvez pas vous envoyer de l\'argent à vous-même. Veuillez scanner le QR code d\'un autre utilisateur.'**
  String get unAllowedScanToYourSelf;

  /// No description provided for @entryFees.
  ///
  /// In fr, this message translates to:
  /// **'Frais d\'entrée'**
  String get entryFees;

  /// No description provided for @exitFees.
  ///
  /// In fr, this message translates to:
  /// **'Frais de sortie'**
  String get exitFees;

  /// No description provided for @maxDepositByDay.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{Pas de limite de dépôt} =1{1 dépôt max/jour} other{{count} dépôts max/jour}}'**
  String maxDepositByDay(num count);

  /// No description provided for @byDay.
  ///
  /// In fr, this message translates to:
  /// **'Par jour'**
  String get byDay;

  /// No description provided for @byWeek.
  ///
  /// In fr, this message translates to:
  /// **'Par semaine'**
  String get byWeek;

  /// No description provided for @byMonth.
  ///
  /// In fr, this message translates to:
  /// **'Par mois'**
  String get byMonth;

  /// No description provided for @byYear.
  ///
  /// In fr, this message translates to:
  /// **'Par an'**
  String get byYear;

  /// No description provided for @supplyDay.
  ///
  /// In fr, this message translates to:
  /// **'Jour d\'approvisionnement'**
  String get supplyDay;

  /// No description provided for @modificationOnGoing.
  ///
  /// In fr, this message translates to:
  /// **'Modification en cours...'**
  String get modificationOnGoing;

  /// No description provided for @block.
  ///
  /// In fr, this message translates to:
  /// **'Bloquer'**
  String get block;

  /// No description provided for @untilDate.
  ///
  /// In fr, this message translates to:
  /// **'Jusqu\'au {date}'**
  String untilDate(Object date);

  /// No description provided for @later.
  ///
  /// In fr, this message translates to:
  /// **'Plus tard'**
  String get later;

  /// No description provided for @newCodeValidated.
  ///
  /// In fr, this message translates to:
  /// **'Nouveau code validé'**
  String get newCodeValidated;

  /// No description provided for @firstAndLastName.
  ///
  /// In fr, this message translates to:
  /// **'Nom et prénom'**
  String get firstAndLastName;

  /// No description provided for @allowDjamoSendNotification.
  ///
  /// In fr, this message translates to:
  /// **'Autoriser Djamo à vous envoyer des notifications'**
  String get allowDjamoSendNotification;

  /// No description provided for @start.
  ///
  /// In fr, this message translates to:
  /// **'Démarrer'**
  String get start;

  /// No description provided for @performance.
  ///
  /// In fr, this message translates to:
  /// **'Performance'**
  String get performance;

  /// No description provided for @viewDetails.
  ///
  /// In fr, this message translates to:
  /// **'Consulter les détails'**
  String get viewDetails;

  /// No description provided for @depositFrom.
  ///
  /// In fr, this message translates to:
  /// **'Dépôt à partir de {amount}'**
  String depositFrom(Object amount);

  /// No description provided for @onTheLast.
  ///
  /// In fr, this message translates to:
  /// **'Sur les {month} derniers mois'**
  String onTheLast(Object month);

  /// No description provided for @iConfirmReadAndUnderstood.
  ///
  /// In fr, this message translates to:
  /// **'Je confirme avoir lu, compris et m’engage à respecter les {doc}'**
  String iConfirmReadAndUnderstood(Object doc);

  /// No description provided for @cashback.
  ///
  /// In fr, this message translates to:
  /// **'Cashback'**
  String get cashback;

  /// No description provided for @pendingTransaction.
  ///
  /// In fr, this message translates to:
  /// **'{pendingCount, plural, =0{Aucune transaction en attente} =1{Transaction en attente} other{Transactions en attente}}'**
  String pendingTransaction(num pendingCount);

  /// No description provided for @transferInitialization.
  ///
  /// In fr, this message translates to:
  /// **'Initialisation du transfert'**
  String get transferInitialization;

  /// No description provided for @debitFromYourDjamoAccount.
  ///
  /// In fr, this message translates to:
  /// **'Débit de votre compte Djamo'**
  String get debitFromYourDjamoAccount;

  /// No description provided for @debitFromYourAccount.
  ///
  /// In fr, this message translates to:
  /// **'Débit de votre compte {accountName}'**
  String debitFromYourAccount(Object accountName);

  /// No description provided for @transferProcessingByOperator.
  ///
  /// In fr, this message translates to:
  /// **'Traitement du transfert par l\'opérateur'**
  String get transferProcessingByOperator;

  /// No description provided for @funds.
  ///
  /// In fr, this message translates to:
  /// **'Fonds'**
  String get funds;

  /// No description provided for @initializingYourTransaction.
  ///
  /// In fr, this message translates to:
  /// **'Initialisation de votre transaction'**
  String get initializingYourTransaction;

  /// No description provided for @depositConfirmationInProgress.
  ///
  /// In fr, this message translates to:
  /// **'Confirmation de votre dépôt en cours'**
  String get depositConfirmationInProgress;

  /// No description provided for @momoTransferConfirmationMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous recevrez le transfert sur votre compte mobile money d’ici quelques minutes.'**
  String get momoTransferConfirmationMessage;

  /// No description provided for @deleteAutomaticDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer le dépôt automatique'**
  String get deleteAutomaticDeposit;

  /// No description provided for @recurrence.
  ///
  /// In fr, this message translates to:
  /// **'Récurrence'**
  String get recurrence;

  /// No description provided for @leaveActivated.
  ///
  /// In fr, this message translates to:
  /// **'Laisser activé'**
  String get leaveActivated;

  /// No description provided for @pauseIt.
  ///
  /// In fr, this message translates to:
  /// **'Mettre en pause'**
  String get pauseIt;

  /// No description provided for @monthlyCeilingAt.
  ///
  /// In fr, this message translates to:
  /// **'Plafond mensuel à {amount}'**
  String monthlyCeilingAt(Object amount);

  /// No description provided for @onlineAndInStorePayment.
  ///
  /// In fr, this message translates to:
  /// **'Paiement *en ligne et en magasin*'**
  String get onlineAndInStorePayment;

  /// No description provided for @withdrawalsAtTellers.
  ///
  /// In fr, this message translates to:
  /// **'*Retraits aux guichets*'**
  String get withdrawalsAtTellers;

  /// No description provided for @freeMobileMoneyTransfers.
  ///
  /// In fr, this message translates to:
  /// **'*Transferts mobile money gratuits*'**
  String get freeMobileMoneyTransfers;

  /// No description provided for @freeRibForSalary.
  ///
  /// In fr, this message translates to:
  /// **'*RIB gratuit pour le salaire*'**
  String get freeRibForSalary;

  /// No description provided for @accessToDjamoInvest.
  ///
  /// In fr, this message translates to:
  /// **'*Accès à Djamo Invest*'**
  String get accessToDjamoInvest;

  /// No description provided for @onlinePayment.
  ///
  /// In fr, this message translates to:
  /// **'Paiement *en ligne*'**
  String get onlinePayment;

  /// No description provided for @physical.
  ///
  /// In fr, this message translates to:
  /// **'Physique'**
  String get physical;

  /// No description provided for @virtual.
  ///
  /// In fr, this message translates to:
  /// **'Virtuelle'**
  String get virtual;

  /// No description provided for @selectCard.
  ///
  /// In fr, this message translates to:
  /// **'Sélectionnez une carte'**
  String get selectCard;

  /// No description provided for @newBalance.
  ///
  /// In fr, this message translates to:
  /// **'Nouveau Solde'**
  String get newBalance;

  /// No description provided for @operator.
  ///
  /// In fr, this message translates to:
  /// **'Opérateur'**
  String get operator;

  /// No description provided for @rate.
  ///
  /// In fr, this message translates to:
  /// **'Taux'**
  String get rate;

  /// No description provided for @rateIncludingInternationalFees.
  ///
  /// In fr, this message translates to:
  /// **'Taux (incluant frais internationaux)'**
  String get rateIncludingInternationalFees;

  /// No description provided for @djamoCardMasked.
  ///
  /// In fr, this message translates to:
  /// **'Carte Djamo XXXX-{lastFourDigits}'**
  String djamoCardMasked(Object lastFourDigits);

  /// No description provided for @paidWith.
  ///
  /// In fr, this message translates to:
  /// **'Payé avec'**
  String get paidWith;

  /// No description provided for @refund.
  ///
  /// In fr, this message translates to:
  /// **'Remboursement'**
  String get refund;

  /// No description provided for @loanDisbursement.
  ///
  /// In fr, this message translates to:
  /// **'Décaissement crédit'**
  String get loanDisbursement;

  /// No description provided for @payment.
  ///
  /// In fr, this message translates to:
  /// **'Paiement'**
  String get payment;

  /// No description provided for @transactionReceipt.
  ///
  /// In fr, this message translates to:
  /// **'Reçu de transaction'**
  String get transactionReceipt;

  /// No description provided for @messagingToken.
  ///
  /// In fr, this message translates to:
  /// **'Token de messagerie'**
  String get messagingToken;

  /// No description provided for @partnershipWith.
  ///
  /// In fr, this message translates to:
  /// **'En partenariat avec'**
  String get partnershipWith;

  /// No description provided for @issueWithAccountSubscription.
  ///
  /// In fr, this message translates to:
  /// **'Problème avec l\'abonnement de votre compte, veuillez contacter le service client pour plus d\'informations.'**
  String get issueWithAccountSubscription;

  /// No description provided for @redoMyIdentification.
  ///
  /// In fr, this message translates to:
  /// **'Refaire mon identification'**
  String get redoMyIdentification;

  /// No description provided for @issueWithYourIdentification.
  ///
  /// In fr, this message translates to:
  /// **'Problème avec votre identification'**
  String get issueWithYourIdentification;

  /// No description provided for @offlineMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous êtes hors ligne. Vos données pourraient ne pas être à jour.'**
  String get offlineMessage;

  /// No description provided for @yourCardWillBeDeliveredSoon.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte vous sera bientôt livrée'**
  String get yourCardWillBeDeliveredSoon;

  /// No description provided for @expectedDeliveryDate.
  ///
  /// In fr, this message translates to:
  /// **'La date de livraison prévue est le {date}. Changez le lieu de livraison ici.'**
  String expectedDeliveryDate(Object date);

  /// No description provided for @collectYourCardNow.
  ///
  /// In fr, this message translates to:
  /// **'Récupérez votre carte maintenant'**
  String get collectYourCardNow;

  /// No description provided for @collectYourCardFromAgent.
  ///
  /// In fr, this message translates to:
  /// **'Récupérez votre carte chez un agent Djamo. Trouvez-en un proche de vous ici.'**
  String get collectYourCardFromAgent;

  /// No description provided for @deliveryFailed.
  ///
  /// In fr, this message translates to:
  /// **'Nous n’avons pas pu vous livrer 😥'**
  String get deliveryFailed;

  /// No description provided for @deliveryRescheduled.
  ///
  /// In fr, this message translates to:
  /// **'La livraison est reportée. Le service client vous contactera bientôt.'**
  String get deliveryRescheduled;

  /// No description provided for @orderBeingProcessed.
  ///
  /// In fr, this message translates to:
  /// **'Commande en cours de traitement'**
  String get orderBeingProcessed;

  /// No description provided for @pleaseWaitSupportContact.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez patienter. Le service client vous contactera bientôt.'**
  String get pleaseWaitSupportContact;

  /// No description provided for @yourCardIsReady.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte est prête 🎉'**
  String get yourCardIsReady;

  /// No description provided for @collectFromDjamoAgent.
  ///
  /// In fr, this message translates to:
  /// **'Récupérez votre carte chez un agent Djamo. Trouvez-en un proche de vous ici.'**
  String get collectFromDjamoAgent;

  /// No description provided for @preferDelivery.
  ///
  /// In fr, this message translates to:
  /// **'Vous préférez vous faire livrer ?'**
  String get preferDelivery;

  /// No description provided for @scheduleFreeDelivery.
  ///
  /// In fr, this message translates to:
  /// **'Programmez la livraison gratuite de votre carte ici.'**
  String get scheduleFreeDelivery;

  /// No description provided for @increaseYourLimit.
  ///
  /// In fr, this message translates to:
  /// **'Augmentez votre plafond à 2 millions F'**
  String get increaseYourLimit;

  /// No description provided for @verifyIdentityToIncreaseLimit.
  ///
  /// In fr, this message translates to:
  /// **'Faites votre identification pour augmenter votre plafond maintenant.'**
  String get verifyIdentityToIncreaseLimit;

  /// No description provided for @orderPhysicalCard.
  ///
  /// In fr, this message translates to:
  /// **'Commandez votre carte physique'**
  String get orderPhysicalCard;

  /// No description provided for @physicalCardBenefits.
  ///
  /// In fr, this message translates to:
  /// **'Faites des transactions jusqu’à 10 millions F par mois avec votre carte physique.'**
  String get physicalCardBenefits;

  /// No description provided for @verifyYourIdentity.
  ///
  /// In fr, this message translates to:
  /// **'Vérifiez votre identité'**
  String get verifyYourIdentity;

  /// No description provided for @completeIdentificationToFinishOrder.
  ///
  /// In fr, this message translates to:
  /// **'Faites votre identification ici pour terminer votre commande.'**
  String get completeIdentificationToFinishOrder;

  /// No description provided for @identityIssue.
  ///
  /// In fr, this message translates to:
  /// **'Problème avec votre identification'**
  String get identityIssue;

  /// No description provided for @invalidIdentityData.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez fournir un document approuvé: CNI ou passeport. Réessayez ici.'**
  String get invalidIdentityData;

  /// No description provided for @needHelpWithIdentity.
  ///
  /// In fr, this message translates to:
  /// **'Besoin d’aide avec votre identification ?'**
  String get needHelpWithIdentity;

  /// No description provided for @getAssistanceAtRelayPoint.
  ///
  /// In fr, this message translates to:
  /// **'Vous pouvez passer en point relais pour être assisté(e). Consultez la liste ici.'**
  String get getAssistanceAtRelayPoint;

  /// No description provided for @paymentInitialization.
  ///
  /// In fr, this message translates to:
  /// **'Initialisation du paiement'**
  String get paymentInitialization;

  /// No description provided for @codeActivation.
  ///
  /// In fr, this message translates to:
  /// **'Activation de votre code'**
  String get codeActivation;

  /// No description provided for @takePhotoWithId.
  ///
  /// In fr, this message translates to:
  /// **'Prenez-vous en photo avec votre pièce d\'identité sous le mention. Une fois cadrée, appuyez pour capturer.'**
  String get takePhotoWithId;

  /// No description provided for @sendManualRequest.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer une demande manuelle'**
  String get sendManualRequest;

  /// No description provided for @requestManualPasscodeResetConfirmation.
  ///
  /// In fr, this message translates to:
  /// **'Nous avons bien reçu votre demande, vous recevrez un SMS lorsque votre demande sera traitée avec succès.'**
  String get requestManualPasscodeResetConfirmation;

  /// No description provided for @manualRequest.
  ///
  /// In fr, this message translates to:
  /// **'Demande manuelle'**
  String get manualRequest;

  /// No description provided for @passcodeIncorrect.
  ///
  /// In fr, this message translates to:
  /// **'Code de sécurité incorrect'**
  String get passcodeIncorrect;

  /// No description provided for @services.
  ///
  /// In fr, this message translates to:
  /// **'Factures'**
  String get services;

  /// No description provided for @logout.
  ///
  /// In fr, this message translates to:
  /// **'Se déconnecter'**
  String get logout;

  /// No description provided for @noContactFoundForSearch.
  ///
  /// In fr, this message translates to:
  /// **'Aucun contact trouvé pour votre recherche'**
  String get noContactFoundForSearch;

  /// No description provided for @confirmLogout.
  ///
  /// In fr, this message translates to:
  /// **'Voulez-vous vous déconnecter ?'**
  String get confirmLogout;

  /// No description provided for @logoutMe.
  ///
  /// In fr, this message translates to:
  /// **'Me déconnecter'**
  String get logoutMe;

  /// No description provided for @subscriptionActivationTime.
  ///
  /// In fr, this message translates to:
  /// **'Votre abonnement {operator} sera actif dans un délai de {delayInMinutes}mn.'**
  String subscriptionActivationTime(Object delayInMinutes, Object operator);

  /// No description provided for @reloadCode.
  ///
  /// In fr, this message translates to:
  /// **'Votre code de rechargement est {code}'**
  String reloadCode(Object code);

  /// No description provided for @copyCode.
  ///
  /// In fr, this message translates to:
  /// **'Copier le code'**
  String get copyCode;

  /// No description provided for @setNewSecurityCode.
  ///
  /// In fr, this message translates to:
  /// **'Définir un nouveau code de sécurité'**
  String get setNewSecurityCode;

  /// No description provided for @noResultForSearch.
  ///
  /// In fr, this message translates to:
  /// **'Aucun résultat pour votre recherche'**
  String get noResultForSearch;

  /// No description provided for @stayInAppWhileProcessing.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez patienter un instant et ne pas sortir de l’application.'**
  String get stayInAppWhileProcessing;

  /// No description provided for @yourIdDocument.
  ///
  /// In fr, this message translates to:
  /// **'Votre pièce d’identité'**
  String get yourIdDocument;

  /// No description provided for @yourSelfie.
  ///
  /// In fr, this message translates to:
  /// **'Votre selfie'**
  String get yourSelfie;

  /// No description provided for @verificationSuccessful.
  ///
  /// In fr, this message translates to:
  /// **'Vérification réussie'**
  String get verificationSuccessful;

  /// No description provided for @sendFailed.
  ///
  /// In fr, this message translates to:
  /// **'Échec de l’envoi'**
  String get sendFailed;

  /// No description provided for @reconnecting.
  ///
  /// In fr, this message translates to:
  /// **'Je me réconnecte'**
  String get reconnecting;

  /// No description provided for @mandatoryUpdate.
  ///
  /// In fr, this message translates to:
  /// **'Mise à jour obligatoire'**
  String get mandatoryUpdate;

  /// No description provided for @updateNow.
  ///
  /// In fr, this message translates to:
  /// **'Mettre à jour'**
  String get updateNow;

  /// No description provided for @updateAvailable.
  ///
  /// In fr, this message translates to:
  /// **'Mise à jour disponible'**
  String get updateAvailable;

  /// No description provided for @referralAccount.
  ///
  /// In fr, this message translates to:
  /// **'Compte de parrainage'**
  String get referralAccount;

  /// No description provided for @enterCurrentSecurityCode.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez entrer votre code de sécurité actuel'**
  String get enterCurrentSecurityCode;

  /// No description provided for @verifyingCurrentSecurityCode.
  ///
  /// In fr, this message translates to:
  /// **'Vérification de votre code de sécurité actuel...'**
  String get verifyingCurrentSecurityCode;

  /// No description provided for @myCode.
  ///
  /// In fr, this message translates to:
  /// **'Mon code'**
  String get myCode;

  /// No description provided for @planActivationSuccess.
  ///
  /// In fr, this message translates to:
  /// **'Vous êtes maintenant sur le plan {productName}'**
  String planActivationSuccess(Object productName);

  /// No description provided for @updateAvailableBanner.
  ///
  /// In fr, this message translates to:
  /// **'Une mise à jour disponible 🎉'**
  String get updateAvailableBanner;

  /// No description provided for @updatePrompt.
  ///
  /// In fr, this message translates to:
  /// **'Cliquez ici pour mettre à jour votre version de Djamo'**
  String get updatePrompt;

  /// No description provided for @upcomingPaymentReminder.
  ///
  /// In fr, this message translates to:
  /// **'Il semblerait que vous ayez un paiement {merchantName} à venir le {nextDueAt}, pour environ {amount}.'**
  String upcomingPaymentReminder(Object amount, Object merchantName, Object nextDueAt);

  /// No description provided for @multipleUpcomingPaymentsReminder.
  ///
  /// In fr, this message translates to:
  /// **'Il semble que vous avez plusieurs paiements à venir à partir du {nextDueAt}, pour environ {totalAmount}.'**
  String multipleUpcomingPaymentsReminder(Object nextDueAt, Object totalAmount);

  /// No description provided for @payments.
  ///
  /// In fr, this message translates to:
  /// **'Paiements'**
  String get payments;

  /// No description provided for @all.
  ///
  /// In fr, this message translates to:
  /// **'Toutes'**
  String get all;

  /// No description provided for @expenses.
  ///
  /// In fr, this message translates to:
  /// **'Dépenses'**
  String get expenses;

  /// No description provided for @deposits.
  ///
  /// In fr, this message translates to:
  /// **'Dépôts'**
  String get deposits;

  /// No description provided for @searchTitle.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher'**
  String get searchTitle;

  /// No description provided for @inviteCodeCopied.
  ///
  /// In fr, this message translates to:
  /// **'Code d’invitation copié avec succès'**
  String get inviteCodeCopied;

  /// No description provided for @loadMore.
  ///
  /// In fr, this message translates to:
  /// **'Charger plus'**
  String get loadMore;

  /// No description provided for @confirmDeposit.
  ///
  /// In fr, this message translates to:
  /// **'Valider le dépôt'**
  String get confirmDeposit;

  /// No description provided for @vaultNotFound.
  ///
  /// In fr, this message translates to:
  /// **'Il semble que ce coffre n\'existe pas.'**
  String get vaultNotFound;

  /// No description provided for @yourVBVConfirmationCode.
  ///
  /// In fr, this message translates to:
  /// **'Votre code de confirmation est'**
  String get yourVBVConfirmationCode;

  /// No description provided for @confirmationVBVCodeWarning.
  ///
  /// In fr, this message translates to:
  /// **'Ne partagez ce code avec personne au téléphone. Ne composez aucune syntaxe USSD. Entrez ce code sur le site du marchand pour valider la transaction.'**
  String get confirmationVBVCodeWarning;

  /// No description provided for @lockEmojiCode.
  ///
  /// In fr, this message translates to:
  /// **'🔐 Code'**
  String get lockEmojiCode;

  /// No description provided for @useThisCodeToLogin.
  ///
  /// In fr, this message translates to:
  /// **'Utilisez ce code pour vous connecter à votre compte Djamo business'**
  String get useThisCodeToLogin;

  /// No description provided for @cardDetailLoadingError.
  ///
  /// In fr, this message translates to:
  /// **'Erreur pendant le chargement des informations de votre carte'**
  String get cardDetailLoadingError;

  /// No description provided for @amountInCurrency.
  ///
  /// In fr, this message translates to:
  /// **'Montant en {currency}'**
  String amountInCurrency(Object currency);

  /// No description provided for @at.
  ///
  /// In fr, this message translates to:
  /// **'à'**
  String get at;

  /// No description provided for @operationInfo.
  ///
  /// In fr, this message translates to:
  /// **'Infos sur l’opération'**
  String get operationInfo;

  /// No description provided for @sharePurchase.
  ///
  /// In fr, this message translates to:
  /// **'Achat de parts'**
  String get sharePurchase;

  /// No description provided for @shareRedemption.
  ///
  /// In fr, this message translates to:
  /// **'Rachat de parts'**
  String get shareRedemption;

  /// No description provided for @client.
  ///
  /// In fr, this message translates to:
  /// **'Client'**
  String get client;

  /// No description provided for @numberOfShares.
  ///
  /// In fr, this message translates to:
  /// **'Nombre de parts'**
  String get numberOfShares;

  /// No description provided for @netAssetValue.
  ///
  /// In fr, this message translates to:
  /// **'Valeur liquidative'**
  String get netAssetValue;

  /// No description provided for @transactionFeesIncludingTax.
  ///
  /// In fr, this message translates to:
  /// **'Frais de transaction TTC {feesPercentage}%'**
  String transactionFeesIncludingTax(Object feesPercentage);

  /// No description provided for @receipt.
  ///
  /// In fr, this message translates to:
  /// **'Réçu'**
  String get receipt;

  /// No description provided for @checkInternetConnection.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez vérifier votre connexion Internet et réessayer.'**
  String get checkInternetConnection;

  /// No description provided for @purchaseAndWithdrawalUnavailable.
  ///
  /// In fr, this message translates to:
  /// **'Les services d\'achat et de retrait sont indisponibles pour l\'instant. Nous vous notifierons dès disponibilité du service.'**
  String get purchaseAndWithdrawalUnavailable;

  /// No description provided for @freeDeposits.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Dépôt gratuit} other{Dépôts gratuits}}'**
  String freeDeposits(num count);

  /// No description provided for @freeDepositsDescription.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Zéro frais sur votre prochain dépôt.} other{Zéro frais sur vos {count} prochains dépôts.}}'**
  String freeDepositsDescription(num count);

  /// No description provided for @freeDepositsDescriptionWithExpiration.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Zéro frais sur votre prochain dépôt} other{Zéro frais sur vos {count} prochains dépôts}} avant le {expirationDate}.'**
  String freeDepositsDescriptionWithExpiration(num count, Object expirationDate);

  /// No description provided for @freeTransfers.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Transfert gratuit} other{Transferts gratuits}}'**
  String freeTransfers(num count);

  /// No description provided for @freeTransfersDescription.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Zéro frais sur votre prochain transfert.} other{Zéro frais sur vos {count} prochains transferts.}}'**
  String freeTransfersDescription(num count);

  /// No description provided for @freeTransfersDescriptionWithExpiration.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Zéro frais sur votre prochain transfert} other{Zéro frais sur vos {count} prochains transferts}} avant le {expirationDate}.'**
  String freeTransfersDescriptionWithExpiration(num count, Object expirationDate);

  /// No description provided for @freeCashbacks.
  ///
  /// In fr, this message translates to:
  /// **'{percentage}% de cashback'**
  String freeCashbacks(Object percentage);

  /// No description provided for @freeCashbacksDescription.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Vous disposez de {percentage}% de cashback sur votre prochain paiement.} other{Vous disposez de {percentage}% de cashback sur vos {count} prochains paiements.}}'**
  String freeCashbacksDescription(num count, Object percentage);

  /// No description provided for @freeCashbacksDescriptionWithExpiration.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =1{Vous disposez de {percentage}% de cashback sur votre prochain paiement} other{Vous disposez de {percentage}% de cashback sur vos {count} prochains paiements}} avant le {expirationDate}.'**
  String freeCashbacksDescriptionWithExpiration(num count, Object expirationDate, Object percentage);

  /// No description provided for @freePremiumSubscription.
  ///
  /// In fr, this message translates to:
  /// **'Premium gratuit'**
  String get freePremiumSubscription;

  /// No description provided for @freePremiumSubscriptionDescription.
  ///
  /// In fr, this message translates to:
  /// **'Profitez d\'un mois Premium gratuit en appuyant ici 🥳.'**
  String get freePremiumSubscriptionDescription;

  /// No description provided for @cardWillExpireTitle.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte expirera bientôt'**
  String get cardWillExpireTitle;

  /// No description provided for @cardWillExpireMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte expirera dans {date} jour(s). Renouvelez votre carte pour ne pas être déconnecté de vos abonnements'**
  String cardWillExpireMessage(Object date);

  /// No description provided for @cardExpiredTitle.
  ///
  /// In fr, this message translates to:
  /// **' Votre carte a expiré'**
  String get cardExpiredTitle;

  /// No description provided for @cardExpiredMessage.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte a expiré. Commandez une nouvelle carte ici.'**
  String get cardExpiredMessage;

  /// No description provided for @selectVaultType.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez un type de coffre'**
  String get selectVaultType;

  /// No description provided for @during.
  ///
  /// In fr, this message translates to:
  /// **'Pendant'**
  String get during;

  /// No description provided for @interestRate.
  ///
  /// In fr, this message translates to:
  /// **'{percentage}% d’intérêts'**
  String interestRate(Object percentage);

  /// No description provided for @vaultNotLocked.
  ///
  /// In fr, this message translates to:
  /// **'Coffre non bloqué'**
  String get vaultNotLocked;

  /// No description provided for @lockedVaults.
  ///
  /// In fr, this message translates to:
  /// **'Coffres bloqués'**
  String get lockedVaults;

  /// No description provided for @confirmVaultLock.
  ///
  /// In fr, this message translates to:
  /// **'Êtes-vous sûr de vouloir bloquer votre coffre ?'**
  String get confirmVaultLock;

  /// No description provided for @earlyUnlockPenalty.
  ///
  /// In fr, this message translates to:
  /// **'Un déblocage avant la date d’échéance entraînera des frais de pénalité.'**
  String get earlyUnlockPenalty;

  /// No description provided for @earnUpTo6Percent.
  ///
  /// In fr, this message translates to:
  /// **'Générez jusqu’à 6% d’intérêts avec les coffres'**
  String get earnUpTo6Percent;

  /// No description provided for @cardIndependentFromAccount.
  ///
  /// In fr, this message translates to:
  /// **'Votre carte devient indépendante de votre compte'**
  String get cardIndependentFromAccount;

  /// No description provided for @accountBalanceUnlimited.
  ///
  /// In fr, this message translates to:
  /// **'Le solde de votre compte devient illimité'**
  String get accountBalanceUnlimited;

  /// No description provided for @switchToMicrofinance.
  ///
  /// In fr, this message translates to:
  /// **'Passer à la Microfinance'**
  String get switchToMicrofinance;

  /// No description provided for @migrateToDjamoMicrofinance.
  ///
  /// In fr, this message translates to:
  /// **'Migrer vers Djamo Microfinances 🚀'**
  String get migrateToDjamoMicrofinance;

  /// No description provided for @microfinanceExperience.
  ///
  /// In fr, this message translates to:
  /// **'Une expérience illimitée, des services étendus et une gestion simplifiée. Cliquez ici.'**
  String get microfinanceExperience;

  /// No description provided for @signToAcceptTerms.
  ///
  /// In fr, this message translates to:
  /// **'Signez pour accepter les conditions'**
  String get signToAcceptTerms;

  /// No description provided for @signHere.
  ///
  /// In fr, this message translates to:
  /// **'Signez ici ✍🏾'**
  String get signHere;

  /// No description provided for @migrationSuccessful.
  ///
  /// In fr, this message translates to:
  /// **'Migration réussie.'**
  String get migrationSuccessful;

  /// No description provided for @restart.
  ///
  /// In fr, this message translates to:
  /// **'Recommencer'**
  String get restart;

  /// No description provided for @signatureSaveError.
  ///
  /// In fr, this message translates to:
  /// **'Une erreur est survenue lors de l\'enregistrement de la signature.'**
  String get signatureSaveError;

  /// No description provided for @accounts.
  ///
  /// In fr, this message translates to:
  /// **'Comptes'**
  String get accounts;

  /// No description provided for @edit.
  ///
  /// In fr, this message translates to:
  /// **'Modifier'**
  String get edit;

  /// No description provided for @unlockVault.
  ///
  /// In fr, this message translates to:
  /// **'Débloquer le coffre'**
  String get unlockVault;

  /// No description provided for @vaultDeletionInfo.
  ///
  /// In fr, this message translates to:
  /// **'Le coffre sera supprimé et l’argent sur le coffre sera reversé sur le compte principal.'**
  String get vaultDeletionInfo;

  /// No description provided for @vaultUnlockPenalty.
  ///
  /// In fr, this message translates to:
  /// **'Vous perdrez {percentage}% de vos intérêts ({amount}) pour le déblocage du coffre. Êtes-vous sûr de vouloir continuer ?'**
  String vaultUnlockPenalty(Object amount, Object percentage);

  /// No description provided for @confirmVaultUnlock.
  ///
  /// In fr, this message translates to:
  /// **'Débloquer le coffre quand même'**
  String get confirmVaultUnlock;

  /// No description provided for @securityUpdateRequired.
  ///
  /// In fr, this message translates to:
  /// **'Pour des raisons de sécurité, veuillez mettre à jour votre application 🚀'**
  String get securityUpdateRequired;

  /// No description provided for @verifyPaymentInformations.
  ///
  /// In fr, this message translates to:
  /// **'Vérifiez à nouveau les informations du paiement'**
  String get verifyPaymentInformations;

  /// No description provided for @merchant.
  ///
  /// In fr, this message translates to:
  /// **'Marchand'**
  String get merchant;

  /// No description provided for @confirmPayment.
  ///
  /// In fr, this message translates to:
  /// **'Confirmer le paiement'**
  String get confirmPayment;

  /// No description provided for @cancelPayment.
  ///
  /// In fr, this message translates to:
  /// **'Annuler le paiement'**
  String get cancelPayment;

  /// No description provided for @confirmAccountDeletion.
  ///
  /// In fr, this message translates to:
  /// **'Souhaitez-vous supprimer ce compte ?'**
  String get confirmAccountDeletion;

  /// No description provided for @getDiscountOnFxForPaymentAboveCertainAmount.
  ///
  /// In fr, this message translates to:
  /// **'Bénéficiez d’un taux de *{discount}* pour un achat supérieur à {amount}'**
  String getDiscountOnFxForPaymentAboveCertainAmount(Object amount, Object discount);

  /// No description provided for @chooseLocalCurrencyToAvoidFees.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez la devise locale du marchand ou du guichet (EUR, USD) pour éviter les frais supplémentaires'**
  String get chooseLocalCurrencyToAvoidFees;

  /// No description provided for @currencyConverterWarning.
  ///
  /// In fr, this message translates to:
  /// **'Le simulateur reste une estimation et le coût final peut varier.'**
  String get currencyConverterWarning;

  /// No description provided for @fxRateComparator.
  ///
  /// In fr, this message translates to:
  /// **'Comparateur'**
  String get fxRateComparator;

  /// No description provided for @markAllAsRead.
  ///
  /// In fr, this message translates to:
  /// **'Tout marquer comme lu'**
  String get markAllAsRead;

  /// No description provided for @reloginRequired.
  ///
  /// In fr, this message translates to:
  /// **'Échec de l\'authentification. Veuillez vous reconnecter.'**
  String get reloginRequired;

  /// No description provided for @mySingular.
  ///
  /// In fr, this message translates to:
  /// **'Mon {name}'**
  String mySingular(Object name);

  /// No description provided for @paymentDueDate.
  ///
  /// In fr, this message translates to:
  /// **'Date limite de paiement :'**
  String get paymentDueDate;

  /// No description provided for @billingPeriod.
  ///
  /// In fr, this message translates to:
  /// **'Période de facturation :'**
  String get billingPeriod;

  /// No description provided for @invoice.
  ///
  /// In fr, this message translates to:
  /// **'Facture'**
  String get invoice;

  /// No description provided for @invoiceNumber.
  ///
  /// In fr, this message translates to:
  /// **'Numéro de facture'**
  String get invoiceNumber;

  /// No description provided for @vaultsWillAppearHere.
  ///
  /// In fr, this message translates to:
  /// **'Vos coffres s\'afficheront ici'**
  String get vaultsWillAppearHere;

  /// No description provided for @saveFeesWithAgent.
  ///
  /// In fr, this message translates to:
  /// **'Économisez {fees} en faisant votre dépôt chez un agent Djamo. Cliquez ici.'**
  String saveFeesWithAgent(Object fees);

  /// No description provided for @signatureStepOne.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez signer pour confirmer votre approbation (1/2) :'**
  String get signatureStepOne;

  /// No description provided for @signatureStepTwo.
  ///
  /// In fr, this message translates to:
  /// **'Veuillez signer à nouveau (2/2) :'**
  String get signatureStepTwo;

  /// No description provided for @deleteAccount.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer le compte'**
  String get deleteAccount;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'en': {
  switch (locale.countryCode) {
    case 'SN': return AppLocalizationsEnSn();
   }
  break;
   }
    case 'fr': {
  switch (locale.countryCode) {
    case 'CI': return AppLocalizationsFrCi();
case 'SN': return AppLocalizationsFrSn();
   }
  break;
   }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
