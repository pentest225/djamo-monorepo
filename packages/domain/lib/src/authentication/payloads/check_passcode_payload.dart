import 'package:domain/src/_core/_core.dart';

class CheckPasscodePayload extends BasePayload {
  const CheckPasscodePayload({
    required this.passcode,
  });

  final String passcode;

  Map<String, dynamic> toJson() {
    return {
      'passcode': passcode,
    };
  }

  @override
  List<Object?> get props => [
        passcode,
      ];
}
