import 'package:domain/src/_core/_core.dart';

typedef VaultSavingProductModels = List<VaultSavingProductModel>;

class VaultSavingProductModel extends BaseModel {
  const VaultSavingProductModel({
    required this.id,
    required this.isBlocked,
    required this.blockedDurationDays,
    required this.blockedDurationLabel,
    required this.interestRate,
  });

  factory VaultSavingProductModel.fromJson(Map<String, dynamic> json) {
    return VaultSavingProductModel(
      id: DP.asString(json['id']),
      isBlocked: DP.asBool(json['isBlocked']),
      blockedDurationDays: DP.asInt(json['blockedDurationDays']),
      blockedDurationLabel: DP.asString(json['blockedDurationLabel']),
      interestRate: DP.asDouble(json['interestRate']),
    );
  }

  final String id;
  final bool isBlocked;
  final int blockedDurationDays;
  final String blockedDurationLabel;
  final double interestRate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'isBlocked': isBlocked,
      'blockedDurationDays': blockedDurationDays,
      'blockedDurationLabel': blockedDurationLabel,
      'interestRate': interestRate,
    };
  }

  @override
  List<Object?> get props => [
        id,
        isBlocked,
        blockedDurationDays,
        blockedDurationLabel,
        interestRate,
      ];
}

extension VaultSavingProductModelDomainExtension on VaultSavingProductModel {}
