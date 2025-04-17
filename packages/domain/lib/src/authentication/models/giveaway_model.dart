import 'package:domain/src/_core/_core.dart';

class GiveawayModel extends BaseModel {
  const GiveawayModel({
    required this.nextDepositIsFree,
    required this.nextTransferIsFree,
    required this.nextCashbackGiveaway,
    required this.nextDepositIsFreeExpireDate,
    required this.nextTransferIsFreeExpireDate,
    required this.nextCashbackGiveawayExpireDate,
    required this.nextDepositIsFreeCount,
    required this.nextTransferIsFreeCount,
    required this.nextCashbackGiveawayCount,
  });

  factory GiveawayModel.fromJson(Map<String, dynamic> json) {
    return GiveawayModel(
      nextDepositIsFree: DP.asBool(json['nextDepositIsFree']),
      nextTransferIsFree: DP.asBool(json['nextTransferIsFree']),
      nextCashbackGiveaway: DP.asMap(json['nextCashbackGiveaway']),
      nextDepositIsFreeExpireDate: DP.asString(json['nextDepositIsFreeExpireDate']),
      nextTransferIsFreeExpireDate: DP.asString(json['nextTransferIsFreeExpireDate']),
      nextCashbackGiveawayExpireDate: DP.asString(json['nextCashbackGiveawayExpireDate']),
      nextDepositIsFreeCount: DP.asNum(json['nextDepositIsFreeCount']),
      nextTransferIsFreeCount: DP.asNum(json['nextTransferIsFreeCount']),
      nextCashbackGiveawayCount: DP.asNum(json['nextCashbackGiveawayCount']),
    );
  }

  final bool nextDepositIsFree;
  final bool nextTransferIsFree;
  final Map<String, dynamic> nextCashbackGiveaway;
  final String nextDepositIsFreeExpireDate;
  final String nextTransferIsFreeExpireDate;
  final String nextCashbackGiveawayExpireDate;
  final num nextDepositIsFreeCount;
  final num nextTransferIsFreeCount;
  final num nextCashbackGiveawayCount;

  @override
  Map<String, dynamic> toJson() {
    return {
      'nextDepositIsFree': nextDepositIsFree,
      'nextTransferIsFree': nextTransferIsFree,
      'nextCashbackGiveaway': nextCashbackGiveaway,
      'nextDepositIsFreeExpireDate': nextDepositIsFreeExpireDate,
      'nextTransferIsFreeExpireDate': nextTransferIsFreeExpireDate,
      'nextCashbackGiveawayExpireDate': nextCashbackGiveawayExpireDate,
      'nextDepositIsFreeCount': nextDepositIsFreeCount,
      'nextTransferIsFreeCount': nextTransferIsFreeCount,
      'nextCashbackGiveawayCount': nextCashbackGiveawayCount,
    };
  }

  @override
  List<Object?> get props => [
        nextDepositIsFree,
        nextTransferIsFree,
        nextCashbackGiveaway,
        nextDepositIsFreeExpireDate,
        nextTransferIsFreeExpireDate,
        nextCashbackGiveawayExpireDate,
        nextDepositIsFreeCount,
        nextTransferIsFreeCount,
        nextCashbackGiveawayCount,
      ];
}

extension GiveawayModelExtension on GiveawayModel {}
