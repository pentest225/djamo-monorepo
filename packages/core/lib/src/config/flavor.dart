import 'package:core/src/config/app_env.dart';
import 'package:meta/meta.dart';

AppFlavorEnum get flavor => AppFlavorEnum.fromEnv(AppEnv.appEnv);

enum AppFlavorEnum {
  dev._('dev'),
  stg._('staging'),
  prod._('production'),
  ;

  const AppFlavorEnum._(this.key);

  @internal
  factory AppFlavorEnum.fromEnv(String key) {
    return AppFlavorEnum.values.firstWhere(
      (e) => e.key == key,
      orElse: () => AppFlavorEnum.dev,
    );
  }

  final String key;

  bool get isDev => this == AppFlavorEnum.dev;
  bool get isStg => this == AppFlavorEnum.stg;
  bool get isProd => this == AppFlavorEnum.prod;
}
