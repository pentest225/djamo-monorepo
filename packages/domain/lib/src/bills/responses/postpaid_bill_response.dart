import 'package:domain/src/_core/_core.dart';

typedef PostpaidBillResponses = List<PostpaidBillResponse>;

class PostpaidBillResponse extends BaseResponse {
  const PostpaidBillResponse({
    required this.billId,
    required this.providerBillingId,
    required this.amount,
    required this.billingPeriod,
    required this.dueDate,
    required this.penalityAmount,
    required this.providerResponse,
  });

  factory PostpaidBillResponse.fromJson(Map<String, dynamic> json) {
    return PostpaidBillResponse(
      billId: DP.asString(json['billId']),
      providerBillingId: DP.asString(json['providerBillingId']),
      amount: DP.asDouble(json['amount']),
      billingPeriod: DP.asString(json['billingPeriod']),
      dueDate: DP.asString(json['dueDate']),
      penalityAmount: DP.asString(json['penalityAmount']),
      providerResponse: DP.asMap(json['providerResponse']),
    );
  }

  final String billId;
  final String providerBillingId;
  final double amount;
  final String billingPeriod;
  final String dueDate;
  final String penalityAmount;
  final JsonMap providerResponse;

  DateTime? get getBillingPeriodDate {
    return DateTime.tryParse(billingPeriod);
  }

  DateTime? get getDueDate {
    return DateTime.tryParse(dueDate);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'billId': billId,
      'providerBillingId': providerBillingId,
      'amount': amount,
      'billingPeriod': billingPeriod,
      'dueDate': dueDate,
      'penalityAmount': penalityAmount,
      'providerResponse': providerResponse,
    };
  }

  @override
  List<Object?> get props => [
        billId,
        providerBillingId,
        amount,
        billingPeriod,
        dueDate,
        penalityAmount,
        providerResponse,
      ];
}

extension PostpaidBillResponseExtension on PostpaidBillResponse {
  DateTime? get getBillingPeriodDate {
    return DateTime.tryParse(billingPeriod);
  }

  DateTime? get getPaymentDeadlineDate {
    return DateTime.tryParse(dueDate);
  }
}
