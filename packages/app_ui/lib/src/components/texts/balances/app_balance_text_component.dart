import 'package:app_ui/src/components/texts/balances/app_hidden_balance_component.dart';
import 'package:app_ui/src/config/app_ui_config_provider.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/hooks/use_return_value.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';

class AppBalanceTextComponent extends StatelessWidget {
  const AppBalanceTextComponent({
    required this.balance,
    this.decimalDigits,
    super.key,
    this.isBalanceVisible = true,
    this.isMini = false,
    this.onPressed,
    this.animationDuration,
    this.locale,
    this.color,
    this.prefix = '',
    this.suffix,
    this.animate = true,
    this.style,
  });

  final bool animate;
  final ValueHistory<num> balance;
  final int? decimalDigits;
  final bool isBalanceVisible;
  final bool isMini;
  final VoidCallback? onPressed;
  final Duration? animationDuration;

  /// The locale to use for formatting the number.
  /// If not provided, the locale from the [AppUIConfigProvider].locale will be used.
  final Locale? locale;
  final Color? color;
  final String prefix;

  /// The suffix to display after the balance.
  /// If not provided, the currency symbol from the [AppUIConfigProvider].currency.symbol will be used.
  final String? suffix;

  @internal
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final fractionDigits = decimalDigits ?? context.appUIConfig.currency.decimalDigits;
    final begin = animate ? balance.previous : balance.current;
    final end = balance.current;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: SizedBox(
        height: isMini ? AppSizes.h.custom(30) : AppSizes.h.custom(36),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child: useReturnValue(
            () {
              if (!isBalanceVisible) {
                return AppHiddenBalanceComponent(
                  isMini: isMini,
                );
              }
              return RepaintBoundary(
                child: Countup(
                  precision: fractionDigits,
                  begin: fractionDigits > 0 ? begin.trimToDouble(fractionDigits: fractionDigits) : begin.truncateToDouble(),
                  end: fractionDigits > 0 ? end.trimToDouble(fractionDigits: fractionDigits) : end.truncateToDouble(),
                  duration: animationDuration ?? const Duration(milliseconds: 1500),
                  separator: '.',
                  style: style ??
                      useReturnValue(() {
                        if (isMini) {
                          return context.theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: color,
                          );
                        }
                        return context.theme.textTheme.headlineMedium?.copyWith(
                          color: color,
                        );
                      }),
                  suffix: suffix.orNull ?? ' ${context.appUIConfig.currency.symbol}',
                  locale: locale ?? context.appUIConfig.locale.locale,
                  prefix: prefix,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
