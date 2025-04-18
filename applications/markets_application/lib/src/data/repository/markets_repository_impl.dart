import 'package:domain/src/markets/entities/city_entity.dart';
import 'package:domain/src/markets/entities/country_entity.dart';
import 'package:domain/src/markets/entities/location_entity.dart';
import 'package:domain/src/markets/payloads/get_cities_payload.dart';
import 'package:domain/src/markets/payloads/get_location_by_city_payload.dart';
import 'package:domain/src/markets/payloads/get_pos_payload.dart';
import 'package:markets_application/src/domain/repository/markets_repository.dart';

class MarketsRepositoryImpl implements MarketsRepository {
  @override
  Future<CityEntities> getCities({required GetCitiesPayload payload}) {
    // TODO: implement getCities
    throw UnimplementedError();
  }

  @override
  Future<CountryEntities> getCountries() {
    // TODO: implement getCountries
    throw UnimplementedError();
  }

  @override
  Future<LocationEntities> getLocationByCity({required GetLocationByCityPayload payload}) {
    // TODO: implement getLocationByCity
    throw UnimplementedError();
  }

  @override
  Future<LocationEntities> getPos({required GetPOSPayload payload}) {
    // TODO: implement getPos
    throw UnimplementedError();
  }

  @override
  Future<CountryEntities> loadLocalCountriesData() {
    // TODO: implement loadLocalCountriesData
    throw UnimplementedError();
  }

  @override
  Future<String> storeCountrySuffixCode({required String suffix}) {
    // TODO: implement storeCountrySuffixCode
    throw UnimplementedError();
  }
  
}