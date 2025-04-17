import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class BuyInvestProductSharesPayload extends BasePayload {
  const BuyInvestProductSharesPayload({
    required this.productId,
    required this.amount,
    this.recurringSubscriptionId,
    this.isFromSalarySorter = false,
  });

  final String productId;
  final double amount;
  final String? recurringSubscriptionId;
  final bool isFromSalarySorter;

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'amount': amount,
      if (recurringSubscriptionId.orNull != null) 'recurringSubscriptionId': recurringSubscriptionId,
      if (isFromSalarySorter) 'isFromSalarySorter': isFromSalarySorter,
    };
  }

  @override
  List<Object?> get props => [
        productId,
        amount,
      ];
}
