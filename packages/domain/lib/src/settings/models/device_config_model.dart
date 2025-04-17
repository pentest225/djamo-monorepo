import 'package:domain/src/_core/_core.dart';

class DeviceConfigModel extends BaseModel {
  const DeviceConfigModel({
    required this.deviceUniqueIdentifier,
    required this.model,
    required this.brand,
    required this.appBuildNumber,
    required this.appVersion,
    required this.systemVersion,
    required this.locale,
  });

  factory DeviceConfigModel.fromJson(Map<String, dynamic> json) {
    return DeviceConfigModel(
      deviceUniqueIdentifier: DP.asString(json['deviceUniqueIdentifier']),
      model: DP.asString(json['model']),
      brand: DP.asString(json['brand']),
      appBuildNumber: DP.asInt(json['appBuildNumber']),
      appVersion: DP.asString(json['appVersion']),
      systemVersion: DP.asString(json['systemVersion']),
      locale: DP.asString(json['locale']),
    );
  }

  final String deviceUniqueIdentifier;
  final String model;
  final String brand;
  final int appBuildNumber;
  final String appVersion;
  final String systemVersion;
  final String locale;

  static const empty = DeviceConfigModel(
    deviceUniqueIdentifier: emptyString,
    model: emptyString,
    brand: emptyString,
    appBuildNumber: 0,
    appVersion: '',
    systemVersion: emptyString,
    locale: emptyString,
  );

  @override
  Map<String, dynamic> toJson() {
    return {
      'deviceUniqueIdentifier': deviceUniqueIdentifier,
      'model': model,
      'brand': brand,
      'appBuildNumber': appBuildNumber,
      'appVersion': appVersion,
      'systemVersion': systemVersion,
    };
  }

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

extension DeviceConfigModelExtension on DeviceConfigModel {}
