import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/common/responses/responses.dart';
import 'package:domain/src/subscriptions/subscriptions.dart';

class GetPaymentSubscriptionsResponse extends BaseModel {
  const GetPaymentSubscriptionsResponse({
    required this.count,
    required this.limit,
    required this.cursor,
    required this.data,
  });

  factory GetPaymentSubscriptionsResponse.fromJson(Map<String, dynamic> json) {
    return GetPaymentSubscriptionsResponse(
      count: DP.asInt(json['count']),
      limit: DP.asInt(json['limit']),
      cursor: CursorResponse.fromJson(DP.asMap(json['cursor'])),
      data: DP.asListOf<JsonMap>(json['data']).map(PaymentSubscriptionModel.fromJson).toList(),
    );
  }

  final int count;
  final int limit;
  final CursorResponse cursor;
  final PaymentSubscriptionModels data;

  @override
  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'limit': limit,
      'cursor': cursor.toJson(),
      'data': data.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
        count,
        limit,
        cursor,
        data,
      ];
}

extension GetPaymentSubscriptionsResponseExtension on GetPaymentSubscriptionsResponse {}
