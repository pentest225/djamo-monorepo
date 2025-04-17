import 'package:domain/src/_core/_core.dart';

class CalculateDepositFeesPayload extends BasePayload {
  const CalculateDepositFeesPayload({
    required this.accountId,
    required this.amount,
  });

  final String accountId;
  final double amount;

  Map<String, dynamic> toJson() {
    return {
      'account': {
        'id': accountId,
      },
      'amount': amount,
    };
  }

  @override
  List<Object?> get props => [
        accountId,
        amount,
      ];
}
