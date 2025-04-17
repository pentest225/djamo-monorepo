import 'package:domain/src/_core/_core.dart';

class ProfileIdModel extends BaseModel {
  const ProfileIdModel({
    required this.frontPage,
    required this.backPage,
  });

  factory ProfileIdModel.fromJson(Map<String, dynamic> json) {
    return ProfileIdModel(
      frontPage: DP.asString(json['front_page']),
      backPage: DP.asString(json['back_page']),
    );
  }

  final String frontPage;
  final String backPage;

  @override
  Map<String, dynamic> toJson() {
    return {
      'frontPage': frontPage,
      'backPage': backPage,
    };
  }

  @override
  List<Object?> get props => [
        frontPage,
        backPage,
      ];
}

extension ProfileIdModelExtension on ProfileIdModel {}
