import 'package:domain/src/_core/_core.dart';

class GetTransactionFeePayload extends BasePayload {
  const GetTransactionFeePayload({
    required this.serviceIdentifier,
    required this.amount,
  });

  final String serviceIdentifier;
  final double amount;

  Map<String, dynamic> toJson() {
    return {
      'serviceIdentifier': serviceIdentifier,
      'amount': amount,
    };
  }

  @override
  List<Object?> get props => [
        serviceIdentifier,
        amount,
      ];
}
