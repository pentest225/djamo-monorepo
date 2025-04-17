extension StringX on String? {
  String cypherNumber() {
    final s = this ?? '';
    if (s.length < 9) return s;

    /// Replace the middle of the string by *
    return s.replaceRange(s.length - 7, s.length - 2, '******');
  }
}
