import 'package:domain/src/_core/_core.dart';

class UpdatePasscodePayload extends BasePayload {
  const UpdatePasscodePayload({
    required this.oldPassCode,
    required this.passCode,
  });

  final String oldPassCode;
  final String passCode;

  Map<String, dynamic> toJson() {
    return {
      'oldPassCode': oldPassCode,
      'passCode': passCode,
    };
  }

  @override
  List<Object?> get props => [
        oldPassCode,
        passCode,
      ];
}
