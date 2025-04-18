import 'dart:io';

import 'package:core/src/http/interceptors/base_url_resolver_interceptor.dart';
import 'package:core/src/http/interceptors/header_config_interceptor.dart';
import 'package:core/src/http/interceptors/public_key_pinning_guard_interceptor.dart';
import 'package:core/src/http/token/token_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:firebase_performance_dio/firebase_performance_dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const dioDefaultInstanceName = 'DIO_DEFAULT';
const dioTokenInterceptorLessInstanceName = 'DIO_TOKEN_INTERCEPTOR_LESS';
const dioCIVApiV2InstanceName = 'DIO_CIV_API_V2';

/// This class is used to create and configure Dio instances with various interceptors
/// use sl<Dio>(instanceName: dioDefaultInstanceName) to get the default instance
/// use sl<Dio>(instanceName: dioTokenInterceptorLessInstanceName) to get the instance without token interceptor
/// use sl<Dio>(instanceName: dioCIVApiV2InstanceName) to get the instance for CIV API V2
abstract class DioProvider {
  static Dio genDio({
    required BaseUrlResolverInterceptor urlResolverInterceptor,
    required PrettyDioLogger prettyDioLogger,
    required SecurityContext securityContext,
    required PKPGuardInterceptor pkpGuardInterceptor,
    TokenRefreshInterceptor? tokenInterceptor,
  }) {
    final clientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        return HttpClient(context: securityContext)
          ..badCertificateCallback = (cert, host, port) {
            return true;
          };
      },
    );
    return Dio()
      ..httpClientAdapter = clientAdapter
      ..interceptors.addAll(
        [
          urlResolverInterceptor,
          HeaderConfigInterceptor(),
          //pkpGuardInterceptor,
          if (kDebugMode) prettyDioLogger,
          if (tokenInterceptor != null) tokenInterceptor,
          if (kReleaseMode) DioFirebasePerformanceInterceptor(),
        ],
      );
  }
}
