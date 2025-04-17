import 'package:domain/src/_core/_core.dart';

class CurrencyModel extends BaseModel {
  const CurrencyModel({
    required this.name,
    required this.isoCode,
    required this.formatting,
    required this.symbol,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      name: DP.asString(json['name']),
      isoCode: DP.asString(json['isoCode']),
      formatting: DP.asString(json['formatting']),
      symbol: DP.asString(json['symbol']),
    );
  }

  final String name;
  final String isoCode;
  final String formatting;
  final String symbol;

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isoCode': isoCode,
      'formatting': formatting,
      'symbol': symbol,
    };
  }

  @override
  List<Object?> get props => [
        name,
        isoCode,
        formatting,
        symbol,
      ];
}

extension CurrencyModelExtension on CurrencyModel {}
