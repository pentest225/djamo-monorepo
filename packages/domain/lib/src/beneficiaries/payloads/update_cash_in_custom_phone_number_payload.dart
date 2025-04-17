import 'package:domain/src/beneficiaries/payloads/add_custom_cash_in_phone_number_payload.dart';

class UpdateCashInCustomPhoneNumberPayload extends AddCustomCashInPhoneNumberPayload {
  const UpdateCashInCustomPhoneNumberPayload({
    required this.id,
    required super.msisdn,
    required super.serviceId,
  });

  final String id;

  @override
  List<Object?> get props => super.props
    ..addAll(
      [
        id,
      ],
    );
}
