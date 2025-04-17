import 'package:domain/src/_core/_core.dart';

class JoinChallengePayload extends BasePayload {
  const JoinChallengePayload({
    required this.description,
    required this.deadline,
    required this.targetAmount,
    required this.hasChangeAutoCredit,
    required this.hasRecurringAutoCredit,
    required this.recurringAutoCreditAmount,
    required this.recurringAutoCreditFrequency,
    required this.changeAutoCreditMultiplier,
    required this.iconUrl,
    required this.creditNow,
    required this.challengeId,
  });

  final String description;
  final String deadline;
  final int targetAmount;
  final bool hasChangeAutoCredit;
  final bool hasRecurringAutoCredit;
  final int recurringAutoCreditAmount;
  final String recurringAutoCreditFrequency;
  final int changeAutoCreditMultiplier;
  final String iconUrl;
  final bool creditNow;
  final String challengeId;

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'deadline': deadline,
      'targetAmount': targetAmount,
      'hasChangeAutoCredit': hasChangeAutoCredit,
      'hasRecurringAutoCredit': hasRecurringAutoCredit,
      'recurringAutoCreditAmount': recurringAutoCreditAmount,
      'recurringAutoCreditFrequency': recurringAutoCreditFrequency,
      'changeAutoCreditMultiplier': changeAutoCreditMultiplier,
      'iconUrl': iconUrl,
      'creditNow': creditNow,
      'challengeId': challengeId,
    };
  }

  @override
  List<Object?> get props => [
        description,
        deadline,
        targetAmount,
        hasChangeAutoCredit,
        hasRecurringAutoCredit,
        recurringAutoCreditAmount,
        recurringAutoCreditFrequency,
        changeAutoCreditMultiplier,
        iconUrl,
        creditNow,
        challengeId,
      ];
}
