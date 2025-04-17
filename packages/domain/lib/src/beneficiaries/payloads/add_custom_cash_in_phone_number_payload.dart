import 'package:domain/src/_core/_core.dart';

class AddCustomCashInPhoneNumberPayload extends BasePayload {
  const AddCustomCashInPhoneNumberPayload({
    required this.serviceId,
    required this.msisdn,
  });

  final String serviceId;
  final String msisdn;

  Map<String, dynamic> toJson() {
    return {
      'serviceId': serviceId,
      'msisdn': msisdn,
    };
  }

  @override
  List<Object?> get props => [
        serviceId,
        msisdn,
      ];
}
