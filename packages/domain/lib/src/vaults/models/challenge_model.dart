import 'package:domain/src/_core/_core.dart';
import 'package:meta/meta.dart';

typedef ChallengeModels = List<ChallengeModel>;

class ChallengeModel extends BaseModel {
  const ChallengeModel({
    required this.id,
    required this.label,
    required this.description,
    required this.iconUrl,
    required this.targetAmount,
    required this.reward,
    required this.deadline,
    required this.createdAt,
    required this.participantNumber,
    required this.winnerNumber,
    required this.hasChangeAutoCredit,
    required this.hasRecurringAutoCredit,
    required this.recurringAutoCreditAmount,
    required this.recurringAutoCreditFrequency,
    required this.changeAutoCreditMultiplier,
    required this.minimumDeposit,
    required this.termsOfUseIntercomId,
    required this.vaultType,
  });

  factory ChallengeModel.fromJson(Map<String, dynamic> json) {
    return ChallengeModel(
      id: DP.asString(json['id']),
      label: DP.asString(json['label']),
      description: DP.asString(json['description']),
      iconUrl: DP.asString(json['iconUrl']),
      targetAmount: DP.asInt(json['targetAmount']),
      reward: DP.asString(json['reward']),
      deadline: DP.asString(json['deadline']),
      createdAt: DP.asString(json['createdAt']),
      participantNumber: DP.asInt(json['participantNumber']),
      winnerNumber: DP.asInt(json['winnerNumber']),
      hasChangeAutoCredit: DP.asBool(json['hasChangeAutoCredit']),
      hasRecurringAutoCredit: DP.asBool(json['hasRecurringAutoCredit']),
      recurringAutoCreditAmount: DP.asInt(json['recurringAutoCreditAmount']),
      recurringAutoCreditFrequency: DP.asString(json['recurringAutoCreditFrequency']),
      changeAutoCreditMultiplier: DP.asInt(json['changeAutoCreditMultiplier']),
      minimumDeposit: DP.asNum(json['minimumDeposit']),
      termsOfUseIntercomId: DP.asString(json['termsOfUseIntercomId']),
      vaultType: DP.asString(json['vaultType']),
    );
  }

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'description': description,
      'iconUrl': iconUrl,
      'targetAmount': targetAmount,
      'reward': reward,
      'deadline': deadline,
      'createdAt': createdAt,
      'participantNumber': participantNumber,
      'winnerNumber': winnerNumber,
      'hasChangeAutoCredit': hasChangeAutoCredit,
      'hasRecurringAutoCredit': hasRecurringAutoCredit,
      'recurringAutoCreditAmount': recurringAutoCreditAmount,
      'recurringAutoCreditFrequency': recurringAutoCreditFrequency,
      'changeAutoCreditMultiplier': changeAutoCreditMultiplier,
      'minimumDeposit': minimumDeposit,
      'termsOfUseIntercomId': termsOfUseIntercomId,
      'vaultType': vaultType,
    };
  }

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

extension ChallengeModelExtension on ChallengeModel {}
