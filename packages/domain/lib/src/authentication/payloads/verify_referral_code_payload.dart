import 'package:domain/src/_core/_core.dart';

class VerifyReferralCodePayload extends BasePayload {
  const VerifyReferralCodePayload({
    required this.code,
  });

  final String code;

  Map<String, dynamic> toJson() {
    return {
      'code': code,
    };
  }

  @override
  List<Object?> get props => [
        code,
      ];
}
