import 'package:domain/domain.dart';
import 'package:domain/src/markets/entities/city_entity.dart';
import 'package:domain/src/markets/entities/country_entity.dart';
import 'package:domain/src/markets/entities/location_entity.dart';
import 'package:domain/src/markets/payloads/get_cities_payload.dart';
import 'package:domain/src/markets/payloads/get_location_by_city_payload.dart';
import 'package:domain/src/markets/payloads/get_pos_payload.dart';
import 'package:injectable/injectable.dart';
import 'package:markets_application/src/data/sources/markets_data_source/market_data_sources.dart';
import 'package:markets_application/src/data/sources/markets_data_source/market_remote_data_source.dart';
import 'package:markets_application/src/domain/repository/markets_repository.dart';
import 'package:core/core.dart';

@Injectable(as: MarketsRepository)
class MarketsRepositoryImpl implements MarketsRepository {
  MarketsRepositoryImpl({
    required MarketDataSource sources,
  })  : _mapper = sl(),
        _sources = sources;

  final MarketDataSource _sources;
  final DomainAutoMapper _mapper;

  @override
  Future<CountryEntities> getCountries() async {
    final response = await _sources.country.remote.getCountries();
    return _mapper.convertList(response);
  }

  @override
  Future<String> storeCountrySuffixCode({required String suffix}) {
    return _sources.country.local.storeCurrentCountrySuffix(suffix: suffix);
  }

  @override
  Future<CityEntities> getCities({required GetCitiesPayload payload}) async {
    if (payload.marketId.isNotEmpty) {
      final response = await sl<MarketsRemoteDataSource>(param1: AppEnv.apiLegacyBaseUrl).getCitiesLegacy(marketId: payload.marketId);
      return _mapper.convertList(response);
    }
    final response = await sl<MarketsRemoteDataSource>(param1: AppEnv.apiV2BaseUrl).getCities();
    return _mapper.convertList(response);
  }

  @override
  Future<LocationEntities> getLocationByCity({
    required GetLocationByCityPayload payload,
  }) async {
    final response = await sl<MarketsRemoteDataSource>(param1: AppEnv.apiLegacyBaseUrl).getLocationByCityLegacy(
      cityId: payload.cityId,
      payload: payload,
    );
    return _mapper.convertList(response);
  }

  @override
  Future<LocationEntities> getPos({required GetPOSPayload payload}) async {
    final response = await _sources.remote.getPos(payload: payload);
    return _mapper.convertList(response);
  }

  @override
  Future<CountryEntities> loadLocalCountriesData() {
    return _sources.local.loadLocalCountriesData().then((value) {
      return _mapper.convertList<CountryModel, CountryEntity>(value);
    });
  }
}
