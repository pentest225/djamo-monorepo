import 'package:domain/src/_core/_core.dart';

class DoMomoDepositPayload extends BasePayload {
  const DoMomoDepositPayload({
    required this.serviceIdentifier,
    required this.recipientLabel,
    required this.recipientE164,
    required this.accountId,
    required this.amount,
    required this.otp,
    this.workflow,
  });

  final String serviceIdentifier;
  final String recipientLabel;
  final String recipientE164;
  final String accountId;
  final double amount;
  final String otp;
  final String? workflow;

  Map<String, dynamic> toJson() {
    return {
      'serviceIdentifier': serviceIdentifier,
      'recipientLabel': recipientLabel,
      'recipientE164': recipientE164,
      'accountId': accountId,
      'amount': amount,
      if (workflow != null) 'workflow': workflow,
      if (otp.isNotEmpty) 'otp': otp,
    };
  }

  @override
  List<Object?> get props => [
        serviceIdentifier,
        recipientLabel,
        recipientE164,
        accountId,
        amount,
        workflow,
        otp,
      ];
}
