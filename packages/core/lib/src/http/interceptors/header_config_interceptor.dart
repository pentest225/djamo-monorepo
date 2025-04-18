import 'dart:async';
import 'dart:io';

import 'package:core/src/config/app_env.dart';
import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Interceptor that adds headers to the request.
class HeaderConfigInterceptor extends Interceptor {
  /// Constructor for the header config interceptor.
  HeaderConfigInterceptor({
    this.includeDeviceInHeader = true,
  }) {
    packageInfoFuture = PackageInfo.fromPlatform();
  }

  /// Whether to include device information in the header.
  final bool includeDeviceInHeader;

  /// Declare packageInfo here so that it will be
  /// initialized only once and not on every request
  late Future<PackageInfo> packageInfoFuture;

  @override
  FutureOr<dynamic> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll({
      'Access-Control-Allow-Origin': '*',
    });
    if (includeDeviceInHeader) {
      final packageInfo = await packageInfoFuture;
      final os = Platform.isIOS ? 'ios' : 'android';
      options.headers.addAll({
        'x-app-version': packageInfo.version,
        'x-app-env': AppEnv.appEnv,
        'x-os': os,
        'x-app-build-number': packageInfo.buildNumber,
        'x-api-key': AppEnv.apiKey,
        'user-agent': 'djamoapp-v3',
        'app': 'mobile',
      });
    }

    handler.next(options);
  }
}
