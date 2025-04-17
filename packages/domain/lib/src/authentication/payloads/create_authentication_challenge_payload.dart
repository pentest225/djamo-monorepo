import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/enums/authentication_challenge_type_enum.dart';

class CreateAuthenticationChallengePayload extends BasePayload {
  const CreateAuthenticationChallengePayload({
    required this.type,
    required this.phoneNumberId,
  });

  final AuthenticationChallengeTypeEnum type;
  final String phoneNumberId;

  Map<String, dynamic> toJson() {
    return {
      'type': type.identifier,
      'phoneNumberId': phoneNumberId,
    };
  }

  @override
  List<Object?> get props => [
        type,
        phoneNumberId,
      ];
}
