import 'package:domain/src/_core/_core.dart';

class PhoneNumberKycEntity extends BaseEntity {
  const PhoneNumberKycEntity({
    this.firstName = emptyString,
    this.lastName = emptyString,
    this.email = emptyString,
    this.gender = emptyString,
    this.dateOfBirth = emptyString,
    this.status = emptyString,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String gender;
  final String dateOfBirth;
  final String status;

  static const empty = PhoneNumberKycEntity();
  bool get isEmpty => this == empty;

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

extension PhoneNumberKycEntityExtension on PhoneNumberKycEntity {}
