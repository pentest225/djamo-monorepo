import 'package:domain/src/_core/_core.dart';

class GetBillSummaryPayload extends BasePayload {
  const GetBillSummaryPayload({
    required this.billerId,
    required this.billNumberId,
    this.amount,
    this.additionalData = const {},
  });

  final String billerId;
  final String billNumberId;
  final double? amount;
  final JsonMap additionalData;

  Map<String, dynamic> toJson() {
    return {
      'billerId': billerId,
      'billNumberId': billNumberId,
      if (amount != null && amount! > 0) 'amount': amount,
      ...additionalData,
    };
  }

  @override
  List<Object?> get props => [
        billerId,
        billNumberId,
        amount,
        additionalData,
      ];
}
