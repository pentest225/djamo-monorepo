///
enum GenderEnum {
  ///
  none._(''),

  ///
  f._('female'),

  ///
  m._('male'),
  ;

  const GenderEnum._(this.code);

  ///
  bool get isNone => this == GenderEnum.none;

  ///
  static List<GenderEnum> genders = [GenderEnum.m, GenderEnum.f];

  ///
  final String code;
}
