import 'package:domain/src/_core/_core.dart';

class PositionModel extends BaseModel {
  const PositionModel({
    required this.latitude,
    required this.longitude,
  });

  factory PositionModel.fromJson(Map<String, dynamic> json) {
    return PositionModel(
      latitude: DP.asDouble(json['latitude']),
      longitude: DP.asDouble(json['longitude']),
    );
  }

  final double latitude;
  final double longitude;

  @override
  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  List<Object?> get props => [
        latitude,
        longitude,
      ];
}

extension PositionModelExtension on PositionModel {}
