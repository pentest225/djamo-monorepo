import 'package:domain/src/_core/_core.dart';

class LoanReimbursePayload extends BasePayload {
  const LoanReimbursePayload({
    required this.amount,
    required this.loanId,
  });

  final double amount;
  final String loanId;

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'loanId': loanId,
    };
  }

  @override
  List<Object?> get props => [
        amount,
        loanId,
      ];
}
