import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

class AppInstructionView extends StatelessWidget {
  const AppInstructionView({
    required this.title,
    required this.ctaLabel,
    required this.instructions,
    this.subtitle,
    super.key,
  });
  final String title;
  final String? subtitle;
  final String ctaLabel;
  final List<String> instructions;
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppGaps.ver.s16,
          if (subtitle?.orNull != null) ...[
            AppHeadlineComponent.large(
              header: title,
              description: subtitle ?? '',
            ),
          ] else
            AppHeadlineComponent.largeSingleText(
              header: title,
            ),
          AppGaps.ver.s32,
          for (final instruction in instructions) ...[
            AppListItemComponent.custom(
              title: instruction,
              titleMaxLines: 4,
              leading: AppAssetBuilder.svg(
                svg: Assets.icons.checkCircle,
                config: AssetBuilderConfig.svg(
                  color: context.colorScheme.primary,
                ),
              ),
            ),
          ],
          const Spacer(),
        ],
      ),
    );
  }
}
