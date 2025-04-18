import 'package:domain/domain.dart';

abstract interface class MarketsRepository {
  Future<CountryEntities> getCountries();

  Future<String> storeCountrySuffixCode({required String suffix});

  Future<CityEntities> getCities({required GetCitiesPayload payload});

  Future<LocationEntities> getLocationByCity({
    required GetLocationByCityPayload payload,
  });

  Future<LocationEntities> getPos({required GetPOSPayload payload});

  Future<CountryEntities> loadLocalCountriesData();
}
