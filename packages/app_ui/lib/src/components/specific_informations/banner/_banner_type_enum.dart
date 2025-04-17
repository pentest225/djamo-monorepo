part of 'app_banners_component.dart';

enum BannerTypeEnum {
  /// Info
  info,

  /// Success
  success,

  /// Warning
  warning,

  /// Error
  error,
  ;

  /// Background color
  Color backgroundColor(BuildContext context) {
    final scheme = context.theme.colorScheme;
    return switch (this) {
      BannerTypeEnum.info => context.customColorScheme.primaryContainerLow,
      BannerTypeEnum.success => scheme.secondaryContainer,
      BannerTypeEnum.warning => scheme.tertiaryContainer,
      BannerTypeEnum.error => scheme.errorContainer,
    };
  }

  /// Primary color
  Color primaryColor(BuildContext context) {
    final scheme = context.theme.colorScheme;
    return switch (this) {
      BannerTypeEnum.info => scheme.onPrimaryContainer,
      BannerTypeEnum.success => scheme.onSecondaryContainer,
      BannerTypeEnum.warning => scheme.onTertiaryContainer,
      BannerTypeEnum.error => scheme.onErrorContainer,
    };
  }

  /// Icon color
  Color iconColor(BuildContext context) {
    final scheme = context.theme.colorScheme;
    return switch (this) {
      BannerTypeEnum.info => scheme.onPrimaryContainer,
      BannerTypeEnum.success => scheme.onSecondaryContainer,
      BannerTypeEnum.warning => scheme.onTertiaryContainer,
      BannerTypeEnum.error => scheme.onErrorContainer,
    };
  }

  /// Secondary color
  Color subtitleColor(BuildContext context) {
    final scheme = context.theme.colorScheme;
    return switch (this) {
      BannerTypeEnum.info => context.customColorScheme.content,
      BannerTypeEnum.success => scheme.onSecondaryContainer,
      BannerTypeEnum.warning => scheme.onTertiaryContainer,
      BannerTypeEnum.error => scheme.onErrorContainer,
    };
  }

  Border border(BuildContext context) {
    return switch (this) {
      BannerTypeEnum.info => Border.all(
          color: context.customColorScheme.primaryCardOutline,
          width: AppSizes.w.custom(1),
        ),
      BannerTypeEnum.success => Border.all(
          color: context.customColorScheme.secondaryCardOutline,
          width: AppSizes.w.custom(1),
        ),
      BannerTypeEnum.warning => Border.all(
          color: context.customColorScheme.tertiaryCardOutline,
          width: AppSizes.w.custom(1),
        ),
      BannerTypeEnum.error => Border.all(
          color: context.customColorScheme.errorCardOutline,
          width: AppSizes.w.custom(1),
        ),
    };
  }

  /// Icon
  Widget icon(BuildContext context) {
    return Icon(
      Icons.info_outline,
      size: AppSizes.f.s24,
      color: iconColor(context),
    );
  }
}
