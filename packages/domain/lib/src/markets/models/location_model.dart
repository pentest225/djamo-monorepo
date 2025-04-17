import 'package:domain/src/_core/_core.dart';

typedef LocationModels = List<LocationModel>;

class LocationModel extends BaseModel {
  const LocationModel({
    required this.id,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.type,
    required this.category,
    required this.label,
    required this.reference,
    required this.position,
    required this.phoneNumber,
    required this.distance,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      firstName: DP.asString(json['firstName']),
      lastName: DP.asString(json['lastName']),
      type: DP.asString(json['type']),
      category: DP.asString(json['category']),
      label: DP.asString(json['label']),
      reference: DP.asString(json['reference']),
      position: DP.asMap(json['position']),
      phoneNumber: DP.asMap(json['phoneNumber']),
      distance: DP.asDouble(json['distance']),
    );
  }

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'firstName': firstName,
      'lastName': lastName,
      'type': type,
      'category': category,
      'label': label,
      'reference': reference,
      'position': position,
      'phoneNumber': phoneNumber,
      'distance': distance,
    };
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

extension LocationModelExtension on LocationModel {}
