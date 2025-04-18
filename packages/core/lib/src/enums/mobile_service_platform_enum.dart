import 'package:core/src/config/app_env.dart';
import 'package:di/di.dart' as ms;
import 'package:meta/meta.dart';

/// Returns the current Mobile Service Platform.
/// It can be either GMS or HMS.
/// GMS: Google Mobile Services
/// HMS: Huawei Mobile Services
MobileServicePlatformEnum get mobileServicePlatform {
  return MobileServicePlatformEnum.fromString(AppEnv.mobileServicePlatform);
}

@internal
enum MobileServicePlatformEnum {
  gms._('GMS'),
  hms._('HMS'),
  ;

  const MobileServicePlatformEnum._(this.service);

  factory MobileServicePlatformEnum.fromString(String service) {
    return MobileServicePlatformEnum.values.firstWhere(
      (e) => e.service == service,
      orElse: () => MobileServicePlatformEnum.gms,
    );
  }

  final String service;

  bool get isGMS => this == MobileServicePlatformEnum.gms;
  bool get isHMS => this == MobileServicePlatformEnum.hms;

  String get envName {
    return switch (this) {
      MobileServicePlatformEnum.gms => ms.gmsDIEnv.name,
      MobileServicePlatformEnum.hms => ms.hmsDIEnv.name,
    };
  }
}
