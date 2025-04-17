import 'dart:convert';

import 'package:domain/domain.dart';

class CurrencyConversionModel extends BaseModel {
  const CurrencyConversionModel({
    required this.imageUrl,
    required this.isoCode,
    required this.name,
    required this.percentage,
  });

  factory CurrencyConversionModel.fromJson(Map<String, dynamic> json) {
    return CurrencyConversionModel(
      imageUrl: DP.asString(json['imageUrl']),
      isoCode: DP.asString(json['isoCode']),
      name: DP.asString(json['name']),
      percentage: DP.asString(json['percentage']),
    );
  }

  final String imageUrl;
  final String isoCode;
  final String name;
  final String percentage;

  @override
  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
      'isoCode': isoCode,
      'name': name,
      'percentage': percentage,
    };
  }

  static List<CurrencyConversionModel> buildListFromString(String jsonString) {
    final decodedData = jsonDecode(jsonString) as List;
    return decodedData.map((json) => CurrencyConversionModel.fromJson(json as Map<String, dynamic>)).toList();
  }

  @override
  List<Object?> get props => [
        imageUrl,
        isoCode,
        name,
        percentage,
      ];
}

extension CurrencyConvertionModelDomainExtension on CurrencyConversionModel {
  CurrencyConvertionEntity get toEntity {
    return CurrencyConvertionEntity(
      imageUrl: imageUrl,
      isoCode: isoCode,
      name: name,
      percentage: percentage,
    );
  }
}
