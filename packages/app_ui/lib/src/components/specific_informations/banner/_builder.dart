part of 'app_banners_component.dart';

class _BuilderBannerComponent extends StatelessWidget {
  const _BuilderBannerComponent({
    required this.type,
    required this.hideBorder,
    required this.showLabelButton,
    this.title,
    this.contentWidget,
    this.contentText,
    this.padding,
    this.backgroundColor,
    this.isLimitedText,
    this.icon,
    this.labelButtonComponent,
    this.onPressed,
    this.titleMaxLines,
    this.contentTextMaxLines,
    this.customBtnGap,
    this.crossAxisAlignment,
    this.onCloseButtonPressed,
    this.useRichTextForContent = false,
  });

  final String? title;
  final BannerTypeEnum type;
  final bool hideBorder;
  final Widget? contentWidget;
  final String? contentText;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool? isLimitedText;
  final Widget Function(
    BuildContext context,
    Color color,
  )? icon;
  final AppCommonButtonComponent? labelButtonComponent;
  final void Function()? onPressed;
  final bool showLabelButton;
  final int? titleMaxLines;
  final int? contentTextMaxLines;
  final Widget? customBtnGap;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool useRichTextForContent;
  final VoidCallback? onCloseButtonPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor ?? type.backgroundColor(context),
        borderRadius: BorderRadius.circular(AppSizes.r.s12),
        border: hideBorder ? const Border.fromBorderSide(BorderSide.none) : type.border(context),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.r.s12),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppSizes.r.s12),
          splashColor: (backgroundColor ?? type.backgroundColor(context)).withOpacity(.5),
          onTap: onPressed,
          child: Padding(
            padding: padding ?? AppPaddings.s16.all,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
                        children: [
                          if (icon != null) ...[
                            Column(
                              children: [
                                icon!.call(
                                  context,
                                  type.primaryColor(context),
                                ),
                              ],
                            ),
                            AppGaps.hor.s16,
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (title != null && title!.isNotEmpty) ...[
                                    AppTextComponent.titleMedium(
                                      title!,
                                      color: type.primaryColor(context),
                                      boldFontWeight: FontWeight.w400,
                                      maxLines: titleMaxLines,
                                      overflow: titleMaxLines != null ? TextOverflow.ellipsis : null,
                                    ),
                                  ],
                                  contentWidget ??
                                      _TextContent(
                                        type: type,
                                        content: contentText ?? '',
                                        isLimitedText: isLimitedText!,
                                        maxLines: contentTextMaxLines,
                                        useRichTextForContent: useRichTextForContent,
                                      ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                      if (labelButtonComponent != null && showLabelButton) ...[
                        customBtnGap ?? AppGaps.ver.s12,
                        Padding(
                          padding: AppPaddings.s40.left,
                          child: labelButtonComponent,
                        ),
                      ],
                    ],
                  ),
                ),
                if (onCloseButtonPressed != null) ...[
                  AppGaps.hor.s16,
                  AppAssetBuilder.svg(
                    svg: Assets.icons.close,
                    onTap: onCloseButtonPressed,
                    config: AssetBuilderConfig.svg(
                      height: AppSizes.h.s24,
                      width: AppSizes.h.s24,
                      color: type.primaryColor(context),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TextContent extends StatelessWidget {
  const _TextContent({
    required this.type,
    required this.content,
    required this.isLimitedText,
    this.maxLines,
    this.useRichTextForContent = false,
  });

  final BannerTypeEnum type;
  final String content;
  final bool isLimitedText;
  final int? maxLines;
  final bool useRichTextForContent;

  @override
  Widget build(BuildContext context) {
    return AppTextComponent.bodyMedium(
      content,
      color: type.subtitleColor(context),
      overflow: isLimitedText || (maxLines ?? 0) > 0 ? TextOverflow.ellipsis : null,
      maxLines: maxLines ?? (isLimitedText ? 2 : null),
      useRichText: useRichTextForContent,
    );
  }
}
