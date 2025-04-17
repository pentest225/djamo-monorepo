import 'package:domain/src/_core/_core.dart';

class GetBeneficiariesByServiceIdentifierPayload extends BasePayload {
  const GetBeneficiariesByServiceIdentifierPayload({
    required this.serviceIdentifier,
  });

  final String serviceIdentifier;

  Map<String, dynamic> toJson() {
    return {
      'serviceId': serviceIdentifier,
    };
  }

  @override
  List<Object?> get props => [
        serviceIdentifier,
      ];
}
