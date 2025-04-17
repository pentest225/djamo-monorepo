import 'package:domain/src/_core/_core.dart';

class CreatePhoneNumberPayload extends BasePayload {
  const CreatePhoneNumberPayload({
    required this.msisdn,
    required this.deviceIdentifier,
    required this.deviceBrand,
  });

  final String msisdn;
  final String deviceIdentifier;
  final String deviceBrand;

  Map<String, dynamic> toJson() {
    return {
      'msisdn': msisdn,
      'deviceIdentifier': deviceIdentifier,
      'deviceBrand': deviceBrand,
    };
  }

  @override
  List<Object?> get props => [
        msisdn,
        deviceIdentifier,
        deviceBrand,
      ];
}
