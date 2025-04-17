part of 'app_list_item_component.dart';

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.title,
    required this.thirdLine,
    this.subtitle,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.leading,
    this.leadingWidget,
    this.highlight,
    this.trailing,
    this.titleAlignment,
    this.onPressed,
    this.contentPadding,
    this.titleColor,
    this.horizontalPadding,
    super.key,
    this.foregroundColor,
    this.useRichText = false,
    this.customSubtitle,
  });

  final String title;
  final String? subtitle;
  final Widget? customSubtitle;
  final Widget? thirdLine;
  final int? titleMaxLines;
  final int? subtitleMaxLines;
  final AppAssetBuilder? leading;
  final Widget? leadingWidget;
  final Widget? trailing;
  final Widget? highlight;
  final CrossAxisAlignment? titleAlignment;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? contentPadding;
  final Color? titleColor;
  final double? horizontalPadding;
  final Color? foregroundColor;
  final bool useRichText;

  @override
  Widget build(BuildContext context) {
    final hasLeading = leading != null || leadingWidget != null;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: titleColor ?? context.colorScheme.onPrimary,
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: contentPadding ??
              AppPaddings.s16.vertical.copyWith(
                left: horizontalPadding,
                right: horizontalPadding,
              ),
          child: Row(
            crossAxisAlignment: titleAlignment ?? CrossAxisAlignment.center,
            children: [
              if (hasLeading) ...[
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: AppSizes.h.s40,
                    maxWidth: AppSizes.h.s40,
                  ),
                  child: leadingWidget ??
                      leading?.mayOverrideConfig(
                        config: AssetBuilderConfig.icon(
                          color: foregroundColor ?? context.colorScheme.onSurface,
                        ).$svg(
                          color: foregroundColor ?? context.colorScheme.onSurface,
                        ),
                      ),
                ),
                AppGaps.hor.s16,
              ],
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title.isNotEmpty) ...[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: AppTextComponent.bodyLarge(
                              title,
                              maxLines: titleMaxLines,
                              useRichText: useRichText,
                              color: foregroundColor ?? context.colorScheme.onSurface,
                              textAlign: TextAlign.start,
                              overflow: titleMaxLines != null ? TextOverflow.ellipsis : null,
                            ),
                          ),
                          if (highlight != null) ...[
                            AppGaps.hor.s8,
                            highlight!,
                          ],
                        ],
                      ),
                    ],
                    if (customSubtitle != null) ...[
                      AppGaps.ver.s4,
                      customSubtitle!,
                    ] else if (subtitle != null && subtitle!.isNotEmpty) ...[
                      AppGaps.ver.s4,
                      AppTextComponent.labelLarge(
                        subtitle ?? '',
                        color: context.customColorScheme.contentLowest,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        useRichText: useRichText,
                        maxLines: subtitleMaxLines,
                      ),
                    ],
                    if (thirdLine != null) ...[
                      AppGaps.ver.s4,
                      thirdLine!,
                    ],
                  ],
                ),
              ),
              AppGaps.hor.s16,
              if (trailing != null) ...[trailing!],
            ],
          ),
        ),
      ),
    );
  }
}
