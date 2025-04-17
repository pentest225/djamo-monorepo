import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/modules/common/common.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

/// App button widget
abstract class AppButtonWidget extends StatelessWidget {
  ///   Creates a [AppButtonWidget].
  const AppButtonWidget({
    required this.label,
    this.isLarge = false,
    this.isLoading = false,
    this.fillMaxWidthSize = false,
    this.enable = true,
    super.key,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
  });

  /// Creates a primary button
  factory AppButtonWidget.primary({
    required String label,
    bool isLoading = false,
    bool fillMaxWidthSize = false,
    bool enable = true,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
  }) {
    return _PrimaryButton(
      label: label,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      fillMaxWidthSize: fillMaxWidthSize,
    );
  }
  factory AppButtonWidget.primaryLarge({
    required String label,
    bool isLoading = false,
    bool fillMaxWidthSize = false,
    bool enable = true,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
  }) {
    return _PrimaryButton(
      label: label,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      isLarge: true,
      fillMaxWidthSize: fillMaxWidthSize,
    );
  }

  /// Creates a primary button with icon data
  factory AppButtonWidget.primaryIcon({
    required String label,
    required IconData icon,
    bool isLoading = false,
    bool fillMaxWidthSize = false,
    bool isLarge = false,
    bool enable = true,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
  }) {
    return _IconPrimaryData(
      label: label,
      icon: icon,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      fillMaxWidthSize: fillMaxWidthSize,
      isLarge: isLarge,
    );
  }

  /// Creates a primary button with icon data
  factory AppButtonWidget.primarySvgIcon({
    required String label,
    required SvgGenImage icon,
    bool isLoading = false,
    bool enable = true,
    bool fillMaxWidthSize = false,
    bool isLarge = false,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
    double? iconSize,
  }) {
    return _IconPrimarySvg(
      label: label,
      icon: icon,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      fillMaxWidthSize: fillMaxWidthSize,
      isLarge: isLarge,
      iconSize: iconSize,
    );
  }

  /// Creates a secondary button
  factory AppButtonWidget.secondary({
    required String label,
    bool isLoading = false,
    bool enable = true,
    bool fillMaxWidthSize = false,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
  }) {
    return _SecondaryButton(
      label: label,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      fillMaxWidthSize: fillMaxWidthSize,
    );
  }

  /// Creates a secondary button large
  factory AppButtonWidget.secondaryLarge({
    required String label,
    bool isLoading = false,
    bool enable = true,
    bool fillMaxWidthSize = false,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
  }) {
    return _SecondaryButton(
      label: label,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      isLarge: true,
      fillMaxWidthSize: fillMaxWidthSize,
    );
  }

  /// Creates a secondary button with icon data
  factory AppButtonWidget.secondaryIcon({
    required String label,
    required IconData icon,
    bool isLoading = false,
    bool enable = true,
    bool fillMaxWidthSize = false,
    bool isLarge = false,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
  }) {
    return _IconSecondary(
      label: label,
      icon: icon,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      fillMaxWidthSize: fillMaxWidthSize,
      isLarge: isLarge,
    );
  }

  /// Creates a secondary button with svg icon
  factory AppButtonWidget.secondarySvgIcon({
    required String label,
    required SvgGenImage icon,
    bool isLoading = false,
    bool fillMaxWidthSize = false,
    bool isLarge = false,
    bool enable = true,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
  }) {
    return _IconSecondarySvg(
      label: label,
      icon: icon,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      fillMaxWidthSize: fillMaxWidthSize,
      isLarge: isLarge,
    );
  }

  /// Creates a text button
  factory AppButtonWidget.text({
    required String label,
    bool isLoading = false,
    bool fillMaxWidthSize = false,
    bool enable = true,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
  }) {
    return _TextButton(
      label: label,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      fillMaxWidthSize: fillMaxWidthSize,
    );
  }

  /// Creates a text button
  factory AppButtonWidget.textLarge({
    required String label,
    bool isLoading = false,
    bool fillMaxWidthSize = false,
    bool enable = true,
    Color? backgroundColor,
    Color? foregroundColor,
    VoidCallback? onPressed,
  }) {
    return _TextButton(
      label: label,
      isLoading: isLoading,
      enable: enable,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      onPressed: onPressed,
      isLarge: true,
      fillMaxWidthSize: fillMaxWidthSize,
    );
  }

  /// The label of the button
  final String label;

  /// The loading state of the button
  final bool isLoading;

  /// The enable state of the button
  final bool enable;

  /// The callback when the button is pressed
  final VoidCallback? onPressed;

  /// The background color of the button
  final Color? backgroundColor;

  /// The foreground color of the button
  final Color? foregroundColor;

  ///
  final bool isLarge;
  final bool fillMaxWidthSize;
}

Size _buildFixedSize([bool isLarge = false]) {
  final h = isLarge ? AppSizes.h.custom(56) : AppSizes.h.s40;
  return Size.fromHeight(h);
}

TextStyle? _buildTextStyle(BuildContext context, bool isLarge) => isLarge ? context.theme.textTheme.titleMedium : context.theme.textTheme.labelLarge;

class _PrimaryButton extends AppButtonWidget {
  const _PrimaryButton({
    required super.label,
    super.isLarge = false,
    super.fillMaxWidthSize = false,
    super.isLoading = false,
    super.enable = true,
    super.backgroundColor,
    super.foregroundColor,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isLoadingOrDisabled = isLoading || !enable;
    return SizedBox(
      width: fillMaxWidthSize ? double.infinity : null,
      child: FilledButton(
        onPressed: isLoadingOrDisabled || !enable ? null : onPressed,
        style: FilledButton.styleFrom(
          fixedSize: _buildFixedSize(isLarge),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: EdgeInsets.zero,
          textStyle: _buildTextStyle(context, isLarge)?.copyWith(
            color: foregroundColor,
          ),
        ),
        child: isLoading
            ? const Align(child: AppLoaderWidget())
            : Text(
                label,
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}

class _SecondaryButton extends AppButtonWidget {
  const _SecondaryButton({
    required super.label,
    super.isLarge = false,
    super.fillMaxWidthSize = false,
    super.isLoading = false,
    super.enable = true,
    super.backgroundColor,
    super.foregroundColor,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isLoadingOrDisabled = isLoading || !enable;
    return SizedBox(
      width: fillMaxWidthSize ? double.infinity : null,
      child: OutlinedButton(
        onPressed: isLoadingOrDisabled || !enable ? null : onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.r.custom(100)),
          ),
          fixedSize: _buildFixedSize(isLarge),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: EdgeInsets.zero,
          textStyle: _buildTextStyle(context, isLarge)?.copyWith(
            color: foregroundColor,
          ),
        ),
        child: isLoading
            ? const Align(child: AppLoaderWidget())
            : Text(
                label,
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}

class _TextButton extends AppButtonWidget {
  const _TextButton({
    required super.label,
    super.isLarge = false,
    super.fillMaxWidthSize = false,
    super.isLoading = false,
    super.enable = true,
    super.backgroundColor,
    super.foregroundColor,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isLoadingOrDisabled = isLoading || !enable;
    return SizedBox(
      width: fillMaxWidthSize ? double.infinity : null,
      child: TextButton(
        onPressed: isLoadingOrDisabled ? null : onPressed,
        style: TextButton.styleFrom(
          fixedSize: _buildFixedSize(isLarge),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: EdgeInsets.zero,
          textStyle: _buildTextStyle(context, isLarge)?.copyWith(
            color: foregroundColor,
          ),
        ),
        child: isLoading
            ? const Align(child: AppLoaderWidget())
            : Text(
                label,
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}

class _IconPrimaryData extends AppButtonWidget {
  const _IconPrimaryData({
    required super.label,
    required this.icon,
    super.fillMaxWidthSize = false,
    super.isLoading = false,
    super.isLarge = false,
    super.enable = true,
    super.backgroundColor,
    super.foregroundColor,
    super.onPressed,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fillMaxWidthSize ? double.infinity : null,
      child: FilledButton(
        onPressed: enable ? onPressed : null,
        style: FilledButton.styleFrom(
          fixedSize: _buildFixedSize(isLarge),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: EdgeInsets.zero,
          textStyle: context.theme.textTheme.labelLarge?.copyWith(
            color: foregroundColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: AppSizes.h.custom(18),
              child: Align(
                child: Icon(
                  icon,
                  size: AppSizes.f.custom(12),
                ),
              ),
            ),
            AppGaps.hor.s8,
            Text(
              label,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _IconPrimarySvg extends AppButtonWidget {
  const _IconPrimarySvg({
    required super.label,
    required this.icon,
    super.isLoading = false,
    super.fillMaxWidthSize = false,
    super.isLarge = false,
    super.enable = true,
    super.backgroundColor,
    super.foregroundColor,
    super.onPressed,
    this.iconSize,
  });
  final SvgGenImage icon;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fillMaxWidthSize ? double.infinity : null,
      child: FilledButton(
        onPressed: enable ? onPressed : null,
        style: FilledButton.styleFrom(
          fixedSize: _buildFixedSize(isLarge),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: EdgeInsets.zero,
          textStyle: context.theme.textTheme.labelLarge?.copyWith(
            color: foregroundColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: icon.svg(
                width: iconSize,
                colorFilter: foregroundColor?.toSrcMode() ?? context.colorScheme.onPrimary.toSrcMode(),
              ),
            ),
            AppGaps.hor.s8,
            Text(
              label,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _IconSecondary extends AppButtonWidget {
  const _IconSecondary({
    required super.label,
    required this.icon,
    super.isLoading = false,
    super.fillMaxWidthSize = false,
    super.isLarge = false,
    super.enable = true,
    super.backgroundColor,
    super.foregroundColor,
    super.onPressed,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fillMaxWidthSize ? double.infinity : null,
      child: OutlinedButton(
        onPressed: enable ? onPressed : null,
        style: OutlinedButton.styleFrom(
          fixedSize: _buildFixedSize(isLarge),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: EdgeInsets.zero,
          textStyle: context.theme.textTheme.labelLarge?.copyWith(
            color: foregroundColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox.square(
              dimension: AppSizes.h.custom(18),
              child: Align(
                child: Icon(
                  icon,
                  size: AppSizes.f.custom(12),
                ),
              ),
            ),
            AppGaps.hor.s8,
            Text(
              label,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _IconSecondarySvg extends AppButtonWidget {
  const _IconSecondarySvg({
    required super.label,
    required this.icon,
    super.isLoading = false,
    super.fillMaxWidthSize = false,
    super.isLarge = false,
    super.enable = true,
    super.backgroundColor,
    super.foregroundColor,
    super.onPressed,
  });
  final SvgGenImage icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fillMaxWidthSize ? double.infinity : null,
      child: OutlinedButton(
        onPressed: enable ? onPressed : null,
        style: OutlinedButton.styleFrom(
          fixedSize: _buildFixedSize(isLarge),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: EdgeInsets.zero,
          textStyle: context.theme.textTheme.labelLarge?.copyWith(
            color: foregroundColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox.square(
              dimension: AppSizes.h.custom(18),
              child: Align(
                child: icon.svg(
                  colorFilter: foregroundColor?.toSrcMode() ?? context.colorScheme.primary.toSrcMode(),
                ),
              ),
            ),
            AppGaps.hor.s8,
            Text(
              label,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
