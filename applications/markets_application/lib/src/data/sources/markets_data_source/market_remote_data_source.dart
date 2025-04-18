import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'market_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class MarketsRemoteDataSource {

  @factoryMethod
  factory MarketsRemoteDataSource(@factoryParam String? baseUrl) =>
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