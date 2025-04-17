import 'package:domain/src/_core/_core.dart';

class AuthenticationChallengeResponse extends BaseResponse {
  const AuthenticationChallengeResponse({
    required this.id,
    required this.type,
    required this.description,
  });

  factory AuthenticationChallengeResponse.fromJson(Map<String, dynamic> json) {
    return AuthenticationChallengeResponse(
      id: DP.asString(json['id']),
      type: DP.asString(json['type']),
      description: DP.asString(json['description']),
    );
  }

  final String id;
  final String type;
  final String description;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'description': description,
    };
  }

  static const empty = AuthenticationChallengeResponse(
    id: '',
    type: '',
    description: '',
  );

  @override
  List<Object?> get props => [
        id,
        type,
        description,
      ];
}

extension CreateAuthenticationChallengeResponseDomainExtension on AuthenticationChallengeResponse {}
