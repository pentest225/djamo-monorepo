import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/models/models.dart';

class PhoneNumberResetModel extends BaseModel {
  const PhoneNumberResetModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.isActive,
    required this.searchableText,
    required this.trials,
    required this.code,
    required this.isVerified,
    required this.type,
    required this.phoneNumber,
  });

  factory PhoneNumberResetModel.fromJson(Map<String, dynamic> json) {
    return PhoneNumberResetModel(
      id: DP.asString(json['id']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
      deletedAt: DP.asString(json['deletedAt']),
      isActive: DP.asBool(json['isActive']),
      searchableText: DP.asString(json['searchableText']),
      trials: DP.asInt(json['trials']),
      code: DP.asString(json['code']),
      isVerified: DP.asBool(json['isVerified']),
      type: DP.asString(json['type']),
      phoneNumber: PhoneNumberModel.fromJson(DP.asMap(json['phoneNumber'])),
    );
  }

  final String id;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;
  final bool isActive;
  final String searchableText;
  final int trials;
  final String code;
  final bool isVerified;
  final String type;
  final PhoneNumberModel phoneNumber;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
      'isActive': isActive,
      'searchableText': searchableText,
      'trials': trials,
      'code': code,
      'isVerified': isVerified,
      'type': type,
      'phoneNumber': phoneNumber.toJson(),
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
        trials,
        code,
        isVerified,
        type,
        phoneNumber,
      ];
}

extension PhoneNumberResetModelExtension on PhoneNumberResetModel {}
