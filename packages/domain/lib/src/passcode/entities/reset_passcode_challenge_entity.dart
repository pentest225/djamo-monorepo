import 'package:domain/src/_core/_core.dart';

class ResetPasscodeChallengeEntity extends BaseEntity {
  const ResetPasscodeChallengeEntity({
    this.id = emptyString,
    this.challengeDescription = emptyString,
    this.clientId = emptyString,
  });

  final String id;
  final String challengeDescription;
  final String clientId;

  static const empty = ResetPasscodeChallengeEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        challengeDescription,
        clientId,
      ];
}

extension ResetPasscodeChallengeEntityExtension on ResetPasscodeChallengeEntity {
  bool get isSmileChallenge {
    return challengeDescription == 'smile' || challengeDescription == 'smile_challenge' || challengeDescription == 'Souriez';
  }

  bool get isCloseEyesChallenge => challengeDescription == 'close_eyes' || challengeDescription == 'close_eyes_challenge';
}
