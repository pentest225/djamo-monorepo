import 'package:domain/src/_core/_core.dart';

class LoanCreationPayload extends BasePayload {
  const LoanCreationPayload({
    required this.accountId,
    required this.productId,
    required this.offerId,
    required this.amount,
    required this.isExpressLoan,
  });

  final String accountId;
  final String productId;
  final String offerId;
  final double amount;
  final bool isExpressLoan;

  Map<String, dynamic> toJson() {
    return {
      'accountId': accountId,
      'productId': productId,
      'offerId': offerId,
      'amount': amount,
      'isExpressLoan': isExpressLoan,
    };
  }

  @override
  List<Object?> get props => [
        accountId,
        productId,
        offerId,
        amount,
        isExpressLoan,
      ];
}
