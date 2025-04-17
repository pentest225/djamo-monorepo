import 'package:app_ui/src/components/cards/app_card_component.dart';
import 'package:app_ui/src/components/lists/lists.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

class AppTierCardComponent extends StatelessWidget {
  const AppTierCardComponent({
    required this.name,
    required this.rewards,
    super.key,
    this.icon,
  });
  final String name;
  final List<String> rewards;
  final AppAssetBuilder? icon;

  @override
  Widget build(BuildContext context) {
    final defaultIconConfig = AssetBuilderConfig.svg(
      height: AppSizes.h.s24,
      width: AppSizes.w.s24,
    ).$image(
      height: AppSizes.h.s24,
      width: AppSizes.w.s24,
    );
    return SizedBox(
      width: AppSizes.w.custom(240),
      child: AppCardComponent(
        backgroundColor: context.colorScheme.surfaceContainerLow,
        contentPadding: AppPaddings.s16.horizontal.copyWith(
          top: AppSizes.h.s24,
          bottom: AppSizes.h.s12,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon?.mayOverrideConfig(
                  config: defaultIconConfig,
                ) ??
                Assets.djamoIcons.trophy1.image(
                  height: AppSizes.h.s24,
                  width: AppSizes.w.s24,
                ),
            AppGaps.ver.s8,
            AppTextComponent.titleMediumProminent(
              name,
              textAlign: TextAlign.center,
            ),
            AppGaps.ver.s8,
            ...rewards.map((r) {
              return AppListItemComponent.custom(
                titleColor: Colors.transparent,
                title: '',
                subtitle: r,
                subtitleMaxLines: 2,
                contentPadding: AppPaddings.s4.vertical,
              );
            }),
          ],
        ),
      ),
    );
  }
}
