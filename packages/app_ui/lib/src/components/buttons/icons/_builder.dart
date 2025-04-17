part of 'app_icon_button_component.dart';

class _IconButtonBuilder extends StatelessWidget {
  const _IconButtonBuilder({
    required this.buttonIcon,
    super.key,
    this.isEnabled,
    this.foregroundColor,
    this.backgroundColor,
    this.onPressed,
    this.borderColor,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.disabledBorderColor,
  });
  final AppAssetBuilder buttonIcon;
  final bool? isEnabled;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final Color? disabledBorderColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: key,
      style: IconButton.styleFrom(
        fixedSize: Size.square(AppSizes.h.s56),
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
        disabledForegroundColor: disabledForegroundColor,
        shape: borderColor != null
            ? CircleBorder(
                side: BorderSide(
                  color: onPressed == null || !isEnabled! ? disabledBorderColor ?? borderColor! : borderColor!,
                ),
              )
            : null,
      ),
      onPressed: isEnabled! ? onPressed : null,
      icon: Align(
        child: buttonIcon.mayOverrideConfig(
          config: AssetBuilderConfig.icon(
            size: AppSizes.f.s24,
            color: onPressed == null || !isEnabled! ? disabledForegroundColor : foregroundColor,
          )
              .$image(
                height: AppSizes.h.s32,
                width: AppSizes.h.s32,
              )
              .$svg(
                height: AppSizes.h.s32,
                width: AppSizes.h.s32,
              ),
        ),
      ),
    );
  }
}
