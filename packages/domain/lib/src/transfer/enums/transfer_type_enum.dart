enum TransferTypeEnum {
  local,
  international;
}

extension TransferTypeEnumExtension on TransferTypeEnum {
  bool get isLocal => this == TransferTypeEnum.local;
  bool get isInternational => this == TransferTypeEnum.international;
}
