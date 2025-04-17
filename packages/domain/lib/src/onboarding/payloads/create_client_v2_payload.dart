import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class CreateClientV2Payload extends BasePayload {
  const CreateClientV2Payload({
    required this.phoneNumberId,
    required this.passcode,
    required this.challengeId,
    required this.isVerified,
    required this.msisdn,
    required this.deviceIdentifier,
    required this.deviceBrand,
    required this.firstName,
    required this.lastName,
    this.birthDate,
    this.email,
  });

  final String phoneNumberId;
  final String passcode;
  final String challengeId;
  final bool isVerified;
  final String msisdn;
  final String deviceIdentifier;
  final String deviceBrand;
  final String firstName;
  final String lastName;
  final String? email;
  final String? birthDate;

  Map<String, dynamic> toJson() {
    return {
      'passcode': passcode,
      'challengeId': challengeId,
      'isVerified': isVerified,
      'msisdn': msisdn,
      'deviceIdentifier': deviceIdentifier,
      'deviceBrand': deviceBrand,
      'firstName': firstName,
      'lastName': lastName,
      if (email.orNull != null) 'email': email,
      if (birthDate.orNull != null) 'birthDate': birthDate,
    };
  }

  @override
  List<Object?> get props => [
        phoneNumberId,
        passcode,
        challengeId,
        isVerified,
        msisdn,
        deviceIdentifier,
        deviceBrand,
        firstName,
        lastName,
        email,
        birthDate,
      ];
}
