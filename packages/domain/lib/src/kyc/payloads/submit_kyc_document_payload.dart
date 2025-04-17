import 'dart:io';

import 'package:domain/src/_core/_core.dart';

class SubmitKycDocumentPayload extends BasePayload {
  const SubmitKycDocumentPayload({
    required this.homeLocationId,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.documentType,
    required this.frontPage,
    required this.backPage,
    required this.selfieImage,
  });

  final String homeLocationId;
  final String firstName;
  final String lastName;
  final String gender;
  final String documentType;
  final File frontPage;
  final File? backPage;
  final File selfieImage;

  Map<String, dynamic> toJson() {
    return {
      'homeLocationId': homeLocationId,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'documentType': documentType,
      'frontPage': frontPage,
      'backPage': backPage,
      'selfieImage': selfieImage,
    };
  }

  bool get hasBackPage => backPage != null;

  @override
  List<Object?> get props => [
        homeLocationId,
        firstName,
        lastName,
        gender,
        documentType,
        frontPage,
        backPage,
        selfieImage,
      ];
}
