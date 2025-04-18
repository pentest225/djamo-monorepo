
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

@RestApi()
abstract class MarketRemoteDataSource {

  @factoryMethod
  factory MarketRemoteDataSource(@factoryParam String baseUrl) =>
      _MarketsRemoteDataSource(
        sl(instanceName: dioDefaultInstanceName),
        baseUrl: baseUrl ?? AppEnv.apiLegacyBaseUrl,
      );

  @GET('/markets/cities')
  Future<CityModels> getCities();

  @GET('/markets/{marketId}/cities?_sort=name&_order=asc')
  Future<CityModels> getCitiesLegacy({@Path('marketId') required String marketId});

  @GET('/locations/city')
  Future<LocationModels> getLocationByCity({
    @Queries() required GetLocationByCityPayload payload,
  });

  @GET('/cities/{cityId}/locations')
  Future<LocationModels> getLocationByCityLegacy({
    @Path() required String cityId,
    @Queries() required GetLocationByCityPayload payload,
  });

  @GET('/agents')
  Future<LocationModels> getPos({
    @Queries() required GetPOSPayload payload,
  });
}