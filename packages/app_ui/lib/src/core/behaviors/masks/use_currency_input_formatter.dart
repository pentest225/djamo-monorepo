import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

CurrencyTextInputFormatter useCurrencyInputFormatter(
  BuildContext context, {
  String locale = 'eu',
  String customPattern = '##,###',
  int maxLength = 9,
  int decimalDigits = 0,
  String? symbol,
}) {
  return CurrencyTextInputFormatter(
    NumberFormat.currency(
      decimalDigits: decimalDigits,
      locale: locale,
      symbol: symbol,
      customPattern: customPattern,
    ),
  );
}
