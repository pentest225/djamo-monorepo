import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/vaults/entities/challenge_entity.dart';

class ClientChallengesEntity extends BaseEntity {
  const ClientChallengesEntity({
    this.clientChallenge = const [],
    this.otherChallenge = const [],
  });

  final ChallengeEntities clientChallenge;
  final ChallengeEntities otherChallenge;

  static const empty = ClientChallengesEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        clientChallenge,
        otherChallenge,
      ];
}

extension ChallengesEntityExtension on ClientChallengesEntity {}
