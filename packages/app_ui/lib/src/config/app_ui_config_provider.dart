import 'package:app_ui/src/config/app_currency_config.dart';
import 'package:app_ui/src/config/app_locale_config.dart';
import 'package:app_ui/src/config/routes/ui_modal_routing_config.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class AppUIConfigProvider extends InheritedWidget {
  const AppUIConfigProvider({
    required AppCurrencyConfig currencyConfig,
    required AppLocaleConfig localeConfig,
    required UIModalRoutingConfig modalRoutingConfig,
    required super.child,
    super.key,
  })  : _currencyConfig = currencyConfig,
        _localeConfig = localeConfig,
        _modalRoutingConfig = modalRoutingConfig;

  static AppUIConfigProvider of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<AppUIConfigProvider>();
    assert(result != null, 'No AppUIConfigProvider found in context');
    return result!;
  }

  final AppCurrencyConfig _currencyConfig;
  final AppLocaleConfig _localeConfig;
  final UIModalRoutingConfig _modalRoutingConfig;

  AppCurrencyConfig get currency => _currencyConfig;

  AppLocaleConfig get locale => _localeConfig;

  @internal
  UIModalRoutingConfig get modalRoutingConfig => _modalRoutingConfig;

  @internal
  String formatCurrency(num value, {String? symbol, bool useLongSymbol = false, bool hideSymbol = false, int? decimalDigits}) {
    return _currencyConfig.format(
      value,
      symbol: symbol,
      useLongSymbol: useLongSymbol,
      hideSymbol: hideSymbol,
      decimalDigits: decimalDigits,
    );
  }

  @override
  bool updateShouldNotify(AppUIConfigProvider oldWidget) {
    return oldWidget._currencyConfig != _currencyConfig || oldWidget._localeConfig != _localeConfig || oldWidget._modalRoutingConfig != _modalRoutingConfig;
  }
}

extension AppUIConfigProviderX on BuildContext {
  AppUIConfigProvider get appUIConfig {
    return AppUIConfigProvider.of(this);
  }
}
