part of '../app_common_button_component.dart';

class _TonalButtonComponentBuilder extends StatelessWidget {
  const _TonalButtonComponentBuilder({
    required this.label,
    this.buttonIcon,
    this.isEnabled,
    this.foregroundColor,
    this.backgroundColor,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.onPressed,
  });

  final String label;
  final AppAssetBuilder? buttonIcon;
  final bool? isEnabled;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return buttonIcon != null
        ? FilledButton.tonalIcon(
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
          )
        : FilledButton.tonal(
            style: _buttonStyle(false),
            onPressed: _getOnPressed(),
            child: _LabelButtonText(
              label: label,
              isEnabled: isEnabled!,
              foregroundColor: foregroundColor!,
              disabledForegroundColor: disabledForegroundColor!,
              onPressed: onPressed,
            ),
          );
  }

  void Function()? _getOnPressed() {
    return isEnabled! ? onPressed : null;
  }

  ButtonStyle _buttonStyle(bool hasIcon) => FilledButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        disabledForegroundColor: disabledForegroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
        padding: _horizontalPadding(hasIcon),
      );
}
