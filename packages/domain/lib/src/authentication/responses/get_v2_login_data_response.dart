import 'package:domain/src/_core/_core.dart';

class GetV2LoginDataResponse extends BaseResponse {
  const GetV2LoginDataResponse({
    required this.phoneNumberId,
    required this.passcode,
    required this.accessToken,
    required this.clientId,
    this.isBiometricEnabled = false,
    this.alreadyMigrated = false,
  });

  factory GetV2LoginDataResponse.migrated() {
    return const GetV2LoginDataResponse(
      phoneNumberId: '',
      passcode: '',
      accessToken: '',
      clientId: '',
      alreadyMigrated: true,
    );
  }

  factory GetV2LoginDataResponse.fromJson(Map<String, dynamic> json) {
    return GetV2LoginDataResponse(
      phoneNumberId: DP.asString(json['phoneNumberId']),
      passcode: DP.asString(json['passcode']),
      accessToken: DP.asString(json['accessToken']),
      clientId: DP.asString(json['clientId']),
      isBiometricEnabled: DP.asBool(json['isBiometricEnabled']),
      alreadyMigrated: DP.asBool(json['alreadyMigrated']),
    );
  }

  final String phoneNumberId;
  final String passcode;
  final String accessToken;
  final String clientId;
  final bool isBiometricEnabled;
  final bool alreadyMigrated;

  @override
  Map<String, dynamic> toJson() {
    return {
      'phoneNumberId': phoneNumberId,
      'passcode': passcode,
      'accessToken': accessToken,
      'clientId': clientId,
      'isBiometricEnabled': isBiometricEnabled,
      'alreadyMigrated': alreadyMigrated,
    };
  }

  @override
  List<Object?> get props => [
        phoneNumberId,
        passcode,
        accessToken,
        clientId,
        isBiometricEnabled,
        alreadyMigrated,
      ];
}

extension GetV2LoginDataResponseDomainExtension on GetV2LoginDataResponse {}
