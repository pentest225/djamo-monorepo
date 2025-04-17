import 'package:app_ui/src/core/l10n/app_localizations.dart';
import 'package:flutter/widgets.dart';

/// Extension method to provide [AppLocalizations] to [BuildContext].
extension AppLocalizationsX on BuildContext {
  /// Returns the [AppLocalizations] instance from the current [BuildContext].
  AppLocalizations get l10n => AppLocalizations.of(this);
}
