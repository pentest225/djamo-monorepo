import 'package:domain/src/_core/_core.dart';

class RequestVcPasscodeResetPayload extends BasePayload {
  const RequestVcPasscodeResetPayload({
    required this.phoneNumberId,
  });

  final String phoneNumberId;

  Map<String, dynamic> toJson() {
    return {
      'phoneNumberId': phoneNumberId,
    };
  }

  @override
  List<Object?> get props => [
        phoneNumberId,
      ];
}
