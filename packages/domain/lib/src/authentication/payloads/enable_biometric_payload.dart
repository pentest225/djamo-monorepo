import 'package:domain/src/_core/_core.dart';

class EnableBiometricPayload extends BasePayload {
  const EnableBiometricPayload({
    required this.enabled,
    required this.reason,
  });

  final bool enabled;
  final String reason;

  @override
  List<Object?> get props => [
        enabled,
        reason,
      ];
}
