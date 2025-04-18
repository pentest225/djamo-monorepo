/// This extension helps computes last and first day of the current month
extension FirstLastDayOfMonth on DateTime {
  /// Returns the first day of the current month.
  DateTime get firstDayOfMonth {
    return DateTime(year, month);
  }

  /// Returns the last day of the current month.
  DateTime get lastDayOfMonth {
    return DateTime(year, month + 1).subtract(const Duration(days: 1));
  }
}
