extension PetitDoubleExtension on double {
  double? get notZeroOrNull => this == 0 ? null : this;
  bool get isHeightUnder680 => this < 680;
}
