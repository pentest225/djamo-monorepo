import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/vaults/models/models.dart';

class ClientChallengesModel extends BaseModel {
  const ClientChallengesModel({
    required this.clientChallenge,
    required this.otherChallenge,
  });

  factory ClientChallengesModel.fromJson(Map<String, dynamic> json) {
    return ClientChallengesModel(
      clientChallenge: DP.asListOf<JsonMap>(json['clientChallenge']).map(ChallengeModel.fromJson).toList(),
      otherChallenge: DP.asListOf<JsonMap>(json['otherChallenge']).map(ChallengeModel.fromJson).toList(),
    );
  }

  final ChallengeModels clientChallenge;
  final ChallengeModels otherChallenge;

  @override
  Map<String, dynamic> toJson() {
    return {
      'clientChallenge': clientChallenge.map((e) => e.toJson()).toList(),
      'otherChallenge': otherChallenge.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
        clientChallenge,
        otherChallenge,
      ];
}

extension ChallengesModelExtension on ClientChallengesModel {}
