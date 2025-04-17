import 'package:app_ui/src/core/hooks/hooks.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';

class AppCurrencyConfig extends Equatable {
  @internal
  const AppCurrencyConfig({
    required this.type,
    required this.locale,
    required this.pattern,
    required this.maxLength,
    required this.decimalDigits,
    required this.symbol,
    required this.longSymbol,
    this.resolve,
  });

  //xof
  factory AppCurrencyConfig.xof({String symbol = 'F'}) {
    return AppCurrencyConfig(
      type: UICurrencyTypeEnum.xof,
      locale: 'eu',
      pattern: '##,### $symbol'.trim(),
      maxLength: 9,
      decimalDigits: 0,
      symbol: symbol,
      longSymbol: 'FCFA',
    );
  }
  //eur
  factory AppCurrencyConfig.eur({String symbol = '€', double euroFx = 655.957}) {
    return AppCurrencyConfig(
      type: UICurrencyTypeEnum.euro,
      locale: 'fr',
      pattern: '##,### $symbol'.trim(),
      maxLength: 9,
      decimalDigits: 2,
      symbol: symbol,
      longSymbol: 'Euro',
      resolve: (value) => value / euroFx,
    );
  }
  //usd
  factory AppCurrencyConfig.usd({String symbol = r'$', double dollarFx = 550.0}) {
    return AppCurrencyConfig(
      type: UICurrencyTypeEnum.dollar,
      locale: 'en',
      pattern: '##,### $symbol'.trim(),
      maxLength: 9,
      decimalDigits: 2,
      symbol: symbol,
      longSymbol: 'Dollar',
      resolve: (value) => value / dollarFx,
    );
  }

  String format(num value, {String? symbol, bool useLongSymbol = false, bool hideSymbol = false, int? decimalDigits}) {
    final amount = resolve?.call(value) ?? value;
    final s = symbol ?? (useLongSymbol ? longSymbol : this.symbol);
    final f = switch (type) {
      UICurrencyTypeEnum.xof => NumberFormat.currency(
          decimalDigits: decimalDigits ?? this.decimalDigits,
          locale: locale,
          symbol: s,
          customPattern: useReturnValue(() {
            if (hideSymbol) return pattern.replaceAll(this.symbol, '').trim();
            if (symbol == null && !useLongSymbol) return pattern;
            return pattern.replaceAll(this.symbol, s).trim();
          }),
        ),
      _ => NumberFormat.simpleCurrency(name: type.key, decimalDigits: decimalDigits ?? this.decimalDigits),
    };
    final fractionDigits = decimalDigits ?? this.decimalDigits;
    if (fractionDigits <= 0) {
      return f.format(amount.truncateToDouble());
    }
    return f.format(amount.trimToDouble(fractionDigits: fractionDigits));
  }

  @internal
  final UICurrencyTypeEnum type;
  final String locale;
  final String pattern;
  final double maxLength;
  final int decimalDigits;
  final String longSymbol;
  final String symbol;
  @internal
  final num Function(num)? resolve;

  bool get isXof => type.isXof;

  @override
  List<Object> get props => [
        locale,
        pattern,
        maxLength,
        decimalDigits,
        longSymbol,
        symbol,
      ];
}

enum UICurrencyTypeEnum {
  xof._('XOF'),
  euro._('EUR'),
  dollar._('USD'),
  ;

  const UICurrencyTypeEnum._(this.key);

  final String key;

  bool get isXof => this == UICurrencyTypeEnum.xof;
  bool get isEuro => this == UICurrencyTypeEnum.euro;
  bool get isDollar => this == UICurrencyTypeEnum.dollar;
}
