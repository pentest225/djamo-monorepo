import 'package:domain/src/_core/_core.dart';

class PositionEntity extends BaseEntity {
  const PositionEntity({
    this.latitude = 999,
    this.longitude = 999,
  });

  final double latitude;
  final double longitude;

  static const empty = PositionEntity();
  bool get isEmpty => this == empty || !hasValidPosition;

  bool get hasValidPosition {
    if (latitude < -90 || latitude > 90) {
      return false;
    }
    if (longitude < -180 || longitude > 180) {
      return false;
    }
    return true;
  }

  @override
  List<Object?> get props => [
        latitude,
        longitude,
      ];
}

extension PositionEntityExtension on PositionEntity {}
