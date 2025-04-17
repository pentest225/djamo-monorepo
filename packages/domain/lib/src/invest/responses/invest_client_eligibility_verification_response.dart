import 'package:domain/src/_core/_core.dart';

class InvestClientEligibilityVerificationResponse extends BaseResponse {
  const InvestClientEligibilityVerificationResponse({
    required this.id,
  });

  factory InvestClientEligibilityVerificationResponse.fromJson(Map<String, dynamic> json) {
    return InvestClientEligibilityVerificationResponse(
      id: DP.asString(json['id']),
    );
  }

  final String id;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }

  @override
  List<Object?> get props => [
        id,
      ];
}

extension InvestClientEligibilityVerificationResponseExtension on InvestClientEligibilityVerificationResponse {}
