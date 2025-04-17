import 'package:app_ui/src/config/app_ui_config_provider.dart';
import 'package:flutter/material.dart';

extension NumCurrencyExtension on num? {
  String toCurrency(
    BuildContext context, {
    String? symbol,
    bool useLongSymbol = false,
    bool hideSymbol = false,
    int? decimalDigits,
  }) {
    return context.appUIConfig.formatCurrency(
      this ?? 0,
      symbol: symbol,
      useLongSymbol: useLongSymbol,
      hideSymbol: hideSymbol,
      decimalDigits: decimalDigits,
    );
  }
}
