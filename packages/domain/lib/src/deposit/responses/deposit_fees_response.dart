import 'package:domain/src/_core/_core.dart';

class DepositFeesResponse extends BaseResponse {
  const DepositFeesResponse({
    required this.fee,
  });

  factory DepositFeesResponse.fromJson(Map<String, dynamic> json) {
    return DepositFeesResponse(
      fee: DP.asDouble(json['fee']),
    );
  }

  final double fee;

  @override
  Map<String, dynamic> toJson() {
    return {
      'fee': fee,
    };
  }

  @override
  List<Object?> get props => [
        fee,
      ];

  static const empty = DepositFeesResponse(
    fee: 0,
  );
}

extension DepositFeesResponseDomainExtension on DepositFeesResponse {}
