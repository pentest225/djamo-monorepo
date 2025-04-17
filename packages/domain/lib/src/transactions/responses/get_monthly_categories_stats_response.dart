import 'package:domain/src/_core/_core.dart';

import 'package:domain/src/transactions/models/monthly_category_stats_model.dart';

class GetMonthlyCategoriesStatsResponse extends BaseResponse {
  const GetMonthlyCategoriesStatsResponse({
    required this.data,
  });

  factory GetMonthlyCategoriesStatsResponse.fromJson(Map<String, dynamic> json) {
    return GetMonthlyCategoriesStatsResponse(
      data: DP.asListOf<JsonMap>(json['data']).map(MonthlyCategoryStatsModel.fromJson).toList(),
    );
  }

  final MonthlyCategoryStatsModels data;

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

extension GetMonthlyCategoriesStatsResponseDomainExtension on GetMonthlyCategoriesStatsResponse {}
