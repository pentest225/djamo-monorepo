import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/me/responses/gif_response.dart';

class GetGIFsResponse extends BaseResponse {
  const GetGIFsResponse({
    required this.results,
    required this.next,
  });

  factory GetGIFsResponse.fromJson(Map<String, dynamic> json) {
    return GetGIFsResponse(
      results: DP.asListOf<JsonMap>(json['results']).map(GIFResponse.fromJson).toList(),
      next: DP.asString(json['next']),
    );
  }

  final List<GIFResponse> results;
  final String next;

  @override
  Map<String, dynamic> toJson() {
    return {
      'results': results.map((r) => r.toJson()).toList(),
      'next': next,
    };
  }

  static const empty = GetGIFsResponse(
    results: [],
    next: '',
  );

  @override
  List<Object?> get props => [
        results,
        next,
      ];
}

extension GetGifsResponseDomainExtension on GetGIFsResponse {}
