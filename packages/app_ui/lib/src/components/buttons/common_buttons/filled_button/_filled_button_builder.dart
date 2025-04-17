part of '../app_common_button_component.dart';

class _FilledButtonComponentBuilder extends StatelessWidget {
  const _FilledButtonComponentBuilder({
    required this.label,
    this.buttonIcon,
    this.isLarge,
    this.isEnabled,
    this.fullMaxWidth,
    this.foregroundColor,
    this.backgroundColor,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.onPressed,
  });

  final String label;
  final AppAssetBuilder? buttonIcon;
  final bool? isLarge;
  final bool? isEnabled;
  final bool? fullMaxWidth;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return buttonIcon != null
        ? SizedBox(
            key: key ?? const Key('filled_icon_sized_box'),
            width: fullMaxWidth! ? double.infinity : null,
            height: isLarge! ? AppSizes.h.s56 : AppSizes.h.s40,
            child: FilledButton.icon(
              key: const ValueKey('createVault'),
              style: _buttonStyle(true),
              onPressed: _getOnPressed(),
              label: _LabelButtonText(
                label: label,
                isEnabled: isEnabled!,
                foregroundColor: foregroundColor!,
                disabledForegroundColor: disabledForegroundColor!,
                onPressed: onPressed,
                hasLeadingIcon: true,
              ),
              icon: buttonIcon?.mayOverrideConfig(
                config: _iconConfig(color: onPressed == null || !isEnabled! ? disabledForegroundColor : foregroundColor),
              ),
            ),
          )
        : SizedBox(
            key: key ?? const Key('filled_sized_box'),
            width: fullMaxWidth! ? double.infinity : null,
            height: isLarge! ? AppSizes.h.s56 : AppSizes.h.s40,
            child: FilledButton(
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

  ButtonStyle _buttonStyle(bool hasIcon) => FilledButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
        disabledForegroundColor: disabledForegroundColor,
        fixedSize: !isLarge! ? Size.fromHeight(AppSizes.h.s40) : Size.fromHeight(AppSizes.h.s56),
        padding: _horizontalPadding(hasIcon),
      );
}
