import 'package:domain/src/_core/_core.dart';

class ReferralBonusModel extends BaseModel {
  const ReferralBonusModel({
    required this.bonus,
    required this.count,
    required this.ranking,
    required this.clients,
  });

  factory ReferralBonusModel.fromJson(Map<String, dynamic> json) {
    return ReferralBonusModel(
      bonus: DP.asInt(json['bonus']),
      count: DP.asInt(json['count']),
      ranking: DP.asInt(json['ranking']),
      clients: DP.asListOf(json['clients']),
    );
  }

  final int bonus;
  final int count;
  final int ranking;
  final List<JsonMap> clients;

  @override
  Map<String, dynamic> toJson() {
    return {
      'bonus': bonus,
      'count': count,
      'ranking': ranking,
      'clients': clients,
    };
  }

  @override
  List<Object?> get props => [
        bonus,
        count,
        ranking,
        clients,
      ];
}

extension ReferralBonusModelExtension on ReferralBonusModel {}
