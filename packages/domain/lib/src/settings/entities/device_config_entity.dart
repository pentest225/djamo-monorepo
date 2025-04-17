import 'dart:developer';

import 'package:domain/src/_core/_core.dart';

class DeviceConfigEntity extends BaseEntity {
  const DeviceConfigEntity({
    this.deviceUniqueIdentifier = emptyString,
    this.model = emptyString,
    this.brand = emptyString,
    this.appBuildNumber = 0,
    this.appVersion = emptyString,
    this.systemVersion = emptyString,
    this.locale = emptyString,
  });

  final String deviceUniqueIdentifier;
  final String model;
  final String brand;
  final int appBuildNumber;
  final String appVersion;
  final String systemVersion;
  final String locale;

  String get getLocaleLanguageCodeOrDefault {
    return 'fr';
    //return locale.split('-').firstOrNull ?? 'fr';
  }

  static const empty = DeviceConfigEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        deviceUniqueIdentifier,
        model,
        brand,
        appBuildNumber,
        appVersion,
        systemVersion,
        locale,
      ];
}

extension DeviceConfigEntityExtension on DeviceConfigEntity {
  bool get isIOS15_4 => systemVersion == '15.4';
  String get getAppVersionName {
    return 'v$appVersion build($appBuildNumber)';
  }

  void logPretty() {
    log(
      '\n📲 Device Config'
      '\n\tdeviceUniqueIdentifier: $deviceUniqueIdentifier,'
      '\n\tmodel: $model,'
      '\n\tbrand: $brand,'
      '\n\tappBuildNumber: $appBuildNumber,'
      '\n\tappVersion: $appBuildNumber,'
      '\n\tsystemVersion: $systemVersion'
      '\n\tlocale: $locale'
      '\n📲',
    );
  }
}
