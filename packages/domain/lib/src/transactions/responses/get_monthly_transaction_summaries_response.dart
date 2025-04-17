import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/transactions/models/models.dart';

class GetMonthlyTransactionSummariesResponse extends BaseModel {
  const GetMonthlyTransactionSummariesResponse({
    required this.data,
  });

  factory GetMonthlyTransactionSummariesResponse.fromJson(Map<String, dynamic> json) {
    return GetMonthlyTransactionSummariesResponse(
      data: DP.asListOf<JsonMap>(json['data']).map(MonthlyTransactionSummaryModel.fromJson).toList(),
    );
  }

  final MonthlyTransactionSummaryModels data;

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

extension GetMonthlyTransactionSummariesResponseExtension on GetMonthlyTransactionSummariesResponse {}
