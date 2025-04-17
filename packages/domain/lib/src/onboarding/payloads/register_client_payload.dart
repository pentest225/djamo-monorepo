import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class RegisterClientPayload extends BasePayload {
  const RegisterClientPayload({
    required this.passCode,
    required this.email,
    required this.gender,
    required this.firstName,
    required this.lastName,
    required this.phoneNumberVerificationId,
    required this.isNewClient,
    required this.isoCode,
    required this.e164,
    this.dateOfBirth,
  });

  final String passCode;
  final String email;
  final String gender;
  final String firstName;
  final String lastName;
  final String? dateOfBirth;
  final String phoneNumberVerificationId;
  final bool isNewClient;
  final String isoCode;
  final String e164;

  RegisterClientPayload copyWith({
    String? passCode,
    String? email,
    String? gender,
    String? firstName,
    String? lastName,
    String? dateOfBirth,
    String? phoneNumberVerificationId,
    String? marketId,
    String? e164,
    String? isoCode,
    bool? isNewClient,
  }) {
    return RegisterClientPayload(
      passCode: passCode ?? this.passCode,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      phoneNumberVerificationId: phoneNumberVerificationId ?? this.phoneNumberVerificationId,
      isNewClient: isNewClient ?? this.isNewClient,
      e164: e164 ?? this.e164,
      isoCode: isoCode ?? this.isoCode,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'passCode': passCode,
      'email': email,
      'gender': gender,
      'firstName': firstName,
      'lastName': lastName,
      if (dateOfBirth.orNull != null) 'dateOfBirth': dateOfBirth,
      'phoneNumberVerification': {'id': phoneNumberVerificationId},
      'isNewClient': isNewClient,
      'isoCode': isoCode,
      'e164': e164,
    };
  }

  static const empty = RegisterClientPayload(
    passCode: '',
    email: '',
    gender: '',
    firstName: '',
    lastName: '',
    dateOfBirth: '',
    phoneNumberVerificationId: '',
    isNewClient: true,
    isoCode: '',
    e164: '',
  );

  @override
  List<Object?> get props => [
        passCode,
        email,
        gender,
        firstName,
        lastName,
        dateOfBirth,
        phoneNumberVerificationId,
        isNewClient,
        isoCode,
        e164,
      ];
}
