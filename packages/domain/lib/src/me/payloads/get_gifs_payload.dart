import 'package:domain/src/_core/_core.dart';

class GetGIFsPayload extends BasePayload {
  const GetGIFsPayload({
    required this.apiKey,
    required this.keyword,
    required this.pos,
    this.limit = 50,
    this.mediaFilter = 'nanogif,tinygif',
  });

  final String apiKey;
  final int limit;
  final String keyword;
  final String pos;
  final String mediaFilter;

  Map<String, dynamic> toJson() {
    return {
      'key': apiKey,
      'limit': limit,
      'q': keyword,
      'pos': pos,
      'media_filter': mediaFilter,
    };
  }

  @override
  List<Object?> get props => [
        apiKey,
        limit,
        keyword,
        pos,
        mediaFilter,
      ];
}
