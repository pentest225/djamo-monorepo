import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';
import 'package:flutter/services.dart';


abstract class MarketLocalDataSource {
  Future<CountryModels> loadLocalCountriesData();
}

@Injectable(as: MarketLocalDataSource)
class MarketLocalDataSourceImpl implements MarketLocalDataSource {
  @override
  Future<CountryModels> loadLocalCountriesData() async {
    final data = await rootBundle.loadString('assets/data/m_ctries_dump').then((r) {
      final decoded = DP.asListOf<JsonMap>(json.decode(utf8.decode(base64.decode(r))));
      return decoded;
    }).catchError((_) => <JsonMap>[]);
    return data.map(CountryModel.fromJson).toList();
  }

}