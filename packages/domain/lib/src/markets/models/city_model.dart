import 'package:domain/src/_core/_core.dart';

typedef CityModels = List<CityModel>;

class CityModel extends BaseModel {
  const CityModel({
    required this.id,
    required this.name,
    required this.marketId,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      marketId: DP.asString(json['marketId']),
    );
  }

  final String id;
  final String name;
  final String marketId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'marketId': marketId,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        marketId,
      ];
}

extension CityModelExtension on CityModel {}
