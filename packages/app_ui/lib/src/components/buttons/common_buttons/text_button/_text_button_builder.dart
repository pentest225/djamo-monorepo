part of '../app_common_button_component.dart';

class _TextButtonComponentBuilder extends StatelessWidget {
  const _TextButtonComponentBuilder({
    required this.label,
    this.buttonIcon,
    this.foregroundColor,
    this.isEnabled,
    this.disabledForegroundColor,
    this.contentPadding,
    this.onPressed,
  });

  final String label;
  final AppAssetBuilder? buttonIcon;
  final bool? isEnabled;
  final Color? foregroundColor;
  final Color? disabledForegroundColor;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? contentPadding;

  /// Returns null if button is disabled, else returns [onPressed]
  void Function()? get enabledOnPressed {
    return isEnabled! ? onPressed : null;
  }

  /// Returns the [ButtonStyle] for the button
  ButtonStyle get style => TextButton.styleFrom(
        foregroundColor: foregroundColor,
        disabledForegroundColor: disabledForegroundColor,
        padding: contentPadding ?? _horizontalPadding(buttonIcon != null),
      );

  @override
  Widget build(BuildContext context) {
    return buttonIcon != null
        ? TextButton.icon(
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
              config: _iconConfig(
                color: onPressed == null || !isEnabled! ? disabledForegroundColor : foregroundColor,
              ),
            ),
          )
        : TextButton(
            style: style,
            onPressed: enabledOnPressed,
            child: _LabelButtonText(
              label: label,
              isEnabled: isEnabled!,
              foregroundColor: foregroundColor!,
              disabledForegroundColor: disabledForegroundColor!,
              onPressed: onPressed,
            ),
          );
  }
}
