import 'package:domain/src/_core/_core.dart';

typedef VaultModels = List<VaultModel>;

class VaultModel extends BaseModel {
  const VaultModel({
    required this.id,
    required this.description,
    required this.deadline,
    required this.targetAmount,
    required this.hasChangeAutoCredit,
    required this.changeAutoCreditMultiplier,
    required this.hasRecurringAutoCredit,
    required this.recurringAutoCreditAmount,
    required this.recurringAutoCreditFrequency,
    required this.iconUrl,
    required this.accountId,
    required this.vaultBalance,
    required this.createdAt,
    required this.vaultChallenge,
    required this.type,
    required this.interestEarned,
    required this.interestPosted,
    required this.interestRate,
    required this.productId,
  });

  factory VaultModel.fromJson(Map<String, dynamic> json) {
    return VaultModel(
      id: DP.asString(json['id']),
      description: DP.asString(json['description']),
      deadline: DP.asString(json['deadline']),
      targetAmount: DP.asDouble(json['targetAmount']),
      hasChangeAutoCredit: DP.asBool(json['hasChangeAutoCredit']),
      changeAutoCreditMultiplier: DP.asDouble(json['changeAutoCreditMultiplier']),
      hasRecurringAutoCredit: DP.asBool(json['hasRecurringAutoCredit']),
      recurringAutoCreditAmount: DP.asDouble(json['recurringAutoCreditAmount']),
      recurringAutoCreditFrequency: DP.asString(json['recurringAutoCreditFrequency']),
      iconUrl: DP.asString(json['iconUrl']),
      accountId: DP.asString(json['accountId']),
      vaultBalance: DP.asDouble(json['vaultBalance']),
      createdAt: DP.asString(json['createdAt']),
      vaultChallenge: DP.asString(json['vaultChallenge']),
      type: DP.asString(json['type']),
      interestEarned: DP.asDouble(json['interestEarned']),
      interestPosted: DP.asDouble(json['interestPosted']),
      interestRate: DP.asDouble(json['interestRate']),
      productId: DP.asString(json['productId']),
    );
  }

  final String id;
  final String deadline;
  final String description;
  final double targetAmount;
  final bool hasChangeAutoCredit;
  final double changeAutoCreditMultiplier;
  final bool hasRecurringAutoCredit;
  final double recurringAutoCreditAmount;
  final String recurringAutoCreditFrequency;
  final String iconUrl;
  final String accountId;
  final double vaultBalance;
  final String createdAt;
  final String vaultChallenge;
  final String type;
  final double interestEarned;
  final double interestPosted;
  final double interestRate;
  final String productId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'deadline': deadline,
      'targetAmount': targetAmount,
      'hasChangeAutoCredit': hasChangeAutoCredit,
      'changeAutoCreditMultiplier': changeAutoCreditMultiplier,
      'hasRecurringAutoCredit': hasRecurringAutoCredit,
      'recurringAutoCreditAmount': recurringAutoCreditAmount,
      'recurringAutoCreditFrequency': recurringAutoCreditFrequency,
      'iconUrl': iconUrl,
      'accountId': accountId,
      'vaultBalance': vaultBalance,
      'createdAt': createdAt,
      'vaultChallenge': vaultChallenge,
      'type': type,
      'interestEarned': interestEarned,
      'interestPosted': interestPosted,
      'interestRate': interestRate,
      'productId': productId,
    };
  }

  @override
  List<Object?> get props => [
        id,
        description,
        deadline,
        targetAmount,
        hasChangeAutoCredit,
        changeAutoCreditMultiplier,
        hasRecurringAutoCredit,
        recurringAutoCreditAmount,
        recurringAutoCreditFrequency,
        iconUrl,
        accountId,
        vaultBalance,
        createdAt,
        vaultChallenge,
        type,
        interestEarned,
        interestPosted,
        interestRate,
        productId,
      ];
}

extension VaultModelExtension on VaultModel {}
