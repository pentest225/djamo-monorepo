import 'package:domain/src/_core/_core.dart';

class CalculateServiceFeesPayload extends BasePayload {
  const CalculateServiceFeesPayload({
    required this.amount,
    required this.isPayingForOperatorFees,
    required this.serviceIdentifier,
    required this.accountId,
  });

  final double amount;
  final bool isPayingForOperatorFees;
  final String serviceIdentifier;
  final String accountId;

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'isPayingForOperatorFees': isPayingForOperatorFees,
      'serviceIdentifier': serviceIdentifier,
      'accountId': accountId,
    };
  }

  @override
  List<Object?> get props => [
        amount,
        isPayingForOperatorFees,
        serviceIdentifier,
        accountId,
      ];
}
