import 'package:domain/src/_core/_core.dart';

class GetChargePayload extends BasePayload {
  const GetChargePayload({
    required this.chargeId,
    required this.country,
  });

  final String chargeId;
  final String country;

  Map<String, dynamic> toJson() {
    return {
      'chargeId': chargeId,
      'country': country,
    };
  }

  @override
  List<Object?> get props => [
        chargeId,
        country,
      ];
}
