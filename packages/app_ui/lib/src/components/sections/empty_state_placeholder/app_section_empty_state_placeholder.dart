import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppSectionEmptyStatePlaceholder extends StatelessWidget {
  const AppSectionEmptyStatePlaceholder({
    required this.title,
    required this.description,
    this.actionLabel,
    this.icon,
    super.key,
    this.buttonIcon,
    this.onActionPressed,
    this.useAsView = false,
  });

  final String title;
  final String description;
  final String? actionLabel;
  final AppAssetBuilder? icon;
  final AppAssetBuilder? buttonIcon;
  final VoidCallback? onActionPressed;
  final bool useAsView;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (useAsView) const Spacer(),
        if (icon != null)
          Align(
            child: icon?.mayOverrideConfig(
              config: AssetBuilderConfig.image(
                height: AppSizes.h.custom(120),
                width: AppSizes.w.custom(120),
              ),
            ),
          ),
        AppGaps.ver.s16,
        AppTextComponent.headlineSmall(
          title,
          textAlign: TextAlign.center,
        ),
        if (description.isNotEmpty) ...[
          AppTextComponent.bodyMedium(
            description,
            textAlign: TextAlign.center,
          ),
        ],
        if (actionLabel != null && onActionPressed != null) ...[
          AppGaps.ver.s16,
          Align(
            child: AppCommonButtonComponent.outlinedButton(
              label: actionLabel!,
              onPressed: onActionPressed,
              icon: buttonIcon,
            ),
          ),
        ],
        if (useAsView) const Spacer(flex: 2),
      ],
    );
  }
}
