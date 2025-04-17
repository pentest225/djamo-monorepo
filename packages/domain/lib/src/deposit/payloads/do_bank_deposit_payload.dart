import 'package:domain/src/_core/_core.dart';

class DoBankDepositPayload extends BasePayload {
  const DoBankDepositPayload({
    required this.serviceIdentifier,
    required this.bankId,
    required this.proofFile,
    required this.accountId,
    required this.amount,
  });

  final String serviceIdentifier;
  final String bankId;
  final String proofFile;
  final String accountId;
  final double amount;

  Map<String, dynamic> toJson() {
    return {
      'serviceIdentifier': serviceIdentifier,
      'bankId': bankId,
      'proofFile': proofFile,
      'accountId': accountId,
      'amount': amount,
    };
  }

  @override
  List<Object?> get props => [
        serviceIdentifier,
        bankId,
        proofFile,
        accountId,
        amount,
      ];
}
