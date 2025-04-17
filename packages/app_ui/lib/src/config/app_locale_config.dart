import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AppLocaleConfig extends Equatable {
  @internal
  const AppLocaleConfig({
    required Locale locale,
  }) : _locale = locale;

  factory AppLocaleConfig.en() {
    return const AppLocaleConfig(locale: Locale('en'));
  }

  factory AppLocaleConfig.fr() {
    return const AppLocaleConfig(locale: Locale('fr'));
  }

  factory AppLocaleConfig.$CI({String languageCode = 'fr'}) {
    return AppLocaleConfig(locale: Locale(languageCode, 'CI'));
  }

  factory AppLocaleConfig.$SN({String languageCode = 'fr'}) {
    return AppLocaleConfig(locale: Locale(languageCode, 'SN'));
  }

  final Locale _locale;

  Locale get locale => _locale;

  bool get isEn => _locale.languageCode == 'en';

  bool get isFrCI => _locale.languageCode == 'fr' && _locale.countryCode == 'CI';

  bool get isFrSN => _locale.languageCode == 'fr' && _locale.countryCode == 'SN';

  @override
  List<Object> get props => [_locale];
}
