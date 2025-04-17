import 'package:app_ui/src/components/texts/texts.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

///
class AppLoaderWidget extends StatelessWidget {
  /// Creates a [AppLoaderWidget].
  const AppLoaderWidget({
    super.key,
    this.color,
    this.size,
    this.progressWidth = 2,
    this.label,
    this.customLabel,
    this.useAsView = false,
    this.contentPadding,
  });

  /// The color of the loader
  final Color? color;

  /// The size of the loader
  final double? size;

  /// The progress width of the loader
  final double progressWidth;

  /// The label to be displayed below the loading indicator.
  final String? label;
  final Widget? customLabel;

  final bool useAsView;
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding ?? EdgeInsets.zero,
      child: RepaintBoundary(
        child: Align(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (useAsView) const Spacer(),
              SizedBox.square(
                dimension: size ?? AppSizes.h.custom(30),
                child: CircularProgressIndicator(
                  color: color ?? context.theme.colorScheme.primary,
                  strokeWidth: progressWidth,
                ),
              ),
              if (customLabel != null) ...[
                AppGaps.ver.custom(AppSizes.h.s24),
                customLabel!,
              ] else if (label != null && label!.isNotEmpty) ...[
                AppGaps.ver.custom(AppSizes.h.s24),
                AppTextComponent.bodyMedium(
                  label ?? '',
                  textAlign: TextAlign.center,
                ),
              ],
              if (useAsView) const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
