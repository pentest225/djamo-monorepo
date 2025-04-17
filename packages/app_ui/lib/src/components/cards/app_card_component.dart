import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

class AppCardComponent extends StatelessWidget {
  const AppCardComponent({
    required this.content,
    this.contentPadding,
    this.backgroundColor,
    this.borderColor,
    this.onPressed,
    this.borderRadius,
    this.borderWidth,
    super.key,
  });

  final Widget content;
  final EdgeInsets? contentPadding;
  final Color? backgroundColor;
  final Color? borderColor;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? AppBorderRadius.s12.all,
        color: backgroundColor ?? context.customColorScheme.primaryContainerLow,
        border: Border.all(
          width: AppSizes.w.custom(borderWidth ?? 1),
          color: borderColor ?? context.customColorScheme.primaryCardOutline,
        ),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: borderRadius ?? AppBorderRadius.s12.all,
        ),
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Padding(
          padding: contentPadding ?? AppPaddings.s16.symmetric,
          child: content,
        ),
      ),
    );
  }
}
