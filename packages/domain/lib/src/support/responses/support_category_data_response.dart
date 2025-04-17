import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/support/models/support_category_model.dart';

class SupportCategoryDataResponse extends BaseResponse {
  const SupportCategoryDataResponse({
    required this.data,
  });

  factory SupportCategoryDataResponse.fromJson(Map<String, dynamic> json) {
    return SupportCategoryDataResponse(
      data: DP.asListOf<JsonMap>(json['data']).map(SupportCategoryModel.fromJson).toList(),
    );
  }

  final SupportCategoriesModel data;

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

extension SupportCategoryDataResponseDomainExtension on SupportCategoryDataResponse {}
