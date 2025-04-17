import 'package:domain/src/_core/_core.dart';

class DeleteCustomerSubscriptionReferencePayload extends BasePayload {
  const DeleteCustomerSubscriptionReferencePayload({
    required this.subscriptionReferenceId,
  });

  final String subscriptionReferenceId;

  Map<String, dynamic> toJson() {
    return {
      'subscriptionReferenceId': subscriptionReferenceId,
    };
  }

  @override
  List<Object?> get props => [
        subscriptionReferenceId,
      ];
}
