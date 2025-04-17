import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/vaults/enums/vault_type_enum.dart';
import 'package:domain/src/vaults/objects/challenge_reward_detail_object.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';

typedef ChallengeEntities = List<ChallengeEntity>;

class ChallengeEntity extends BaseEntity {
  const ChallengeEntity({
    this.id = emptyString,
    this.label = emptyString,
    this.description = emptyString,
    this.iconUrl = emptyString,
    this.targetAmount = 0,
    this.reward = emptyString,
    this.deadline = emptyString,
    this.createdAt = emptyString,
    this.participantNumber = 0,
    this.winnerNumber = 0,
    this.hasChangeAutoCredit = false,
    this.hasRecurringAutoCredit = false,
    this.recurringAutoCreditAmount = 0,
    this.recurringAutoCreditFrequency = emptyString,
    this.changeAutoCreditMultiplier = 0,
    this.minimumDeposit = 0,
    this.termsOfUseIntercomId = emptyString,
    this.vaultType = emptyString,
  });

  final String id;
  final String label;
  final String description;
  final String iconUrl;
  final int targetAmount;
  final String reward;
  final String deadline;
  final String createdAt;
  final int participantNumber;
  final int winnerNumber;
  final bool hasChangeAutoCredit;
  final bool hasRecurringAutoCredit;
  final int recurringAutoCreditAmount;
  final String recurringAutoCreditFrequency;
  final int changeAutoCreditMultiplier;
  final num minimumDeposit;
  final String termsOfUseIntercomId;
  @internal
  final String vaultType;

  static const empty = ChallengeEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        label,
        description,
        iconUrl,
        targetAmount,
        reward,
        deadline,
        createdAt,
        participantNumber,
        winnerNumber,
        hasChangeAutoCredit,
        hasRecurringAutoCredit,
        recurringAutoCreditAmount,
        recurringAutoCreditFrequency,
        changeAutoCreditMultiplier,
        minimumDeposit,
        termsOfUseIntercomId,
        vaultType,
      ];
}

extension ChallengeEntityExtension on ChallengeEntity {
  VaultTypeEnum get getVaultType {
    return VaultTypeEnum.fromString(vaultType);
  }

  ChallengeRewardDetailObjects get rewards {
    if (reward.isEmpty) {
      return [];
    }

    try {
      final whitespace = RegExp(r'^\s+|\s+$');
      final noteRemoved = reward.split('= Note importante =').firstOrNull ?? '';
      final levelRegex = RegExp('= Palier [^=]+ =');
      final levels = RegExp(r'Palier\s+([^\s=]+)')
          .allMatches(noteRemoved)
          .map((e) {
            return e.group(0);
          })
          .where((e) => e.orNull != null)
          .toList();
      if (levels.isEmpty) {
        return [];
      }
      final rewards = noteRemoved.split(levelRegex).where((e) => e.replaceAll(whitespace, '').isNotEmpty).toList();
      return rewards.mapIndexed((index, l) {
        final name = levels.elementAt(index) ?? '-';
        final rewards = l.split(RegExp('= Récompense [^=]+ =')).map((e) => e.replaceAll(whitespace, '')).where((e) => e.isNotEmpty).toList();
        return ChallengeRewardDetailObject(
          name: name,
          rewards: rewards,
        );
      }).toList();
    } catch (_) {
      return [];
    }
  }

  int get daysLeft {
    final now = DateTime.now();
    final deadline = DateTime.tryParse(this.deadline);
    if (deadline == null) {
      return 0;
    }
    final days = deadline.difference(now).inDays;
    if (days <= 0) {
      return 0;
    }
    return days;
  }

  String get getName {
    return label.toLowerCase().replaceAll('challenge', '').trim().capitalize();
  }

  DateTime? get getStartDate {
    return DateTime.tryParse(createdAt);
  }

  DateTime? get getEndDate {
    return DateTime.tryParse(deadline);
  }

  bool get isPeriodDefined {
    return getStartDate != null && getEndDate != null;
  }

  bool isDeadlinePassed({DateTime? now}) {
    return getEndDate != null && daysLeft <= 0;
  }

  int get getWinnerPercentage {
    if (participantNumber == 0 || winnerNumber == 0) {
      return 0;
    }
    return ((winnerNumber / participantNumber) * 100).toInt();
  }
}
