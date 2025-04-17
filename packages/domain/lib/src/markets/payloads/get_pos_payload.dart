import 'package:domain/src/_core/_core.dart';

class GetPOSPayload extends BasePayload {
  const GetPOSPayload({
    this.isDeposit,
    this.latitude,
    this.longitude,
    this.type = 'pickup',
  });

  final double? latitude;
  final double? longitude;
  final bool? isDeposit;
  final String type;

  Map<String, dynamic> toJson() {
    final hasLatLn = latitude != null && longitude != null;
    return {
      if (hasLatLn) 'latitude': latitude,
      if (hasLatLn) 'longitude': longitude,
      if (isDeposit != null && isDeposit!) 'isDeposit': isDeposit,
      'type': type,
    };
  }

  @override
  List<Object?> get props => [
        latitude,
        longitude,
        isDeposit,
        type,
      ];
}
