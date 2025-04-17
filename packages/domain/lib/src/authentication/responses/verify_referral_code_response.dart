import 'package:domain/src/_core/_core.dart';

class VerifyReferralCodeResponse extends BaseModel {
  const VerifyReferralCodeResponse({
    required this.referralCode,
    required this.valid,
    required this.notListed,
  });

  factory VerifyReferralCodeResponse.fromJson(Map<String, dynamic> json) {
    return VerifyReferralCodeResponse(
      referralCode: DP.asString(json['referralCode']),
      valid: DP.asBool(json['valid']),
      notListed: DP.asBool(json['notListed']),
    );
  }

  final String referralCode;
  final bool valid;
  final bool notListed;

  @override
  Map<String, dynamic> toJson() {
    return {
      'referralCode': referralCode,
      'valid': valid,
      'notListed': notListed,
    };
  }

  @override
  List<Object?> get props => [
        referralCode,
        valid,
        notListed,
      ];
}

extension VerifyReferralCodeResponseExtension on VerifyReferralCodeResponse {}
