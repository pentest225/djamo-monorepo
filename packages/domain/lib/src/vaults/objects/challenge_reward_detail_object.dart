import 'package:equatable/equatable.dart';

typedef ChallengeRewardDetailObjects = List<ChallengeRewardDetailObject>;

class ChallengeRewardDetailObject extends Equatable {
  const ChallengeRewardDetailObject({
    required this.name,
    required this.rewards,
  });

  final String name;
  final List<String> rewards;

  @override
  List<Object> get props => [name, rewards];
}
