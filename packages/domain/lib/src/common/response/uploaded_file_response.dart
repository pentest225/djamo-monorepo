import 'package:domain/src/_core/_core.dart';

class UploadedFileResponse extends BaseResponse {
  const UploadedFileResponse({
    required this.url,
    required this.signedUrl,
  });

  factory UploadedFileResponse.fromJson(Map<String, dynamic> json) {
    return UploadedFileResponse(
      url: DP.asString(json['url']),
      signedUrl: DP.asString(json['signedUrl']),
    );
  }

  /// This is the Key to the ressource on the remote (even if the name is url)
  /// With this "url" the backend will be able to access the ressource by
  /// generating signed url.
  final String url;

  /// This is a temporary signed url to access the ressource.
  /// After a while it will expire and we wont be able to access the ressource
  final String signedUrl;

  @override
  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'signedUrl': signedUrl,
    };
  }

  @override
  List<Object?> get props => [
        url,
        signedUrl,
      ];
}

extension UploadedFileResponseExtension on UploadedFileResponse {}
