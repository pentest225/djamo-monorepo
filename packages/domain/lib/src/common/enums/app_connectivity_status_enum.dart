enum AppConnectivityStatusEnum {
  online,
  bad,
  offline;
}

extension AppConnectivityStatusEnumExtension on AppConnectivityStatusEnum {
  bool get isOnline => this == AppConnectivityStatusEnum.online;
  bool get isBad => this == AppConnectivityStatusEnum.bad;
  bool get isOffline => this == AppConnectivityStatusEnum.offline;
}
