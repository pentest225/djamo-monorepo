import 'package:domain/src/_core/_core.dart';

class DoMomoTransferPayload extends BasePayload {
  const DoMomoTransferPayload({
    required this.accountId,
    required this.amount,
    required this.isPayingForOperatorFees,
    required this.recipientE164,
    required this.recipientLabel,
    required this.serviceIdentifier,
  });

  final String accountId;
  final double amount;
  final bool isPayingForOperatorFees;
  final String recipientE164;
  final String recipientLabel;
  final String serviceIdentifier;

  Map<String, dynamic> toJson() {
    return {
      'accountId': accountId,
      'amount': amount,
      'isPayingForOperatorFees': isPayingForOperatorFees,
      'recipientE164': recipientE164,
      'recipientLabel': recipientLabel,
      'serviceIdentifier': serviceIdentifier,
    };
  }

  @override
  List<Object?> get props => [
        accountId,
        amount,
        isPayingForOperatorFees,
        recipientE164,
        recipientLabel,
        serviceIdentifier,
      ];
}
