import 'package:core/src/config/app_env.dart';
import 'package:core/src/http/dio_provider.dart';
import 'package:core/src/http/token/user_token_session.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'token_refresh_api.g.dart';

@injectable
@RestApi()
abstract class TokenRefreshAPI {
  @factoryMethod
  factory TokenRefreshAPI({
    @Named(dioTokenInterceptorLessInstanceName) required Dio dio,
    @factoryParam String? baseUrl,
  }) =>
      _TokenRefreshAPI(
        dio,
        baseUrl: baseUrl ?? AppEnv.authApiBaseUrl,
      );

  @POST('/auth/jwt')
  Future<UserTokenSession> refreshJWTV1({
    @Header('Authorization') required String authorization,
    @Body() required RefreshJWTPayload payload,
  });

  @POST('/login/client')
  Future<UserTokenSession> refreshJWTV2({
    @Header('Authorization') required String authorization,
    @Body() required RefreshJWTPayload payload,
    @Header('Auth-Version') String version = '2',
  });
}
