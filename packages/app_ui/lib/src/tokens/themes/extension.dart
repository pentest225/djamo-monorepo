import 'package:app_ui/src/tokens/colors/custom_color_scheme.dart';
import 'package:app_ui/src/tokens/themes/app_theme.dart';
import 'package:app_ui/src/tokens/themes/app_ui_theme_provider.dart';
import 'package:flutter/material.dart';

/// Extension for accessing the theme data from a [BuildContext].
extension AppThemeExtension on BuildContext {
  /// Retrieves the theme data from the current build context.
  ThemeData get theme => Theme.of(this);
  //colorScheme: theme.colorScheme,
  ColorScheme get colorScheme => theme.colorScheme;

  /// Retrieves the custom color scheme
  CustomColorScheme get customColorScheme => const CustomColorScheme();

  /// Returns the current theme [AppTheme]
  AppTheme get currentTheme => AppUIThemeProvider.of(this).appTheme;

  /// Returns true if the current theme is dark mode
  bool get isDarkMode => AppUIThemeProvider.of(this).appTheme.isDark;

  /// Returns true if the current theme is light mode
  bool get isLightMode => !isDarkMode;
}
