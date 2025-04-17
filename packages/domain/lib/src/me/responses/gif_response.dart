import 'package:domain/src/_core/_core.dart';

class GIFResponse extends BaseResponse {
  const GIFResponse({
    required this.id,
    required this.url,
    required this.smallSizeUrl,
  });

  factory GIFResponse.fromJson(Map<String, dynamic> json) {
    final id = DP.asString(json['id']);
    final jsonMedia = json['media'] as List<Map<String, dynamic>>;
    if (jsonMedia.isEmpty) return GIFResponse(id: id, url: '', smallSizeUrl: '');
    final tinyGif = jsonMedia[0].keys.contains('tinygif') ? jsonMedia[0]['tinygif'] as Map<String, dynamic> : null;
    final nanoGif = jsonMedia[0].keys.contains('nanogif') ? jsonMedia[0]['nanogif'] as Map<String, dynamic> : null;
    final tinyUrlValue = tinyGif?['url'];
    final nanoUrlValue = nanoGif?['url'];
    return GIFResponse(
      id: id,
      url: DP.asString(tinyUrlValue),
      smallSizeUrl: DP.asString(nanoUrlValue),
    );
  }

  final String id;
  final String url;
  final String smallSizeUrl;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'smallSizeUrl': smallSizeUrl,
    };
  }

  @override
  List<Object?> get props => [
        id,
        url,
        smallSizeUrl,
      ];
}

extension GIFResponseDomainExtension on GIFResponse {}
