import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/models/user_model.dart';
import 'package:domain/src/authentication/responses/login_client_response.dart';

class RefreshClientResponse extends LoginClientResponse {
  const RefreshClientResponse({
    required super.accessToken,
    required super.expiresIn,
    required super.client,
  });

  factory RefreshClientResponse.fromJson(Map<String, dynamic> json) {
    return RefreshClientResponse(
      accessToken: DP.asString(json['accessToken']),
      expiresIn: DP.asString(json['expiresIn']),
      client: UserModel.fromJson(DP.asMap(json['client'])),
    );
  }
}

extension RefreshClientResponseDomainExtension on RefreshClientResponse {}
