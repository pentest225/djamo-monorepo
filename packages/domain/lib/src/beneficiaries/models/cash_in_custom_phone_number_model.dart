import 'package:domain/src/_core/_core.dart';

typedef CashInCustomPhoneNumberModels = List<CashInCustomPhoneNumberModel>;

class CashInCustomPhoneNumberModel extends BaseModel {
  const CashInCustomPhoneNumberModel({
    required this.id,
    required this.msisdn,
    required this.isActive,
    required this.isVerified,
    required this.isLocked,
  });

  factory CashInCustomPhoneNumberModel.fromJson(Map<String, dynamic> json) {
    return CashInCustomPhoneNumberModel(
      id: DP.asString(json['id']),
      msisdn: DP.asString(json['msisdn']),
      isActive: DP.asBool(json['isActive']),
      isVerified: DP.asBool(json['isVerified']),
      isLocked: DP.asBool(json['isLocked']),
    );
  }

  final String id;
  final String msisdn;
  final bool isActive;
  final bool isVerified;
  final bool isLocked;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'msisdn': msisdn,
      'isActive': isActive,
      'isVerified': isVerified,
      'isLocked': isLocked,
    };
  }

  @override
  List<Object?> get props => [
        id,
        msisdn,
        isActive,
        isVerified,
        isLocked,
      ];
}

extension CashInCustomPhoneNumberModelExtension on CashInCustomPhoneNumberModel {}
