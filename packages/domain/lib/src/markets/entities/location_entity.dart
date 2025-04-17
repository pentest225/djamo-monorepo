import 'package:domain/src/_core/_core.dart';

typedef LocationEntities = List<LocationEntity>;

class LocationEntity extends BaseEntity implements SearchableMixin {
  const LocationEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.firstName = emptyString,
    this.lastName = emptyString,
    this.type = emptyString,
    this.category = emptyString,
    this.label = emptyString,
    this.reference = emptyString,
    this.position = const {},
    this.phoneNumber = const {},
    this.distance = 0.0,
  });

  final String id;
  final String name;
  final String firstName;
  final String lastName;
  final String type;
  final String category;
  final String label;
  final String reference;
  final Map<String, dynamic> position;
  final Map<String, dynamic> phoneNumber;
  final double distance;

  static const empty = LocationEntity();
  bool get isEmpty => this == empty;

  @override
  bool hasMatchWithSearchKey({required String key}) {
    return [
      useHasMatchWithSearchKey(key: key, field: name),
      useHasMatchWithSearchKey(key: key, field: firstName),
      useHasMatchWithSearchKey(key: key, field: lastName),
    ].any((e) => e);
  }

  @override
  List<Object?> get props => [
        id,
        name,
        firstName,
        lastName,
        type,
        category,
        label,
        reference,
        position,
        phoneNumber,
        distance,
      ];
}

extension LocationEntityExtension on LocationEntity {
  String get getPOSE164 {
    return DP.asString(phoneNumber['e164']);
  }

  double get getLatitude {
    final coordinates = DP.asListOf<num>(position['coordinates']);
    return (coordinates.firstOrNull ?? 999).toDouble();
  }

  double get getLongitude {
    final coordinates = DP.asListOf<num>(position['coordinates']);
    return (coordinates.lastOrNull ?? 999).toDouble();
  }

  bool get hasValidPosition {
    if (getLatitude < -90 || getLatitude > 90) {
      return false;
    }
    if (getLongitude < -180 || getLongitude > 180) {
      return false;
    }
    return true;
  }

  bool get isCallable {
    return getPOSE164.isNotEmpty;
  }
}
