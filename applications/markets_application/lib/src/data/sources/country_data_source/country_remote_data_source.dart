import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'country_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class CountryRemoteDataSource {

  @factoryMethod
  factory CountryRemoteDataSource(@factoryParam String? baseUrl) => _CountryRemoteDataSource(
        sl(instanceName: dioDefaultInstanceName),
        baseUrl: baseUrl ?? AppEnv.apiLegacyBaseUrl,
  );

  @GET('/countries')
  Future<CountryModels> getCountries();
}