import 'dart:convert';

import 'package:dartx/dartx.dart';
import 'package:diacritic/diacritic.dart';
import 'package:domain/domain.dart';
import 'package:domain/protos/m1.pb.dart';
import 'package:domain/src/_core/utils/totp.dart';
import 'package:domain/src/_core/utils/use_full_name_abbr_capitalised.dart';

typedef UserEntities = List<UserEntity>;

class UserEntity extends BaseEntity {
  const UserEntity({
    this.profileIsActive = false,
    this.clientId = emptyString,
    this.phoneNumberE164 = emptyString,
    this.phoneNumberCountryIsoCode = emptyString,
    this.profileEmail = emptyString,
    this.profileLastName = emptyString,
    this.profileFirstName = emptyString,
    this.profilePhotoUrl = emptyString,
    this.referralRewardCode = emptyString,
    this.marketId = emptyString,
    this.referralRewardMessage = emptyString,
    this.profileStatus = emptyString,
    this.profileOnfidoStatus = emptyString,
    this.hasIban = false,
    this.hasAccount = false,
    this.profileDateOfBirth = emptyString,
    this.profileIDs = ProfileIdEntity.empty,
    this.profileIDType = emptyString,
    this.referralRewardLink = emptyString,
    this.accessEnabled = false,
    this.nextDepositIsFree = false,
    this.nextTransferIsFree = false,
    this.budgetUserCategory = emptyString,
    this.hasPhysicalCard = false,
    this.hasTransaction = false,
    this.hasOrdered = false,
    this.giveaway = GiveawayEntity.empty,
    this.creditTermAndConditionAccepted = false,
    this.profileEmailIsVerified = false,
    this.profilePhotoUpdatedAt = emptyString,
    this.hasSignedDjamoAgreementContract = false,
    this.isTempPasscodeUsed = false,
    this.secretKey,
  });

  final bool profileIsActive;
  final String clientId;
  final String phoneNumberE164;
  final String phoneNumberCountryIsoCode;
  final String profileEmail;
  final String profileLastName;
  final String profileFirstName;
  final String profilePhotoUrl;
  final String referralRewardCode;
  final String marketId;
  final String referralRewardMessage;
  final String profileStatus;
  final String profileOnfidoStatus;
  final bool hasIban;
  final bool hasAccount;
  final String profileDateOfBirth;
  final ProfileIdEntity profileIDs;
  final String profileIDType;
  final String referralRewardLink;
  final bool accessEnabled;
  final bool nextDepositIsFree;
  final bool nextTransferIsFree;
  final String budgetUserCategory;
  final bool hasPhysicalCard;
  final bool hasTransaction;
  final bool hasOrdered;
  final GiveawayEntity giveaway;
  final bool creditTermAndConditionAccepted;
  final bool profileEmailIsVerified;
  final String profilePhotoUpdatedAt;
  final bool hasSignedDjamoAgreementContract;
  final bool isTempPasscodeUsed;
  final String? secretKey;

  PhoneNumberObject get phoneNumber {
    return PhoneNumberObject.create(
      phoneNumberE164,
      id: clientId,
      marketIsoCode: getMarketIsoCode,
      displayName: 'Moi-même',
      imageUrl: profilePhotoUrl,
    );
  }

  static const empty = UserEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        profileIsActive,
        clientId,
        phoneNumberE164,
        phoneNumberCountryIsoCode,
        profileEmail,
        profileLastName,
        profileFirstName,
        profilePhotoUrl,
        referralRewardCode,
        marketId,
        referralRewardMessage,
        profileStatus,
        profileOnfidoStatus,
        hasIban,
        hasAccount,
        profileDateOfBirth,
        profileIDs,
        profileIDType,
        referralRewardLink,
        accessEnabled,
        nextDepositIsFree,
        nextTransferIsFree,
        budgetUserCategory,
        hasPhysicalCard,
        hasTransaction,
        hasOrdered,
        giveaway,
        creditTermAndConditionAccepted,
        profileEmailIsVerified,
        profilePhotoUpdatedAt,
        hasSignedDjamoAgreementContract,
        isTempPasscodeUsed,
      ];
}

extension UserEntityExtension on UserEntity {
  MarketIsoCodeEnum get getMarketIsoCode {
    return MarketIsoCodeEnum.fromCode(phoneNumberCountryIsoCode);
  }

  String get getIsoCode {
    return phoneNumberCountryIsoCode;
  }

  Future<String> getPayloadProtobuf(String secret, String deviceUniqueIdentifier) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    const timeFrame = 20;
    const length = 6;

    final totp = TOTP.generateTOTPCodeString(
      const String.fromEnvironment('TOTP_SECRET'),
      now + (timeFrame * 1000),
      interval: timeFrame,
      algorithm: Algorithm.SHA512,
      isGoogle: true,
    );
    final dataMessage = DataMessage()
      ..version = 1
      ..clientId = clientId
      ..deviceUuid = deviceUniqueIdentifier
      ..totp = totp;

    // Sérialisation en mémoire
    final payload = dataMessage.writeToBuffer();

    return base64Encode(payload);
  }

  String getStaticQrCodeData({required String shareQrCodeBaseUrl}) {
    final pathParams = '?code=$referralRewardCode&market=$phoneNumberCountryIsoCode';
    if (shareQrCodeBaseUrl.isNotEmpty) {
      return '$shareQrCodeBaseUrl$pathParams';
    }
    if (referralRewardLink.isNotEmpty) {
      return '$referralRewardLink$pathParams';
    }
    return 'https://go.djamo.com/invite$pathParams';
  }

  Future<String> getDynamicQrCodeData({required String shareQrCodeBaseUrl, required String secret, required String deviceUniqueIdentifier}) async {
    final payload = await getPayloadProtobuf(secret, deviceUniqueIdentifier);
    final pathParams = '?code=$referralRewardCode&market=$phoneNumberCountryIsoCode&payload=$payload';
    if (shareQrCodeBaseUrl.isNotEmpty) {
      return '$shareQrCodeBaseUrl$pathParams';
    }
    if (referralRewardLink.isNotEmpty) {
      return '$referralRewardLink$pathParams';
    }
    return 'https://go.djamo.com/invite$pathParams';
  }

  String get fullName {
    return '$profileLastName $profileFirstName '.toUpperCase();
  }

  String get fullNameCapitalised {
    return '${profileFirstName.toUpperCase()} ${profileLastName.toUpperCase()}';
  }

  String get fullNameAbbrCapitalised {
    String abbrLastName() {
      try {
        return "${profileLastName.split("").first.toUpperCase()}.";
      } catch (_) {}
      return '';
    }

    String firstProfileFirstName() {
      try {
        return profileFirstName.split(' ').first;
      } catch (_) {}
      return profileFirstName;
    }

    return '${firstProfileFirstName().toLowerCase().capitalize()} ${abbrLastName()}'.trim();
  }

  String get firstProfileFirstNameOrLastName {
    try {
      return profileFirstName.split(' ').first;
    } catch (_) {}

    return profileFirstName;
  }

  String get shortFirstName {
    try {
      return profileFirstName.split(' ')[0].toLowerCase().capitalize();
    } catch (e) {
      return profileFirstName;
    }
  }

  KYCStatusEnum get getProfileStatus {
    return KYCStatusEnum.fromString(profileStatus);
  }

  bool get hasInvest {
    return false;
  }

  String get getCountrySuffix {
    return getMarketIsoCode.suffix.replaceAll('-', '');
  }

  String get prefferedNames {
    var names = '${profileLastName.trim()} ${profileFirstName.trim()}';
    names = names.replaceAll('-', '');
    names = names.replaceAll("'", '');
    names = names.replaceAll('’', '');
    names = names.replaceAll(RegExp(r'[\u0300-\u036F]/g'), '');
    // names = names.replaceAll(new RegExp(r'[^\w\s]+'), '');
    names = removeDiacritics(names);
    if (names.length <= 19) {
      return names;
    } else {
      return names.replaceRange(19, names.length, '');
    }
  }

  bool get isSnUser {
    return phoneNumberCountryIsoCode.toLowerCase() == 'sn';
  }

  bool get isCivUser {
    return phoneNumberCountryIsoCode.toLowerCase() == 'ci';
  }

  String get getFullNameAbbrCapitalised {
    return useFullNameAbbrCapitalised(
      lastName: profileLastName,
      firstName: profileFirstName,
    );
  }

  UserEntity copyWith({
    bool? profileIsActive,
    String? clientId,
    String? phoneNumberE164,
    String? phoneNumberCountryIsoCode,
    String? profileEmail,
    String? profileLastName,
    String? profileFirstName,
    String? profilePhotoUrl,
    String? referralRewardCode,
    String? marketId,
    String? referralRewardMessage,
    String? profileStatus,
    String? profileOnfidoStatus,
    bool? hasIban,
    bool? hasAccount,
    String? profileDateOfBirth,
    ProfileIdEntity? profileIDs,
    String? profileIDType,
    String? referralRewardLink,
    bool? accessEnabled,
    bool? nextDepositIsFree,
    bool? nextTransferIsFree,
    String? budgetUserCategory,
    bool? hasPhysicalCard,
    bool? hasTransaction,
    bool? hasOrdered,
    GiveawayEntity? giveaway,
    bool? creditTermAndConditionAccepted,
    bool? profileEmailIsVerified,
    String? profilePhotoUpdatedAt,
    bool? hasSignedDjamoAgreementContract,
    bool? isTempPasscodeUsed,
    String? secretKey,
  }) {
    return UserEntity(
      profileIsActive: profileIsActive ?? this.profileIsActive,
      clientId: clientId ?? this.clientId,
      phoneNumberE164: phoneNumberE164 ?? this.phoneNumberE164,
      phoneNumberCountryIsoCode: phoneNumberCountryIsoCode ?? this.phoneNumberCountryIsoCode,
      profileEmail: profileEmail ?? this.profileEmail,
      profileLastName: profileLastName ?? this.profileLastName,
      profileFirstName: profileFirstName ?? this.profileFirstName,
      profilePhotoUrl: profilePhotoUrl ?? this.profilePhotoUrl,
      referralRewardCode: referralRewardCode ?? this.referralRewardCode,
      marketId: marketId ?? this.marketId,
      referralRewardMessage: referralRewardMessage ?? this.referralRewardMessage,
      profileStatus: profileStatus ?? this.profileStatus,
      profileOnfidoStatus: profileOnfidoStatus ?? this.profileOnfidoStatus,
      hasIban: hasIban ?? this.hasIban,
      hasAccount: hasAccount ?? this.hasAccount,
      profileDateOfBirth: profileDateOfBirth ?? this.profileDateOfBirth,
      profileIDs: profileIDs ?? this.profileIDs,
      profileIDType: profileIDType ?? this.profileIDType,
      referralRewardLink: referralRewardLink ?? this.referralRewardLink,
      accessEnabled: accessEnabled ?? this.accessEnabled,
      nextDepositIsFree: nextDepositIsFree ?? this.nextDepositIsFree,
      nextTransferIsFree: nextTransferIsFree ?? this.nextTransferIsFree,
      budgetUserCategory: budgetUserCategory ?? this.budgetUserCategory,
      hasPhysicalCard: hasPhysicalCard ?? this.hasPhysicalCard,
      hasTransaction: hasTransaction ?? this.hasTransaction,
      hasOrdered: hasOrdered ?? this.hasOrdered,
      giveaway: giveaway ?? this.giveaway,
      creditTermAndConditionAccepted: creditTermAndConditionAccepted ?? this.creditTermAndConditionAccepted,
      profileEmailIsVerified: profileEmailIsVerified ?? this.profileEmailIsVerified,
      profilePhotoUpdatedAt: profilePhotoUpdatedAt ?? this.profilePhotoUpdatedAt,
      hasSignedDjamoAgreementContract: hasSignedDjamoAgreementContract ?? this.hasSignedDjamoAgreementContract,
      isTempPasscodeUsed: isTempPasscodeUsed ?? this.isTempPasscodeUsed,
      secretKey: secretKey ?? this.secretKey,
    );
  }
}
