import 'dart:async';

import 'package:core/src/http/token/token_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

@lazySingleton
class TokenRefreshInterceptor extends QueuedInterceptor {
  TokenRefreshInterceptor({
    required TokenService service,
    required Lock lock,
  })  : _service = service,
        _lock = lock;

  final TokenService _service;
  final Lock _lock;

  Dio get _dio => _service.dio;

  String get _authorization => _service.authorization;

  bool get _isAuthenticated => _service.isAuthenticated;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Authorization'] = _authorization;
    return handler.next(options);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (!_isAuthenticated) {
      return handler.next(err);
    }
    if (err.response?.statusCode != 401 && err.response?.statusCode != 403) {
      return handler.next(err);
    }
    try {
      await _lock.synchronized(
        () async {
          if (err.requestOptions.headers['Authorization'] != _authorization) {
            // Token has already been refreshed by another request
            return handler.resolve(await _dio.fetch(err.requestOptions..headers['Authorization'] = _authorization));
          }

          final refreshResponse = await _service.refreshToken().catchError((_) => null);
          if (refreshResponse == null) {
            return handler.next(err);
          }

          // Retry the original request with the new token
          err.requestOptions.headers['Authorization'] = refreshResponse.getBearer;
          return handler.resolve(await _dio.fetch(err.requestOptions));
        },
      );
    } catch (e) {
      return handler.next(err);
    }
  }
}
