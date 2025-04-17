import 'package:domain/src/_core/_core.dart';

class SaveReferralCodePayload extends BasePayload {
  const SaveReferralCodePayload({
    required this.code,
  });

  final String code;

  Map<String, dynamic> toJson() {
    return {
      'referralRewardCode': code,
    };
  }

  @override
  List<Object?> get props => [
        code,
      ];
}
