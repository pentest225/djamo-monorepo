part of '../app_common_button_component.dart';

class _OutlinedButtonComponentBuilder extends StatelessWidget {
  const _OutlinedButtonComponentBuilder({
    required this.label,
    this.buttonIcon,
    this.isLarge,
    this.isEnabled,
    this.fullMaxWidth,
    this.foregroundColor,
    this.disabledForegroundColor,
    this.borderColor,
    this.disabledBorderColor,
    this.onPressed,
  });

  final String label;
  final AppAssetBuilder? buttonIcon;
  final bool? isLarge;
  final bool? isEnabled;
  final bool? fullMaxWidth;
  final Color? foregroundColor;
  final Color? borderColor;
  final Color? disabledForegroundColor;
  final Color? disabledBorderColor;
  final void Function()? onPressed;

  /// Returns null if button is disabled, else returns [onPressed]
  void Function()? get enabledOnPressed {
    return isEnabled! ? onPressed : null;
  }

  /// Returns the [ButtonStyle] for the button
  ButtonStyle get style => OutlinedButton.styleFrom(
        foregroundColor: foregroundColor,
        disabledForegroundColor: disabledForegroundColor,
        side: BorderSide(
          color: onPressed == null || !isEnabled! ? disabledBorderColor! : borderColor!,
        ),
        fixedSize: !isLarge! ? null : Size.fromHeight(AppSizes.h.s56),
        padding: _horizontalPadding(buttonIcon != null),
      );

  @override
  Widget build(BuildContext context) {
    return buttonIcon != null
        ? SizedBox(
            width: fullMaxWidth! ? double.infinity : null,
            height: isLarge! ? AppSizes.h.s56 : AppSizes.h.s40,
            child: OutlinedButton.icon(
              style: style,
              onPressed: enabledOnPressed,
              label: _LabelButtonText(
                label: label,
                isEnabled: isEnabled!,
                foregroundColor: foregroundColor!,
                disabledForegroundColor: disabledForegroundColor!,
                onPressed: onPressed,
              ),
              icon: buttonIcon?.mayOverrideConfig(
                config: _iconConfig(color: onPressed == null || !isEnabled! ? disabledForegroundColor : foregroundColor),
              ),
            ),
          )
        : SizedBox(
            height: isLarge! ? AppSizes.h.s56 : AppSizes.h.s40,
            width: fullMaxWidth! ? double.infinity : null,
            child: OutlinedButton(
              style: style,
              onPressed: enabledOnPressed,
              child: _LabelButtonText(
                label: label,
                isEnabled: isEnabled!,
                foregroundColor: foregroundColor!,
                disabledForegroundColor: disabledForegroundColor!,
                onPressed: onPressed,
              ),
            ),
          );
  }
}
