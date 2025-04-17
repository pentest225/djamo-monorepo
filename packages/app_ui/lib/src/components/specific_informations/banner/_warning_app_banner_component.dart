part of 'app_banners_component.dart';

class _WarningAppBannerComponent extends AppBannersComponent {
  const _WarningAppBannerComponent({
    super.title,
    super.titleMaxLines,
    super.type = BannerTypeEnum.warning,
    super.hideBorder = false,
    super.contentWidget,
    super.contentText,
    super.contentTextMaxLines,
    super.padding,
    super.backgroundColor,
    super.isLimitedText,
    super.icon,
    super.labelButtonText,
    super.labelButtonComponent,
    super.onPressed,
    super.showLabelButton,
    super.customIcon,
    super.customBtnGap,
    super.useRichTextForContent,
  });
  @override
  Widget build(BuildContext context) {
    return _BuilderBannerComponent(
      useRichTextForContent: useRichTextForContent,
      title: title,
      titleMaxLines: titleMaxLines,
      onPressed: !showLabelButton ? onPressed : null,
      type: type,
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
