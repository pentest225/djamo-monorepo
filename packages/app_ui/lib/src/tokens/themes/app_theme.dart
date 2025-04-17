import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/constants.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/colors/app_colors.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:app_ui/src/tokens/typographies/typographies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Abstract class for defining app themes.
abstract class AppTheme {
  AppTheme();

  /// Retrieves the dark theme data based on the provided [context].
  factory AppTheme.clientDark(BuildContext context) => _DarkTheme(context);

  /// Retrieves the dark theme data based on the provided [context].
  factory AppTheme.businessLight(BuildContext context) => _BusinessLightTheme(context);

  /// Retrieves the light theme data based on the provided [context].
  factory AppTheme.clientLight(BuildContext context) => _LightTheme(context);

  factory AppTheme.fromJson(Map<String, dynamic> json, BuildContext context) {
    return json['isDark'] as bool ? _DarkTheme(context) : _LightTheme(context);
  }

  Map<String, dynamic> toJson() => {
        'isDark': isDark,
      };

  ThemeData get current;

  Icon get icon;

  bool get isLight => this is _LightTheme;

  bool get isDark => this is _DarkTheme;
}

///Light theme
class _LightTheme extends AppTheme {
  /// constructor
  _LightTheme(this.context);
  BuildContext context;

  /// Icon to be used in the theme switcher for light theme
  @override
  Icon get icon => const Icon(Icons.light_mode);

  @override
  ThemeData get current => _getLightTheme(context);
}

///Light theme
class _BusinessLightTheme extends AppTheme {
  /// constructor
  _BusinessLightTheme(this.context);
  BuildContext context;

  /// Icon to be used in the theme switcher for light theme
  @override
  Icon get icon => const Icon(Icons.light_mode);

  @override
  ThemeData get current {
    return _getLightTheme(context).copyWith(
      colorScheme: _businessLightColorScheme,
    );
  }
}

///Dark theme
class _DarkTheme extends AppTheme {
  _DarkTheme(this.context);
  BuildContext context;

  /// Icon to be used in the theme switcher for dark theme
  @override
  Icon get icon => const Icon(Icons.dark_mode);

  @override
  ThemeData get current => _getDarkTheme(context);
}

final _lightColorScheme = ColorScheme(
  brightness: Brightness.dark,
  // Primary
  primary: AppColors.primary.p40,
  onPrimary: AppColors.primary.p100,
  primaryContainer: AppColors.primary.p90,
  onPrimaryContainer: AppColors.primary.p10,
  primaryFixed: AppColors.primary.p90,
  primaryFixedDim: AppColors.primary.p80,
  onPrimaryFixed: AppColors.primary.p10,
  onPrimaryFixedVariant: AppColors.primary.p30,
  // Secondary
  secondary: AppColors.secondary.p40,
  onSecondary: AppColors.secondary.p100,
  secondaryContainer: AppColors.secondary.p95,
  onSecondaryContainer: AppColors.secondary.p10,
  //Tertiary
  tertiary: AppColors.tertiary.p40,
  onTertiary: AppColors.tertiary.p100,
  tertiaryContainer: AppColors.tertiary.p95,
  onTertiaryContainer: AppColors.tertiary.p10,
  tertiaryFixedDim: AppColors.tertiary.p80,
  // Error
  error: AppColors.error.p40,
  onError: AppColors.error.p100,
  errorContainer: AppColors.error.p95,
  onErrorContainer: AppColors.error.p10,
  // Surface
  surfaceDim: AppColors.neutral.p90,
  surface: AppColors.neutral.p99,
  surfaceBright: AppColors.neutral.p99,
  surfaceContainerLowest: AppColors.neutral.p100,
  surfaceContainerLow: AppColors.neutral.p99,
  surfaceContainer: AppColors.neutral.p95,
  surfaceContainerHigh: AppColors.neutral.p90,
  surfaceContainerHighest: AppColors.neutral.p90,
  onSurface: AppColors.neutral.p10,
  //
  onSurfaceVariant: const Color(0xFF49454F),
  // Inverse
  inverseSurface: AppColors.neutral.p20,
  onInverseSurface: AppColors.neutral.p95,
  inversePrimary: AppColors.primary.p80,
  // Outline
  outline: AppColors.neutral.p50,
  //
  outlineVariant: const Color(0xFFCAC4D0),
);

final _businessLightColorScheme = _lightColorScheme.copyWith(
  primary: AppColors.businessPrimary.p40,
  onPrimary: AppColors.businessPrimary.p100,
  primaryContainer: AppColors.businessPrimary.p90,
  onPrimaryContainer: AppColors.businessPrimary.p10,
  primaryFixed: AppColors.businessPrimary.p90,
  primaryFixedDim: AppColors.businessPrimary.p80,
  onPrimaryFixed: AppColors.businessPrimary.p10,
  onPrimaryFixedVariant: AppColors.businessPrimary.p30,
);

final _darkColorScheme = ColorScheme(
  brightness: Brightness.light,
  // Primary
  primary: AppColors.primary.p80,
  onPrimary: AppColors.primary.p20,
  primaryContainer: AppColors.primary.p30,
  onPrimaryContainer: AppColors.primary.p90,
  // Primary Inv
  inversePrimary: const Color(0xFF6750A4),
  // Secondary
  secondary: const Color(0xFFCCC2DC),
  onSecondary: const Color(0xFF332D41),
  secondaryContainer: const Color(0xFF4A4458),
  onSecondaryContainer: const Color(0xFFE8DEF8),
  //Tertiary
  tertiary: const Color(0xFFBDC2FF),
  onTertiary: const Color(0xFF0012A0),
  tertiaryContainer: const Color(0xFF001DDF),
  onTertiaryContainer: const Color(0xFFDFE0FF),
  // Error
  error: AppColors.error.p80,
  onError: const Color(0xFF601410),
  errorContainer: AppColors.error.p30,
  onErrorContainer: AppColors.error.p90,
  // Surface
  surface: const Color(0xFF141218),
  onSurface: const Color(0xFFE6E0E9),
  onSurfaceVariant: const Color(0xFFCAC4D0),
  // Surface Inv
  inverseSurface: const Color(0xFFE6E0E9),
  onInverseSurface: const Color(0xFF322F35),
  // Outline
  outline: const Color(0xFF938F99),
  outlineVariant: const Color(0xFF49454F),
);

ThemeData _getLightTheme(BuildContext context) {
  final colorScheme = _lightColorScheme;
  final textTheme = _getOverriddenTextTheme(context);
  final primaryTextTheme = textTheme.apply(
    //displayColor: colorScheme.onPrimary,
    //bodyColor: colorScheme.onPrimary,
    package: kPackageName,
  );

  return ThemeData(
    useMaterial3: true,
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) {
        final foregroundColor = context.theme.appBarTheme.foregroundColor;
        return AppAssetBuilder.svg(
          svg: Assets.icons.arrowBack,
          config: AssetBuilderConfig.svg(
            color: foregroundColor,
            height: AppSizes.h.s24,
            width: AppSizes.h.s24,
          ),
        );
      },
    ),
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
          systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: colorScheme.surfaceContainerLowest,
          ),
          elevation: 0,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: colorScheme.onSurface,
        ),

    fontFamily: FontFamily.gTWalsheimPro,
    colorScheme: colorScheme,
    textTheme: textTheme,
    primaryTextTheme: primaryTextTheme,
    scaffoldBackgroundColor: colorScheme.surfaceContainerLowest,
    package: kPackageName,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          height: AppSizes.h.s40,
        ),

    /// Customizing the input decoration theme
    inputDecorationTheme: _inputDecorationTheme(textTheme, colorScheme),

    /// Customizing the bottom sheet theme
    bottomSheetTheme: _bottomSheetThemeData(colorScheme),
    listTileTheme: Theme.of(context).listTileTheme.copyWith(
          titleTextStyle: textTheme.bodyLarge,
        ),
  );
}

ThemeData _getDarkTheme(BuildContext context) {
  final colorScheme = _darkColorScheme;
  final textTheme = _getOverriddenTextTheme(context);
  final primaryTextTheme = textTheme.apply(
    //displayColor: colorScheme.onPrimary,
    //bodyColor: colorScheme.onPrimary,
    package: kPackageName,
  );

  return ThemeData(
    useMaterial3: true,
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
    fontFamily: FontFamily.gTWalsheimPro,
    colorScheme: colorScheme,
    textTheme: textTheme,
    primaryTextTheme: primaryTextTheme,
    scaffoldBackgroundColor: colorScheme.surface,
    package: kPackageName,

    /// Customizing the input decoration theme
    inputDecorationTheme: _inputDecorationTheme(textTheme, colorScheme),

    /// Customizing the bottom sheet theme
    bottomSheetTheme: _bottomSheetThemeData(colorScheme),
  );
}

BottomSheetThemeData _bottomSheetThemeData(ColorScheme colorScheme) {
  return BottomSheetThemeData(
    backgroundColor: colorScheme.onPrimary,
    surfaceTintColor: colorScheme.onPrimary,
    modalBackgroundColor: colorScheme.onPrimary,
    shape: RoundedRectangleBorder(
      borderRadius: AppBorderRadius.s16.top,
    ),
    showDragHandle: true,
  );
}

InputDecorationTheme _inputDecorationTheme(
  TextTheme textTheme,
  ColorScheme colorScheme,
) {
  const defaultBorder = UnderlineInputBorder();
  return InputDecorationTheme(
    border: defaultBorder.copyWith(
      borderSide: BorderSide(
        width: AppSizes.w.custom(1),
        color: colorScheme.outline,
      ),
    ),
    enabledBorder: defaultBorder.copyWith(
      borderSide: BorderSide(
        width: AppSizes.w.custom(1),
        color: colorScheme.outline,
      ),
    ),
    disabledBorder: defaultBorder.copyWith(
      borderSide: BorderSide(
        width: AppSizes.w.custom(1),
        color: colorScheme.outline,
      ),
    ),
    focusedBorder: defaultBorder.copyWith(
      borderSide: BorderSide(
        width: AppSizes.w.custom(2),
        color: colorScheme.primary,
      ),
    ),
    errorBorder: defaultBorder.copyWith(
      borderSide: BorderSide(
        width: AppSizes.w.custom(2),
        color: colorScheme.error,
      ),
    ),
    hintStyle: textTheme.bodyLarge?.copyWith(
      color: colorScheme.onSurfaceVariant,
    ),
    labelStyle: textTheme.bodyLarge?.copyWith(
      color: colorScheme.onSurfaceVariant,
    ),
    errorStyle: textTheme.bodySmall?.copyWith(
      color: colorScheme.error,
    ),
    floatingLabelStyle: textTheme.bodySmall?.copyWith(
      color: colorScheme.primary,
    ),
  );
}

TextTheme _getOverriddenTextTheme(BuildContext context) {
  return TextTheme(
    // Headline
    displayLarge: AppTypographies().displayLarge(context),
    displayMedium: AppTypographies().displayMedium(context),
    displaySmall: AppTypographies().displaySmall(context),
    // Headline
    headlineLarge: AppTypographies().headlineLarge(context),
    headlineMedium: AppTypographies().headlineMedium(context),
    headlineSmall: AppTypographies().headlineSmall(context),
    // Title
    titleLarge: AppTypographies().titleLarge(context),
    titleMedium: AppTypographies().titleMedium(context),
    titleSmall: AppTypographies().titleSmall(context),

    // Label
    labelLarge: AppTypographies().labelLarge(context),
    labelMedium: AppTypographies().labelMedium(context),
    labelSmall: AppTypographies().labelSmall(context),

    // Body
    bodyLarge: AppTypographies().bodyLarge(context),
    bodyMedium: AppTypographies().bodyMedium(context),
    bodySmall: AppTypographies().bodySmall(context),
  );
}
