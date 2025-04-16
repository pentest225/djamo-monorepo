extension PetitIntExtension on int {
  int? get notZeroOrNull => this == 0 ? null : this;
}
