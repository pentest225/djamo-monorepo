enum LocationTypeEnum {
  none._(''),
  all._('all'),
  pickup._('pickup'),
  delivery._('delivery'),
  ;

  const LocationTypeEnum._(this.key);

  final String key;
}

extension LocationTypeEnumExtension on LocationTypeEnum {
  bool get isNone => this == LocationTypeEnum.none;

  String get getQuery {
    if (this != LocationTypeEnum.none && this != LocationTypeEnum.all) {
      return '&type=$key';
    }
    return '';
  }
}
