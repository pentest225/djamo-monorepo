import 'package:app_ui/src/core/behaviors/masks/use_currency_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<TextInputFormatter> useCurrencyInputFormatters(
  BuildContext context, {
  String locale = 'eu',
  String customPattern = '##,###',
  int maxLength = 10,
  String? symbol,
}) {
  return [
    useCurrencyInputFormatter(
      context,
      locale: locale,
      customPattern: customPattern,
      symbol: symbol,
    ),
    LengthLimitingTextInputFormatter(maxLength),
  ];
}
