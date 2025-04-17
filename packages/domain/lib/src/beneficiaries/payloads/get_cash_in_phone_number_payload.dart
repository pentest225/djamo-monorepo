import 'package:domain/src/_core/_core.dart';

class GetCashInPhoneNumberPayload extends BasePayload {
  const GetCashInPhoneNumberPayload({
    required this.serviceId,
  });

  final String serviceId;

  Map<String, dynamic> toJson() {
    return {
      'serviceId': serviceId,
    };
  }

  @override
  List<Object?> get props => [
        serviceId,
      ];
}
