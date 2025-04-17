import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/models/user_model.dart';

class LoginClientResponse extends BaseResponse {
  const LoginClientResponse({
    required this.accessToken,
    required this.expiresIn,
    required this.client,
  });

  factory LoginClientResponse.fromJson(Map<String, dynamic> json) {
    return LoginClientResponse(
      accessToken: DP.asString(json['accessToken']),
      expiresIn: DP.asString(json['expiresIn']),
      client: UserModel.fromJson(DP.asMap(json['client'])),
    );
  }

  final String accessToken;
  final String expiresIn;
  final UserModel client;

  @override
  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'expiresIn': expiresIn,
      'client': client.toJson(),
    };
  }

  @override
  List<Object?> get props => [
        accessToken,
        expiresIn,
        client,
      ];
}

extension LoginResponseDomainExtension on LoginClientResponse {}
