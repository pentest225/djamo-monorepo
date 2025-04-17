import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppStatsItemComponent extends StatelessWidget {
  const AppStatsItemComponent({
    required this.icon,
    required this.label,
    required this.content,
    super.key,
  });

  /// Prefer using [AppAssetBuilder.svg] or [AppAssetBuilder.icon] for icons.
  final AppAssetBuilder icon;
  final String label;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon.mayOverrideConfig(
          config: AssetBuilderConfig.svg(
            height: AppSizes.h.s24,
            width: AppSizes.h.s24,
            color: context.customColorScheme.contentLowest,
          ).$icon(
            size: AppSizes.f.s24,
            color: context.customColorScheme.contentLowest,
          ),
        ),
        AppTextComponent.labelLargeProminent(
          content,
          textAlign: TextAlign.center,
          color: context.customColorScheme.content,
        ),
        AppTextComponent.bodySmall(
          label,
          textAlign: TextAlign.center,
          color: context.customColorScheme.contentLowest,
        ),
      ],
    );
  }
}
