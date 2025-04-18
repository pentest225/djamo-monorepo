import 'package:injectable/injectable.dart';
import 'package:markets_application/src/data/sources/country_data_source/country_data_sources.dart';

import 'market_local_data_source.dart';
import 'market_remote_data_source.dart';

@injectable
class MarketDataSource {
  MarketDataSource({
    required this.local,
    required this.country,
    required this.remote
  });
  final CountryDataSource country;
  final MarketLocalDataSource local;
  final MarketsRemoteDataSource remote;
}