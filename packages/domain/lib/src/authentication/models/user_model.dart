import 'package:domain/domain.dart';

class UserModel extends BaseModel {
  const UserModel({
    required this.profileIsActive,
    required this.clientId,
    required this.phoneNumberE164,
    required this.phoneNumberCountryIsoCode,
    required this.profileEmail,
    required this.profileLastName,
    required this.profileFirstName,
    required this.profilePhotoUrl,
    required this.referralRewardCode,
    required this.marketId,
    required this.referralRewardMessage,
    required this.profileStatus,
    required this.profileOnfidoStatus,
    required this.hasIban,
    required this.hasAccount,
    required this.profileDateOfBirth,
    required this.profileIDs,
    required this.profileIDType,
    required this.referralRewardLink,
    required this.accessEnabled,
    required this.nextDepositIsFree,
    required this.nextTransferIsFree,
    required this.budgetUserCategory,
    required this.hasPhysicalCard,
    required this.hasTransaction,
    required this.hasOrdered,
    required this.giveaway,
    required this.creditTermAndConditionAccepted,
    required this.profileEmailIsVerified,
    required this.profilePhotoUpdatedAt,
    required this.hasSignedDjamoAgreementContract,
    required this.isTempPasscodeUsed,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      profileIsActive: DP.asBool(json['profileIsActive']),
      clientId: DP.asString(json['clientId']),
      phoneNumberE164: DP.asString(json['phoneNumberE164']),
      phoneNumberCountryIsoCode: DP.asString(json['phoneNumberCountryIsoCode']),
      profileEmail: DP.asString(json['profileEmail']),
      profileLastName: DP.asString(json['profileLastName']),
      profileFirstName: DP.asString(json['profileFirstName']),
      profilePhotoUrl: DP.asString(json['profilePhotoUrl']),
      referralRewardCode: DP.asString(json['referralRewardCode']),
      marketId: DP.asString(json['marketId']),
      referralRewardMessage: DP.asString(json['referralRewardMessage']),
      profileStatus: DP.asString(json['profileStatus']),
      profileOnfidoStatus: DP.asString(json['profileOnfidoStatus']),
      hasIban: DP.asBool(json['hasIban']),
      hasAccount: DP.asBool(json['hasAccount']),
      profileDateOfBirth: DP.asString(json['profileDateOfBirth']),
      profileIDs: ProfileIdModel.fromJson(DP.asMap(json['profileIDs'])),
      profileIDType: DP.asString(json['profileIDType']),
      referralRewardLink: DP.asString(json['referralRewardLink']),
      accessEnabled: DP.asBool(json['accessEnabled']),
      nextDepositIsFree: DP.asBool(json['nextDepositIsFree']),
      nextTransferIsFree: DP.asBool(json['nextTransferIsFree']),
      budgetUserCategory: DP.asString(json['budgetUserCategory']),
      hasPhysicalCard: DP.asBool(json['hasPhysicalCard']),
      hasTransaction: DP.asBool(json['hasTransaction']),
      hasOrdered: DP.asBool(json['hasOrdered']),
      giveaway: GiveawayModel.fromJson(DP.asMap(json['giveaway'])),
      creditTermAndConditionAccepted: DP.asBool(json['creditTermAndConditionAccepted']),
      profileEmailIsVerified: DP.asBool(json['profileEmailIsVerified']),
      profilePhotoUpdatedAt: DP.asString(json['profilePhotoUpdatedAt']),
      hasSignedDjamoAgreementContract: DP.asBool(json['hasSignedDjamoAgreementContract']),
      isTempPasscodeUsed: DP.asBool(json['isTempPasscodeUsed']),
    );
  }

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
  final ProfileIdModel profileIDs;
  final String profileIDType;
  final String referralRewardLink;
  final bool accessEnabled;
  final bool nextDepositIsFree;
  final bool nextTransferIsFree;
  final String budgetUserCategory;
  final bool hasPhysicalCard;
  final bool hasTransaction;
  final bool hasOrdered;
  final GiveawayModel giveaway;
  final bool creditTermAndConditionAccepted;
  final bool profileEmailIsVerified;
  final String profilePhotoUpdatedAt;
  final bool hasSignedDjamoAgreementContract;
  final bool isTempPasscodeUsed;

  @override
  Map<String, dynamic> toJson() {
    return {
      'profileIsActive': profileIsActive,
      'clientId': clientId,
      'phoneNumberE164': phoneNumberE164,
      'phoneNumberCountryIsoCode': phoneNumberCountryIsoCode,
      'profileEmail': profileEmail,
      'profileLastName': profileLastName,
      'profileFirstName': profileFirstName,
      'profilePhotoUrl': profilePhotoUrl,
      'referralRewardCode': referralRewardCode,
      'marketId': marketId,
      'referralRewardMessage': referralRewardMessage,
      'profileStatus': profileStatus,
      'profileOnfidoStatus': profileOnfidoStatus,
      'hasIban': hasIban,
      'hasAccount': hasAccount,
      'profileDateOfBirth': profileDateOfBirth,
      'profileIDs': profileIDs.toJson(),
      'profileIDType': profileIDType,
      'referralRewardLink': referralRewardLink,
      'accessEnabled': accessEnabled,
      'nextDepositIsFree': nextDepositIsFree,
      'nextTransferIsFree': nextTransferIsFree,
      'budgetUserCategory': budgetUserCategory,
      'hasPhysicalCard': hasPhysicalCard,
      'hasTransaction': hasTransaction,
      'hasOrdered': hasOrdered,
      'giveaway': giveaway.toJson(),
      'creditTermAndConditionAccepted': creditTermAndConditionAccepted,
      'profileEmailIsVerified': profileEmailIsVerified,
      'profilePhotoUpdatedAt': profilePhotoUpdatedAt,
      'hasSignedDjamoAgreementContract': hasSignedDjamoAgreementContract,
      'isTempPasscodeUsed': isTempPasscodeUsed,
    };
  }

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

extension UserModelExtension on UserModel {}
