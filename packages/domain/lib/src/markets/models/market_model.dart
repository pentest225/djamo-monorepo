import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/common/models/models.dart';

class MarketModel extends BaseModel {
  const MarketModel({
    required this.id,
    required this.name,
    required this.isoCode,
    required this.isInProspection,
    required this.flagUrl,
    required this.currency,
    required this.extras,
  });

  factory MarketModel.fromJson(Map<String, dynamic> json) {
    return MarketModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      isoCode: DP.asString(json['isoCode']),
      isInProspection: DP.asBool(json['isInProspection']),
      flagUrl: DP.asString(json['flagUrl']),
      currency: CurrencyModel.fromJson(DP.asMap(json['currency'])),
      extras: DP.asMap(json['extras']),
    );
  }

  final String id;
  final String name;
  final String isoCode;
  final bool isInProspection;
  final String flagUrl;
  final CurrencyModel currency;
  final Map<String, dynamic> extras;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isoCode': isoCode,
      'isInProspection': isInProspection,
      'flagUrl': flagUrl,
      'currency': currency.toJson(),
      'extras': extras,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        isoCode,
        isInProspection,
        flagUrl,
        currency,
        extras,
      ];
}

extension MarketModelExtension on MarketModel {}
