enum LocationCategoryEnum {
  none._(''),
  area._('area'),
  ;

  const LocationCategoryEnum._(this.key);

  final String key;
}

extension LocationCategoryEnumExtension on LocationCategoryEnum {
  bool get isNone => this == LocationCategoryEnum.none;

  String get getQuery {
    if (this != LocationCategoryEnum.none) {
      return '&category=$key';
    }
    return '';
  }
}
