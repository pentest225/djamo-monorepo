import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppSpecsListItemComponent extends StatelessWidget {
  const AppSpecsListItemComponent({
    required this.icon,
    required this.label,
    required this.value,
    required this.subValue,
    this.backgroundColor,
    super.key,
  });

  /// Prefer using [AppAssetBuilder.svg] or [AppAssetBuilder.icon]
  final AppAssetBuilder icon;
  final String label;
  final String value;
  final String subValue;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor ?? Colors.transparent,
      child: Padding(
        padding: AppPaddings.s8.symmetric,
        child: Row(
          children: [
            Container(
              height: AppSizes.h.custom(48),
              width: AppSizes.h.custom(48),
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceContainerLow,
                border: Border.all(
                  color: context.customColorScheme.outlineLowest,
                  width: AppSizes.w.custom(1),
                ),
                borderRadius: AppBorderRadius.s12.all,
              ),
              child: Align(
                child: icon.mayOverrideConfig(
                  config: AssetBuilderConfig.svg(
                    height: AppSizes.h.s20,
                    width: AppSizes.h.s20,
                    color: context.customColorScheme.contentLowest,
                  ).$icon(
                    size: AppSizes.w.s20,
                    color: context.customColorScheme.contentLowest,
                  ),
                ),
              ),
            ),
            AppGaps.hor.s12,
            AppTextComponent.titleMedium(
              label,
              color: context.customColorScheme.content,
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppTextComponent.titleMediumProminent(
                  value,
                  textAlign: TextAlign.end,
                  color: context.customColorScheme.content,
                ),
                AppGaps.ver.s4,
                AppTextComponent.bodyMedium(
                  subValue,
                  textAlign: TextAlign.end,
                  color: context.customColorScheme.contentLow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
