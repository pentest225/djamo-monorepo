import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class CreateClientAccountPayload extends BasePayload {
  const CreateClientAccountPayload({
    required this.firstName,
    required this.lastName,
    required this.country,
    required this.phoneNumber,
    required this.email,
    this.birthDate,
  });

  final String firstName;
  final String lastName;
  final String? birthDate;
  final String country;
  final String phoneNumber;
  final String email;

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      if (birthDate.orNull != null) 'birthDate': birthDate,
      'country': country,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        birthDate,
        country,
        phoneNumber,
        email,
      ];
}
