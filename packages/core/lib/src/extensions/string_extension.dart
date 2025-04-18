///
extension CoreStringX on String? {
  ///
  String get asCountrySuffix {
    return switch ((this ?? '').toLowerCase()) {
      'sn' => '-sen',
      _ => '-civ',
    };
  }
}
