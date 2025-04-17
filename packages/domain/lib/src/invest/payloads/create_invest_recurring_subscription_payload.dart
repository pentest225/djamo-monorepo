import 'package:domain/src/_core/_core.dart';

class CreateInvestRecurringSubscriptionPayload extends BasePayload {
  const CreateInvestRecurringSubscriptionPayload({
    required this.productId,
    required this.recurringAmount,
    required this.frequency,
  });

  final String productId;
  final double recurringAmount;
  final String frequency;

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'recurringAmount': recurringAmount,
      'frequency': frequency,
    };
  }

  @override
  List<Object?> get props => [
        productId,
        recurringAmount,
        frequency,
      ];
}
