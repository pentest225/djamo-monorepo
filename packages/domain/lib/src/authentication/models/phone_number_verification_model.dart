import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/models/phone_number_model.dart';

class PhoneNumberVerificationModel extends BaseModel {
  const PhoneNumberVerificationModel({
    required this.id,
    required this.phoneNumber,
    required this.hasAccount,
    required this.isClient,
    required this.needsToChangePassCode,
    required this.kycStatus,
  });

  factory PhoneNumberVerificationModel.fromJson(Map<String, dynamic> json) {
    return PhoneNumberVerificationModel(
      id: DP.asString(json['id']),
      phoneNumber: PhoneNumberModel.fromJson(DP.asMap(json['phoneNumber'])),
      hasAccount: DP.asBool(json['hasAccount']),
      isClient: DP.asBool(json['isClient']),
      needsToChangePassCode: DP.asBool(json['needsToChangePassCode']),
      kycStatus: DP.asString(json['kycStatus']),
    );
  }

  final String id;
  final PhoneNumberModel phoneNumber;
  final bool hasAccount;
  final bool isClient;
  final bool needsToChangePassCode;
  final String kycStatus;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phoneNumber': phoneNumber.toJson(),
      'hasAccount': hasAccount,
      'isClient': isClient,
      'needsToChangePassCode': needsToChangePassCode,
      'kycStatus': kycStatus,
    };
  }

  @override
  List<Object?> get props => [
        id,
        phoneNumber,
        hasAccount,
        isClient,
        needsToChangePassCode,
        kycStatus,
      ];
}

extension PhoneNumberVerificationModelExtension on PhoneNumberVerificationModel {}
