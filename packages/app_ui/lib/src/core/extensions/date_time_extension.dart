import 'package:app_ui/src/config/app_ui_config_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension AppDateTimeX on DateTime? {
  String formatToPattern(BuildContext context, {required String pattern}) {
    if (this == null) {
      return ' - ';
    }
    final locale = context.appUIConfig.locale.locale.toLanguageTag();
    return DateFormat(pattern, locale).format(this!);
  }

  DateTime addDays(int days) {
    if (this == null) {
      return DateTime.now();
    }
    return this!.add(Duration(days: days));
  }
}
