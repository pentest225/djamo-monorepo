import 'package:domain/src/_core/_core.dart';

class GetP2pBeneficiaryWithReferralCodePayload extends BasePayload {
  const GetP2pBeneficiaryWithReferralCodePayload({
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
