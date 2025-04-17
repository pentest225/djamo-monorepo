// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/bills/responses/postpaid_bill_response.dart';

class GetPostpaidBillsResponse extends BaseResponse {
  const GetPostpaidBillsResponse({
    required this.advanceBalanceOfInvoices,
    required this.totalInvoicesAmount,
    required this.data,
  });

  factory GetPostpaidBillsResponse.fromJson(Map<String, dynamic> json) {
    return GetPostpaidBillsResponse(
      advanceBalanceOfInvoices: DP.asDouble(json['advanceBalanceOfInvoices']),
      totalInvoicesAmount: DP.asDouble(json['totalInvoicesAmount']),
      data: DP.asListOf<JsonMap>(json['data']).map(PostpaidBillResponse.fromJson).toList(),
    );
  }

  final double advanceBalanceOfInvoices;
  final double totalInvoicesAmount;
  final PostpaidBillResponses data;

  @override
  Map<String, dynamic> toJson() {
    return {
      'advanceBalanceOfInvoices': advanceBalanceOfInvoices,
      'totalInvoicesAmount': totalInvoicesAmount,
      'data': data.map((e) => e.toJson()).toList(),
    };
  }

  static const empty = GetPostpaidBillsResponse(
    advanceBalanceOfInvoices: 0,
    totalInvoicesAmount: 0,
    data: [],
  );

  bool get isEmpty => this == GetPostpaidBillsResponse.empty;

  @override
  List<Object?> get props => [
        advanceBalanceOfInvoices,
        totalInvoicesAmount,
        data,
      ];
}

extension GetPostpaidBillsResponseDomainExtension on GetPostpaidBillsResponse {
// TODO(You): Add extension methods here
}
