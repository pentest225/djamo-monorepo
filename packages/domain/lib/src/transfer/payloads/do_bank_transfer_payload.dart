import 'package:domain/src/_core/_core.dart';

class DoBankTransferPayload extends BasePayload {
  const DoBankTransferPayload({
    required this.accountId,
    required this.amount,
    required this.beneficiaryId,
    required this.serviceIdentifier,
  });

  final String accountId;
  final double amount;
  final String beneficiaryId;
  final String serviceIdentifier;

  Map<String, dynamic> toJson() {
    return {
      'accountId': accountId,
      'amount': amount,
      'beneficiaryId': beneficiaryId,
      'serviceIdentifier': serviceIdentifier,
    };
  }

  @override
  List<Object?> get props => [
        accountId,
        amount,
        beneficiaryId,
        serviceIdentifier,
      ];
}
