import 'package:domain/src/_core/_core.dart';

class AuthenticateWithBiometricPayload extends BasePayload {
  const AuthenticateWithBiometricPayload({
    required this.reason,
  });

  final String reason;

  Map<String, dynamic> toJson() {
    return {
      'reason': reason,
    };
  }

  @override
  List<Object?> get props => [
        reason,
      ];
}
