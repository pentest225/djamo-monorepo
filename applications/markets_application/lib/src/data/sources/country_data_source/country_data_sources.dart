

import 'package:injectable/injectable.dart';
import 'package:markets_application/src/data/sources/country_data_source/country_local_data_source.dart';
import 'package:markets_application/src/data/sources/country_data_source/country_remote_data_source.dart';

@injectable
class CountryDataSource {
  CountryDataSource({
    required this.local,
    required this.remote,
  });
  final CountryLocalDataSource local;
  final CountryRemoteDataSource remote;
}