part of 'app_detail_list_item_component.dart';

class _Medium extends AppDetailListItemComponent {
  const _Medium({
    required super.label,
    required super.value,
    super.valueColor,
    super.foregroundColor,
    super.isValueSelectable,
    super.valueMaxLines,
    super.valueOverflow,
    super.labelMaxLines,
    super.labelOverflow,
    super.labelIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final valueSelectable = (isValueSelectable ?? false) && value.isNotEmpty;
    return Padding(
      padding: AppPaddings.s4.vertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Wrap(
              children: [
                AppTextComponent.bodyMedium(
                  label,
                  color: foregroundColor,
                  maxLines: labelMaxLines,
                  overflow: labelOverflow,
                ),
                if (labelIcon != null) ...[
                  AppGaps.hor.s8,
                  labelIcon!.mayOverrideConfig(
                    config: AssetBuilderConfig.svg(
                      height: AppSizes.h.s24,
                      width: AppSizes.h.s24,
                      color: foregroundColor ?? context.customColorScheme.content,
                    )
                        .$icon(
                          size: AppSizes.f.s24,
                          color: foregroundColor ?? context.customColorScheme.content,
                        )
                        .$image(
                          height: AppSizes.h.s24,
                          width: AppSizes.h.s24,
                        ),
                  ),
                ],
              ],
            ),
          ),
          AppGaps.hor.s16,
          switch (valueSelectable) {
            true => SelectionArea(
                child: AppTextComponent.labelLargeProminent(
                  value,
                  textAlign: TextAlign.end,
                  color: foregroundColor ?? valueColor,
                  maxLines: valueMaxLines,
                  overflow: valueOverflow,
                ),
              ),
            _ => AppTextComponent.labelLargeProminent(
                value,
                textAlign: TextAlign.end,
                color: foregroundColor ?? valueColor,
                maxLines: valueMaxLines,
                overflow: valueOverflow,
              ),
          },
        ],
      ),
    );
  }
}

class _Prominent extends AppDetailListItemComponent {
  const _Prominent({
    required super.label,
    required super.value,
    super.valueColor,
    super.foregroundColor,
    super.isValueSelectable,
    super.valueMaxLines,
    super.valueOverflow,
    super.labelMaxLines,
    super.labelOverflow,
    super.labelIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final valueSelectable = (isValueSelectable ?? false) && value.isNotEmpty;
    return Padding(
      padding: AppPaddings.s4.vertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Wrap(
              children: [
                AppTextComponent.titleMediumProminent(
                  label,
                  color: foregroundColor,
                  maxLines: labelMaxLines,
                  overflow: labelOverflow,
                ),
                if (labelIcon != null) ...[
                  AppGaps.hor.s8,
                  labelIcon!.mayOverrideConfig(
                    config: AssetBuilderConfig.svg(
                      height: AppSizes.h.s24,
                      width: AppSizes.h.s24,
                      color: foregroundColor ?? context.customColorScheme.content,
                    )
                        .$icon(
                          size: AppSizes.f.s24,
                          color: foregroundColor ?? context.customColorScheme.content,
                        )
                        .$image(
                          height: AppSizes.h.s24,
                          width: AppSizes.h.s24,
                        ),
                  ),
                ],
              ],
            ),
          ),
          AppGaps.hor.s16,
          switch (valueSelectable) {
            true => SelectionArea(
                child: AppTextComponent.titleLargeProminent(
                  value,
                  textAlign: TextAlign.end,
                  color: foregroundColor ?? valueColor,
                  maxLines: valueMaxLines,
                  overflow: valueOverflow,
                ),
              ),
            _ => AppTextComponent.titleLargeProminent(
                value,
                textAlign: TextAlign.end,
                color: foregroundColor ?? valueColor,
                maxLines: valueMaxLines,
                overflow: valueOverflow,
              ),
          },
        ],
      ),
    );
  }
}
