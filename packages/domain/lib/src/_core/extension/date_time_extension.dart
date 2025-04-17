import 'package:intl/intl.dart';

/// Extension on [DateTime] to format date time
extension AppDateTimeX on DateTime? {
  /// Format date time as [pattern]
  String formatAs(String pattern, {String? locale}) {
    if (this == null) {
      return ' - ';
    }
    return DateFormat(pattern, locale).format(this!);
  }
}
