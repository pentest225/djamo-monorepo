import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/common/responses/responses.dart';
import 'package:domain/src/transactions/models/models.dart';

class GetTransactionsResponse extends BaseModel {
  const GetTransactionsResponse({
    required this.count,
    required this.limit,
    required this.cursor,
    required this.data,
  });

  factory GetTransactionsResponse.fromJson(Map<String, dynamic> json) {
    return GetTransactionsResponse(
      count: DP.asInt(json['count']),
      limit: DP.asInt(json['limit']),
      cursor: CursorResponse.fromJson(DP.asMap(json['cursor'])),
      data: DP.asListOf<JsonMap>(json['data']).map(TransactionModel.fromJson).toList(),
    );
  }

  final int count;
  final int limit;
  final CursorResponse cursor;
  final LedgerTransactionModels data;

  bool get hasReachedEnd => data.length < limit;

  @override
  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'limit': limit,
      'cursor': cursor.toJson(),
      'data': data.map((t) => t.toJson()).toList(),
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

extension GetLedgerTransactionsResponseExtension on GetTransactionsResponse {}
