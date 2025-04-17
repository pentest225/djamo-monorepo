import 'package:app_ui/src/components/cards/app_card_component.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';

class AppIllustrationListItemComponent extends StatelessWidget {
  const AppIllustrationListItemComponent({
    required this.illustration, required this.title, super.key,
  });

  final AppAssetBuilder illustration;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.s16.horizontal.copyWith(
        bottom: AppSizes.h.s12,
        top: AppSizes.h.s12,
      ),
      child: Row(
        children: [
          SizedBox.square(
            dimension: AppSizes.h.s64,
            child: AppCardComponent(
              borderColor: Colors.transparent,
              content: Align(
                child: SizedBox.square(
                  dimension: AppSizes.h.s32,
                  child: Align(
                    child: illustration.mayOverrideConfig(
                      config: AssetBuilderConfig.image(
                        height: AppSizes.h.s32,
                        width: AppSizes.w.s32,
                      ).$svg(
                        height: AppSizes.h.s32,
                        width: AppSizes.w.s32,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AppGaps.hor.s24,
          Expanded(
            child: AppTextComponent.titleMediumProminent(title),
          ),
        ],
      ),
    );
  }
}
