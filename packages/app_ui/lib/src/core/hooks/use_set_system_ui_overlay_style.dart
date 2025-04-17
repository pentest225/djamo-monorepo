import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void useSetSystemUiOverlayStyle({
  Color? statusBarColor,
  Color? systemNavigationBarColor,
  Brightness? statusBarIconBrightness,
  Brightness? statusBarBrightness,
}) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: statusBarColor ?? Colors.transparent,
      systemNavigationBarColor: statusBarColor ?? Colors.transparent,
      statusBarIconBrightness: statusBarIconBrightness ?? Brightness.dark,
      statusBarBrightness: statusBarBrightness ?? Brightness.dark,
    ),
  );
}
