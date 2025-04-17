import 'package:domain/src/_core/_core.dart';
import 'package:meta/meta.dart';

class RefreshJWTPayload extends BasePayload {
  @internal
  const RefreshJWTPayload({
    required this.accessToken,
    required this.deviceUniqueIdentifier,
    required this.phoneNumberId,
    required this.passcode,
  });

  factory RefreshJWTPayload.v1({
    required String accessToken,
  }) {
    return RefreshJWTPayload(
      accessToken: accessToken,
      deviceUniqueIdentifier: '',
      phoneNumberId: '',
      passcode: '',
    );
  }

  factory RefreshJWTPayload.v2({
    required String deviceUniqueIdentifier,
    required String phoneNumberId,
    required String passcode,
  }) {
    return RefreshJWTPayload(
      accessToken: '',
      deviceUniqueIdentifier: deviceUniqueIdentifier,
      phoneNumberId: phoneNumberId,
      passcode: passcode,
    );
  }

  final String accessToken;

  final String deviceUniqueIdentifier;
  final String phoneNumberId;
  final String passcode;

  Map<String, dynamic> toJson() {
    return {
      if (accessToken.isNotEmpty) 'accessToken': accessToken,
      if (deviceUniqueIdentifier.isNotEmpty) 'deviceUniqueIdentifier': deviceUniqueIdentifier,
      if (phoneNumberId.isNotEmpty) 'phoneNumberId': phoneNumberId,
      if (passcode.isNotEmpty) 'passcode': passcode,
    };
  }

  @override
  List<Object?> get props => [
        accessToken,
      ];
}
