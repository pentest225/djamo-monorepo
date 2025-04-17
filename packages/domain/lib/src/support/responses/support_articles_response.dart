import 'package:domain/domain.dart';

class SupportArticlesResponse extends BaseResponse {
  const SupportArticlesResponse({
    required this.data,
  });

  factory SupportArticlesResponse.fromJson(Map<String, dynamic> json) {
    return SupportArticlesResponse(
      data: DP.asListOf<JsonMap>(json['data']).map(SupportArticleModel.fromJson).toList(),
    );
  }

  final SupportArticlesModel data;

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

extension SupportArticlesResponseDomainExtension on SupportArticlesResponse {}
