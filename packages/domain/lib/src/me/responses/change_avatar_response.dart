import 'package:domain/src/_core/_core.dart';

class ChangeAvatarResponse extends BaseResponse {
  const ChangeAvatarResponse({
    required this.imageUrl,
  });

  factory ChangeAvatarResponse.fromJson(Map<String, dynamic> map) {
    return ChangeAvatarResponse(
      imageUrl: DP.asString(map['imageUrl']),
    );
  }
  final String imageUrl;

  @override
  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
    };
  }

  @override
  List<Object> get props => [imageUrl];
}
