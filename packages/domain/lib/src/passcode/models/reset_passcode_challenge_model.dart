import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/_core.dart';

class ResetPasscodeChallengeModel extends BaseModel {
  const ResetPasscodeChallengeModel({
    required this.id,
    required this.challengeDescription,
    required this.clientId,
  });

  factory ResetPasscodeChallengeModel.fromJson(Map<String, dynamic> json) {
    return ResetPasscodeChallengeModel(
      id: DP.asString(json['id']),
      challengeDescription: DP.asString(json.getOrElse('challengeDescription', () => json['challenge'] ?? '')),
      clientId: DP.asString(json['clientId']),
    );
  }

  final String id;
  final String challengeDescription;
  final String clientId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'challengeDescription': challengeDescription,
      'clientId': clientId,
    };
  }

  @override
  List<Object?> get props => [
        id,
        challengeDescription,
        clientId,
      ];
}

extension ResetPasscodeChallengeModelExtension on ResetPasscodeChallengeModel {}
