import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/vaults/enums/enums.dart';

class CreateVaultPayload extends BasePayload {
  const CreateVaultPayload({
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
    required this.type,
    required this.productType,
    required this.savingProductId,
  });

  final String description;
  final String deadline;
  final double targetAmount;
  final bool hasChangeAutoCredit;
  final bool hasRecurringAutoCredit;
  final double recurringAutoCreditAmount;
  final String recurringAutoCreditFrequency;
  final double changeAutoCreditMultiplier;
  final String iconUrl;
  final bool creditNow;
  final VaultTypeEnum type;
  final VaultProductTypeEnum productType;
  final String savingProductId;

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
      'type': type.key,
      if (!productType.isUndefined) 'vaultProductType': productType.key,
      if (savingProductId.isNotEmpty) 'productId': savingProductId,
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
        type,
        productType,
        savingProductId,
      ];

  @override
  String toString() {
    return 'CreateVaultPayload{description: $description, deadline: $deadline, targetAmount: $targetAmount, hasChangeAutoCredit: $hasChangeAutoCredit, hasRecurringAutoCredit: $hasRecurringAutoCredit, recurringAutoCreditAmount: $recurringAutoCreditAmount, recurringAutoCreditFrequency: $recurringAutoCreditFrequency, changeAutoCreditMultiplier: $changeAutoCreditMultiplier, iconUrl: $iconUrl, creditNow: $creditNow, type: $type}';
  }
}
