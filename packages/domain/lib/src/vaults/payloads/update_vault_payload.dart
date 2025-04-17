import 'package:domain/src/vaults/enums/enums.dart';
import 'package:domain/src/vaults/payloads/create_vault_payload.dart';

class UpdateVaultPayload extends CreateVaultPayload {
  const UpdateVaultPayload({
    required super.description,
    required super.deadline,
    required super.targetAmount,
    required super.hasChangeAutoCredit,
    required super.hasRecurringAutoCredit,
    required super.recurringAutoCreditAmount,
    required super.recurringAutoCreditFrequency,
    required super.changeAutoCreditMultiplier,
    required super.iconUrl,
    required super.creditNow,
    required super.type,
    required super.savingProductId,
    required this.id,
    super.productType = VaultProductTypeEnum.undefined,
  });

  final String id;

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'id': id,
    };
  }

  @override
  List<Object?> get props => super.props..addAll([id]);
}
