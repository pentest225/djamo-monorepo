import 'package:domain/src/authentication/payloads/login_client_payload.dart';

class RefreshClientPayload extends LoginClientPayload {
  const RefreshClientPayload({
    required super.deviceUniqueIdentifier,
    required super.phoneNumberId,
    super.passcode = '',
  });

  RefreshClientPayload copyWith({String? passcode}) {
    return RefreshClientPayload(
      deviceUniqueIdentifier: deviceUniqueIdentifier,
      phoneNumberId: phoneNumberId,
      passcode: passcode ?? this.passcode,
    );
  }
}
