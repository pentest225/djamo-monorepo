import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/transactions/models/transaction_daily_stats_model.dart';

class GetTransactionsDailyStatsResponse extends BaseResponse {
  const GetTransactionsDailyStatsResponse({
    required this.data,
  });

  factory GetTransactionsDailyStatsResponse.fromJson(Map<String, dynamic> json) {
    return GetTransactionsDailyStatsResponse(
      data: DP.asListOf<JsonMap>(json['data']).map(TransactionDailyStatsModel.fromJson).toList(),
    );
  }

  final TransactionDailyStatsModels data;

  @override
  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
        data,
      ];
}

extension GetTransactionsDailyStatsResponseDomainExtension on GetTransactionsDailyStatsResponse {}
