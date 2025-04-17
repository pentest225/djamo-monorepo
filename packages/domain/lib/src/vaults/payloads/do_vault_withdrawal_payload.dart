import 'package:domain/src/_core/_core.dart';

class DoVaultWithdrawalPayload extends BasePayload {
  const DoVaultWithdrawalPayload({
    required this.amount,
    required this.vaultAccountId,
  });

  final double amount;
  final String vaultAccountId;

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'vaultAccountId': vaultAccountId,
    };
  }

  @override
  List<Object?> get props => [
        amount,
        vaultAccountId,
      ];
}
