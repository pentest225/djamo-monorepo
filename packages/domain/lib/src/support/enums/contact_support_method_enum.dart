enum ContactSupportMethodEnum {
  call,
  messenger;
}

extension ContactSupportMethodEnumExtension on ContactSupportMethodEnum {
  bool get isCall => this == ContactSupportMethodEnum.call;
}
