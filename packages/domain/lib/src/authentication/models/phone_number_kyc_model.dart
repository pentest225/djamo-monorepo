import 'package:domain/src/_core/_core.dart';

class PhoneNumberKycModel extends BaseModel {
  const PhoneNumberKycModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.dateOfBirth,
    required this.status,
  });

  factory PhoneNumberKycModel.fromJson(Map<String, dynamic> json) {
    return PhoneNumberKycModel(
      firstName: DP.asString(json['firstName']),
      lastName: DP.asString(json['lastName']),
      email: DP.asString(json['email']),
      gender: DP.asString(json['gender']),
      dateOfBirth: DP.asString(json['dateOfBirth']),
      status: DP.asString(json['status']),
    );
  }

  final String firstName;
  final String lastName;
  final String email;
  final String gender;
  final String dateOfBirth;
  final String status;

  @override
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'status': status,
    };
  }

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        email,
        gender,
        dateOfBirth,
        status,
      ];
}

extension PhoneNumberKycModelExtension on PhoneNumberKycModel {}
