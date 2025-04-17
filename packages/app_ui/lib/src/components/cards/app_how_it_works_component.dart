import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppHowItWorksComponent extends StatelessWidget {
  const AppHowItWorksComponent({
    required this.title, required this.onPressed, required this.image, super.key,
    this.withPadding = false,
    this.buttonText,
  });

  final bool withPadding;
  final void Function() onPressed;
  final String title;
  final String? buttonText;
  final AssetGenImage image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: withPadding ? AppPaddings.s16.horizontal : EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppGaps.ver.s16,
          Stack(
            children: [
              AppCardComponent(
                backgroundColor: context.colorScheme.surfaceContainerLow,
                contentPadding: AppPaddings.s16.all,
                content: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextComponent.titleMedium(title),
                        AppGaps.ver.s8,
                        AppCommonButtonComponent.outlinedButton(
                          label: buttonText ?? context.l10n.howItWorks,
                          onPressed: onPressed,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -AppSizes.w.s24,
                top: -AppSizes.h.s4,
                child: CircleAvatar(
                  radius: AppSizes.r.custom(70),
                  backgroundColor: context.colorScheme.primaryContainer,
                  child: Padding(
                    padding: AppPaddings.s16.bottom,
                    child: AppAssetBuilder.image(
                      image: image,
                      config: AssetBuilderConfig.image(
                        height: AppSizes.h.s56,
                        width: AppSizes.w.s56,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
