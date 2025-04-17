import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/models/phone_number_kyc_model.dart';

class PhoneNumberModel extends BaseModel {
  const PhoneNumberModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.isActive,
    required this.searchableText,
    required this.msisdn,
    required this.e164,
    required this.installationId,
    required this.deviceType,
    required this.subscribed,
    required this.hasAccount,
    required this.isPhysical,
    required this.isClient,
    required this.needsToChangePassCode,
    required this.kyc,
  });

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) {
    return PhoneNumberModel(
      id: DP.asString(json['id']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
      deletedAt: DP.asString(json['deletedAt']),
      isActive: DP.asBool(json['isActive']),
      searchableText: DP.asString(json['searchableText']),
      msisdn: DP.asString(json['msisdn']),
      e164: DP.asString(json['e164']),
      installationId: DP.asString(json['installationId']),
      deviceType: DP.asString(json['deviceType']),
      subscribed: DP.asBool(json['subscribed']),
      hasAccount: DP.asBool(json['hasAccount']),
      isPhysical: DP.asBool(json['isPhysical']),
      isClient: DP.asBool(json['isClient']),
      needsToChangePassCode: DP.asBool(json['needsToChangePassCode']),
      kyc: PhoneNumberKycModel.fromJson(DP.asMap(json['kyc'])),
    );
  }

  final String id;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;
  final bool isActive;
  final String searchableText;
  final String msisdn;
  final String e164;
  final String installationId;
  final String deviceType;
  final bool subscribed;
  final bool hasAccount;
  final bool isPhysical;
  final bool isClient;
  final bool needsToChangePassCode;
  final PhoneNumberKycModel kyc;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
      'isActive': isActive,
      'searchableText': searchableText,
      'msisdn': msisdn,
      'e164': e164,
      'installationId': installationId,
      'deviceType': deviceType,
      'subscribed': subscribed,
      'hasAccount': hasAccount,
      'isPhysical': isPhysical,
      'isClient': isClient,
      'needsToChangePassCode': needsToChangePassCode,
      'kyc': kyc.toJson(),
    };
  }

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        deletedAt,
        isActive,
        searchableText,
        msisdn,
        e164,
        installationId,
        deviceType,
        subscribed,
        hasAccount,
        isPhysical,
        isClient,
        needsToChangePassCode,
        kyc,
      ];
}

extension PhoneNumberModelExtension on PhoneNumberModel {}
