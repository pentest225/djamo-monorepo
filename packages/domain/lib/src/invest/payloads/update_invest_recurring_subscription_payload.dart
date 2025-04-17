import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/invest/enums/recurrent_subscription_status_enum.dart';
import 'package:petit_extension/petit_extension.dart';

class UpdateInvestRecurringSubscriptionPayload extends BasePayload {
  const UpdateInvestRecurringSubscriptionPayload({
    required this.productId,
    this.status = RecurrentSubscriptionStatusEnum.unknown,
    this.recurringAmount,
    this.frequency,
  });

  final String productId;
  final double? recurringAmount;
  final String? frequency;
  final RecurrentSubscriptionStatusEnum status;

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      if (recurringAmount != null) 'recurringAmount': recurringAmount,
      if (frequency.orNull != null) 'frequency': frequency,
      if (!status.isUnknown) 'status': status.identifier,
    };
  }

  @override
  List<Object?> get props => [
        productId,
        recurringAmount,
        frequency,
        status,
      ];
}
