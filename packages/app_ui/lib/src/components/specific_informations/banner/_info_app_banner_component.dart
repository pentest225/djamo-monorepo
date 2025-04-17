part of 'app_banners_component.dart';

class _InfoAppBannerComponent extends AppBannersComponent {
  const _InfoAppBannerComponent({
    super.title,
    super.titleMaxLines,
    super.type = BannerTypeEnum.info,
    super.hideBorder = false,
    super.contentWidget,
    super.contentText,
    super.contentTextMaxLines,
    super.padding,
    super.backgroundColor,
    super.isLimitedText,
    super.icon,
    super.labelButtonComponent,
    super.labelButtonText,
    super.onPressed,
    super.showLabelButton,
    super.customIcon,
    super.customBtnGap,
    super.useRichTextForContent,
    super.onCloseButtonPressed,
    super.crossAxisAlignment = CrossAxisAlignment.center,
  });
  @override
  Widget build(BuildContext context) {
    return _BuilderBannerComponent(
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
      labelButtonComponent: labelButtonComponent ??
          AppCommonButtonComponent.outlinedButton(
            label: labelButtonText!,
            onPressed: onPressed,
          ),
      showLabelButton: showLabelButton,
      customBtnGap: customBtnGap,
      crossAxisAlignment: crossAxisAlignment,
      useRichTextForContent: useRichTextForContent,
      onCloseButtonPressed: onCloseButtonPressed,
    );
  }
}
