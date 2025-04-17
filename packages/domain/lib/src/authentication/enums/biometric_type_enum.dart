typedef BiometricConfig = ({BiometricTypeEnum type, bool enabled});

BiometricConfig emptyBiometricConfig = (type: BiometricTypeEnum.none, enabled: false);

enum BiometricTypeEnum {
  fingerprint._('fingerprint'),
  faceId._('faceId'),
  iris._('iris'),
  weak._('weak'),
  strong._('strong'),
  none._('');

  const BiometricTypeEnum._(this.key);

  final String key;
}

extension BiometricTypeEnumExtension on BiometricTypeEnum {
  bool get isNone => this == BiometricTypeEnum.none;
}
