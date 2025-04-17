import 'package:app_ui/src/components/texts/texts.dart';
import 'package:app_ui/src/core/classes/app_asset_builder.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

class AppAssistiveChipWidget extends StatelessWidget {
  factory AppAssistiveChipWidget({
    required String text,
    Color Function(BuildContext)? borderColor,
    Color Function(BuildContext)? backgroundColor,
    Color Function(BuildContext)? foregroundColor,
    VoidCallback? onPressed,
    EdgeInsets? contentPadding,

    ///Prefer using [AppAssetBuilder.svg] or [AppAssetBuilder.icon]
    AppAssetBuilder? icon,
    Key? key,
  }) {
    return AppAssistiveChipWidget._(
      key: key,
      text: text,
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      contentPadding: contentPadding,
      icon: icon,
    );
  }
  const AppAssistiveChipWidget._({
    required this.text,
    super.key,
    this.borderColor,
    this.backgroundColor,
    this.foregroundColor,
    this.onPressed,
    this.contentPadding,
    this.icon,
  });

  //unselected
  factory AppAssistiveChipWidget.unselected({
    required String text,
    VoidCallback? onPressed,
    Key? key,
  }) {
    return AppAssistiveChipWidget._(
      key: key,
      text: text,
      onPressed: onPressed,
    );
  }

//selected
  factory AppAssistiveChipWidget.selected({
    required String text,
    VoidCallback? onPressed,
    Key? key,
  }) {
    return AppAssistiveChipWidget._(
      key: key,
      text: text,
      borderColor: (_) => Colors.transparent,
      backgroundColor: (context) => context.colorScheme.secondaryContainer,
      onPressed: onPressed,
    );
  }

  final String text;
  final Color Function(BuildContext)? borderColor;
  final Color Function(BuildContext)? backgroundColor;
  final Color Function(BuildContext)? foregroundColor;
  final VoidCallback? onPressed;
  final EdgeInsets? contentPadding;
  final AppAssetBuilder? icon;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor?.call(context),
        border: Border.all(
          color: borderColor?.call(context) ?? context.customColorScheme.outlineLow,
        ),
        borderRadius: AppBorderRadius.s8.all,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: AppBorderRadius.s8.all,
        child: InkWell(
          onTap: onPressed,
          borderRadius: AppBorderRadius.s8.all,
          child: Padding(
            padding: AppPaddings.s4.vertical.copyWith(
              left: AppSizes.w.s8,
              right: AppSizes.w.s8,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  icon!.mayOverrideConfig(
                    config: AssetBuilderConfig.svg(
                      height: AppSizes.h.s18,
                      width: AppSizes.w.s18,
                      color: foregroundColor?.call(context) ?? context.colorScheme.primary,
                    ).$icon(
                      size: AppSizes.f.s18,
                    ),
                  ),
                  AppGaps.hor.s8,
                ],
                AppTextComponent.labelMedium(
                  text,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  color: foregroundColor?.call(context) ?? context.customColorScheme.contentLowest,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
