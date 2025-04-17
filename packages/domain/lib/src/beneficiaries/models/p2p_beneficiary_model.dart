import 'package:domain/src/_core/_core.dart';

class P2PBeneficiaryModel extends BaseModel {
  const P2PBeneficiaryModel({
    required this.id,
    required this.phoneNumberE164,
    required this.firstName,
    required this.lastName,
    required this.photo,
    required this.referralCode,
  });

  factory P2PBeneficiaryModel.fromJson(Map<String, dynamic> json) {
    return P2PBeneficiaryModel(
      id: DP.asString(json['id']),
      phoneNumberE164: DP.asString(json['phoneNumberE164']),
      firstName: DP.asString(json['firstName']),
      lastName: DP.asString(json['lastName']),
      photo: DP.asString(json['photo']),
      referralCode: DP.asString(json['referralCode']),
    );
  }

  final String id;
  final String phoneNumberE164;
  final String firstName;
  final String lastName;
  final String photo;
  final String referralCode;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phoneNumberE164': phoneNumberE164,
      'firstName': firstName,
      'lastName': lastName,
      'photo': photo,
      'referralCode': referralCode,
    };
  }

  @override
  List<Object?> get props => [
        id,
        phoneNumberE164,
        firstName,
        lastName,
        photo,
        referralCode,
      ];
}

extension P2pBeneficiaryModelDomainExtension on P2PBeneficiaryModel {}
