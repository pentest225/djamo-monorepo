import 'package:domain/src/_core/_core.dart';

class SellInvestProductSharesPayload extends BasePayload {
  const SellInvestProductSharesPayload({
    required this.productId,
    required this.productName,
    required this.amount,
  });

  final String productId;
  final String productName;
  final double amount;

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'productName': productName,
      'amount': amount,
    };
  }

  @override
  List<Object?> get props => [
        productId,
        productName,
        amount,
      ];
}
