import 'package:dart_date/dart_date.dart';

extension CoreDateTimeExtensionX on DateTime? {
  String get getPeriodFromNow {
    final date = this;
    if (date == null) {
      return '-';
    }
    if (date.isToday) {
      return 'today';
    }
    if (date.isYesterday) {
      return 'yesterday';
    }
    return date.format('yMd');
  }
}
