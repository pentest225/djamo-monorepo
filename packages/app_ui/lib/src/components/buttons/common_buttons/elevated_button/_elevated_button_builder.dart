part of '../app_common_button_component.dart';

class _ElevatedButtonComponentBuilder extends StatelessWidget {
  const _ElevatedButtonComponentBuilder({
    required this.label,
    this.buttonIcon,
    this.isEnabled,
    this.fullMaxWidth,
    this.foregroundColor,
    this.disabledForegroundColor,
    this.onPressed,
  });

  final String label;
  final AppAssetBuilder? buttonIcon;
  final bool? isEnabled;
  final bool? fullMaxWidth;
  final Color? foregroundColor;
  final Color? disabledForegroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return buttonIcon != null
        ? SizedBox(
            width: fullMaxWidth! ? double.infinity : null,
            height: AppSizes.h.s40,
            child: ElevatedButton.icon(
              style: _buttonStyle(true),
              onPressed: _getOnPressed(),
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
            width: fullMaxWidth! ? double.infinity : null,
            height: AppSizes.h.s40,
            child: ElevatedButton(
              style: _buttonStyle(false),
              onPressed: _getOnPressed(),
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

  void Function()? _getOnPressed() {
    return isEnabled! ? onPressed : null;
  }

  ButtonStyle _buttonStyle(bool hasIcon) => ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        disabledForegroundColor: disabledForegroundColor,
        padding: _horizontalPadding(hasIcon),
      );
}
