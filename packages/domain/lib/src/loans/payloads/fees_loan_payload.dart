import 'package:domain/src/_core/_core.dart';

class FeesLoanPayload extends BasePayload {
  const FeesLoanPayload({
    required this.productId,
    required this.amount,
    required this.isExpressLoan,
  });

  final String productId;
  final double amount;
  final bool isExpressLoan;

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'amount': amount,
      'isExpressLoan': isExpressLoan,
    };
  }

  @override
  List<Object?> get props => [
        productId,
        amount,
        isExpressLoan,
      ];
}
