part of 'app_banners_component.dart';

class _ErrorAppBannerComponent extends AppBannersComponent {
  const _ErrorAppBannerComponent({
    super.title,
    super.titleMaxLines,
    super.type = BannerTypeEnum.error,
    super.hideBorder = false,
    super.labelButtonText,
    super.contentWidget,
    super.contentText,
    super.contentTextMaxLines,
    super.padding,
    super.backgroundColor,
    super.isLimitedText,
    super.icon,
    super.labelButtonComponent,
    super.onPressed,
    super.showLabelButton,
    super.customIcon,
    super.customBtnGap,
  });

  @override
  Widget build(BuildContext context) {
    return _BuilderBannerComponent(
      title: title,
      titleMaxLines: titleMaxLines,
      type: type,
      onPressed: !showLabelButton ? onPressed : null,
      hideBorder: hideBorder!,
      contentText: contentText,
      contentTextMaxLines: contentTextMaxLines,
      contentWidget: contentWidget,
      padding: padding,
      backgroundColor: backgroundColor,
      isLimitedText: isLimitedText,
      icon: icon ??
          (context, _) {
            return customIcon?.mayOverrideConfig(
                  config: AssetBuilderConfig.svg(
                    color: type.iconColor(context),
                    height: AppSizes.h.s24,
                    width: AppSizes.w.s24,
                  ),
                ) ??
                type.icon(context);
          },
      labelButtonComponent: AppCommonButtonComponent.outlinedButton(
        label: labelButtonText!,
        onPressed: onPressed,
      ),
      showLabelButton: showLabelButton,
      customBtnGap: customBtnGap,
    );
  }
}
