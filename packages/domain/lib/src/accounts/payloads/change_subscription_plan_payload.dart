import 'package:domain/src/_core/_core.dart';

class ChangeSubscriptionPlanPayload extends BasePayload {
  const ChangeSubscriptionPlanPayload({
    required this.productId,
  });

  final String productId;

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
    };
  }

  @override
  List<Object?> get props => [
        productId,
      ];
}
