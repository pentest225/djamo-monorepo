import 'package:app_ui/src/core/constants.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

abstract interface class _Typographies {
  TextStyle? displayLarge(BuildContext context);
  TextStyle? displayMedium(BuildContext context);
  TextStyle? displaySmall(BuildContext context);
  TextStyle? headlineLarge(BuildContext context);
  TextStyle? headlineMedium(BuildContext context);
  TextStyle? headlineSmall(BuildContext context);
  TextStyle? titleLarge(BuildContext context);
  TextStyle? titleMedium(BuildContext context);
  TextStyle? titleSmall(BuildContext context);
  TextStyle? bodyLarge(BuildContext context);
  TextStyle? bodyMedium(BuildContext context);
  TextStyle? bodySmall(BuildContext context);
  TextStyle? labelLarge(BuildContext context);
  TextStyle? labelLargeProminent(BuildContext context);
  TextStyle? labelMedium(BuildContext context);
  TextStyle? labelMediumProminent(BuildContext context);
  TextStyle? labelSmall(BuildContext context);
}

/// App typographies
@internal
final class AppTypographies implements _Typographies {
  /// Singleton instance
  factory AppTypographies() {
    return _instance;
  }
  AppTypographies._();
  static final AppTypographies _instance = AppTypographies._();

  @override
  TextStyle? displayLarge(BuildContext context) {
    final theme = Theme.of(context);
    final fontSize = AppSizes.f.custom(57);
    return theme.textTheme.displayLarge?.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.custom(64) / fontSize,
      letterSpacing: -0.25,
    );
  }

  @override
  TextStyle? displayMedium(BuildContext context) {
    final theme = Theme.of(context);
    final fontSize = AppSizes.f.custom(45);
    return theme.textTheme.displayMedium?.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.custom(52) / fontSize,
    );
  }

  @override
  TextStyle? displaySmall(BuildContext context) {
    final theme = Theme.of(context);
    final fontSize = AppSizes.f.custom(36);
    return theme.textTheme.displaySmall?.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.custom(44) / fontSize,
    );
  }

  @override
  TextStyle? headlineLarge(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.headlineLarge?.copyWith(
      fontSize: AppSizes.f.s32,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s40 / AppSizes.f.s32,
    );
  }

  @override
  TextStyle? headlineMedium(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.headlineMedium?.copyWith(
      fontSize: AppSizes.f.s28,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.custom(36) / AppSizes.f.s28,
    );
  }

  @override
  TextStyle? headlineSmall(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.headlineSmall?.copyWith(
      fontSize: AppSizes.f.s24,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s32 / AppSizes.f.s24,
    );
  }

  @override
  TextStyle? titleLarge(BuildContext context) {
    final theme = Theme.of(context);
    final fontSize = AppSizes.f.custom(22);
    return theme.textTheme.titleLarge?.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.custom(28) / fontSize,
    );
  }

  @override
  TextStyle? titleMedium(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.titleMedium?.copyWith(
      fontSize: AppSizes.f.s16,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s24 / AppSizes.f.s16,
      letterSpacing: 0.15,
    );
  }

  @override
  TextStyle? titleSmall(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.titleSmall?.copyWith(
      fontSize: AppSizes.f.s14,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s20 / AppSizes.f.s14,
      letterSpacing: 0.1,
    );
  }

  @override
  TextStyle? bodyLarge(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.bodyLarge?.copyWith(
      fontSize: AppSizes.f.s16,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s24 / AppSizes.f.s16,
      letterSpacing: 0.5,
    );
  }

  @override
  TextStyle? bodyMedium(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.bodyMedium?.copyWith(
      fontSize: AppSizes.f.s14,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s20 / AppSizes.f.s14,
      letterSpacing: 0.25,
    );
  }

  @override
  TextStyle? bodySmall(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.bodySmall?.copyWith(
      fontSize: AppSizes.f.s12,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s16 / AppSizes.f.s12,
      letterSpacing: 0.4,
    );
  }

  @override
  TextStyle? labelLarge(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.labelLarge?.copyWith(
      fontSize: AppSizes.f.s14,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s20 / AppSizes.f.s14,
      letterSpacing: 0.1,
    );
  }

  @override
  TextStyle? labelLargeProminent(BuildContext context) {
    return labelLarge(context)?.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  @override
  TextStyle? labelMedium(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.labelMedium?.copyWith(
      fontSize: AppSizes.f.s12,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s16 / AppSizes.f.s12,
      letterSpacing: 0.5,
    );
  }

  @override
  TextStyle? labelMediumProminent(BuildContext context) {
    return labelMedium(context)?.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  @override
  TextStyle? labelSmall(BuildContext context) {
    final theme = Theme.of(context);
    final fontSize = AppSizes.f.custom(11);
    return theme.textTheme.labelSmall?.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.gTWalsheimPro,
      color: theme.colorScheme.onSurface,
      package: kPackageName,
      height: AppSizes.f.s16 / fontSize,
      letterSpacing: 0.5,
    );
  }
}
