import 'package:domain/src/_core/_core.dart';

class ResolveAuthenticationChallengePayload extends BasePayload {
  const ResolveAuthenticationChallengePayload({
    required this.id,
    required this.value,
  });

  final String id;
  final String value;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'value': value,
    };
  }

  @override
  List<Object?> get props => [
        id,
        value,
      ];
}
