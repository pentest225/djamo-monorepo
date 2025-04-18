import 'package:injectable/injectable.dart';
import 'package:markets_application/src/domain/usecases/country_use_cases.dart';
import 'package:markets_application/src/domain/usecases/get_cities_use_case.dart';
import 'package:markets_application/src/domain/usecases/get_location_by_city_use_case.dart';
import 'package:markets_application/src/domain/usecases/get_pos_use_case.dart';
import 'package:markets_application/src/domain/usecases/load_local_countries_data_use_case.dart';

@injectable
class MarketsUseCases {
  const MarketsUseCases({
    required this.countries,
    required this.getCities,
    required this.getPosByCity,
    required this.getPos,
    required this.loadLocalCountriesData,
  });

  final CountryUseCases countries;
  final GetCitiesUseCase getCities;
  final GetLocationByCityUseCase getPosByCity;
  final GetPosUseCase getPos;
  final LoadLocalCountriesDataUseCase loadLocalCountriesData;
}
