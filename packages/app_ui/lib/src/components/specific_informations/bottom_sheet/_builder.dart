part of 'app_bottom_sheet_component.dart';

class _AppBottomSheetBuilder extends StatelessWidget {
  const _AppBottomSheetBuilder({
    required this.title,
    this.primaryCTALabel,
    this.inputTextFieldComponent,
    this.onPrimaryCTAPressed,
    this.secondaryCTALabel,
    this.onSecondaryCTAPressed,
    this.illustrationWidget,
    this.isPrimaryCTAEnabled = true,
    this.isSecondaryCTAEnabled = true,
    this.infoCard,
    this.confirmationInfo,
    this.appSelectionLabel,
    this.selectionItems,
    this.loadingWidget,
    this.customWidget,
    this.autoHeight = true,
    this.height,
    this.titleTextAlign,
    this.isScrollableSelection = false,
    this.confirmationInfoType,
    this.showCloseButton = false,
    super.key,
    this.primaryButtonKey,
    this.secondaryButtonKey,
  });

  final String title;
  final TextAlign? titleTextAlign;
  final String? primaryCTALabel;
  final void Function(BuildContext)? onPrimaryCTAPressed;
  final String? secondaryCTALabel;
  final void Function(BuildContext)? onSecondaryCTAPressed;
  final bool isPrimaryCTAEnabled;
  final bool isSecondaryCTAEnabled;
  final bool autoHeight;
  final double? height;
  final bool showCloseButton;

  /// Information
  final AppAssetBuilder? illustrationWidget;

  ///Input, prefer to use [AppTextFieldComponent]
  final Widget? inputTextFieldComponent;

  /// Confirmation
  final List<InfoCardItem>? infoCard;
  final String? confirmationInfo;
  final BannerTypeEnum? confirmationInfoType;

  /// Selection
  final AppSectionLabel? appSelectionLabel;
  final List<Widget>? selectionItems;

  /// Pending
  final Widget? loadingWidget;

  /// Custom
  final Widget? customWidget;
  final bool isScrollableSelection;
  final Key? primaryButtonKey;
  final Key? secondaryButtonKey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: autoHeight == false ? height : null,
        padding: AppPaddings.s16.horizontal.copyWith(
          bottom: AppSizes.h.s24,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              AppSizes.r.s28,
            ),
            topRight: Radius.circular(
              AppSizes.r.s28,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: AppPaddings.s8.horizontal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    child: AppBottomSheetAnchor(
                      color: context.customColorScheme.contentLowest,
                    ),
                  ),
                  if (showCloseButton) ...[
                    Align(
                      alignment: Alignment.topRight,
                      child: AppAssetBuilder.svg(
                        svg: Assets.icons.close,
                        onTap: () {
                          useAppPopModalBottomSheet(
                            context,
                            shouldForcePop: true,
                          ).ignore();
                        },
                      ),
                    ),
                  ],
                  AppGaps.ver.custom(showCloseButton ? 20 : 44),
                  if (illustrationWidget != null) ...[
                    Align(
                      child: illustrationWidget!.mayOverrideConfig(
                        config: AssetBuilderConfig.icon(
                          size: 120,
                        )
                            .$image(
                              height: AppSizes.h.custom(120),
                              width: AppSizes.h.custom(120),
                            )
                            .$svg(
                              height: AppSizes.h.custom(120),
                              width: AppSizes.h.custom(120),
                            )
                            .$lottie(
                              height: AppSizes.h.custom(120),
                              width: AppSizes.h.custom(120),
                            ),
                      ),
                    ),
                    AppGaps.ver.s24,
                  ],
                  if (loadingWidget != null) loadingWidget!,
                  if (customWidget != null) customWidget!,
                  if (title.isNotEmpty)
                    AppTextComponent.titleLargeProminent(
                      title,
                      textAlign: titleTextAlign ?? TextAlign.center,
                    ),
                  if (inputTextFieldComponent != null) ...[
                    AppGaps.ver.s24,
                    inputTextFieldComponent!,
                  ],
                  Column(
                    children: [
                      if (infoCard != null && infoCard!.isNotEmpty) ...[
                        AppGaps.ver.s24,
                        AppInfoCardComponent.medium(
                          info: infoCard!,
                        ),
                      ],
                      if (confirmationInfo != null && confirmationInfo!.isNotEmpty) ...[
                        AppGaps.ver.s24,
                        switch (confirmationInfoType) {
                          BannerTypeEnum.warning => AppBannersComponent.warning(
                              contentText: confirmationInfo,
                              showLabelButton: false,
                            ),
                          BannerTypeEnum.error => AppBannersComponent.error(
                              contentText: confirmationInfo,
                              showLabelButton: false,
                            ),
                          _ => AppBannersComponent.info(
                              contentText: confirmationInfo,
                              showLabelButton: false,
                            ),
                        },
                      ],
                    ],
                  ),
                  if (appSelectionLabel != null) appSelectionLabel!,
                  if (selectionItems != null && selectionItems!.isNotEmpty) ...[
                    AppGaps.ver.s24,
                    Column(
                      children: selectionItems!.map((item) {
                        return Padding(
                          padding: AppPaddings.s16.bottom,
                          child: item,
                        );
                      }).toList(),
                    ),
                  ],
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppGaps.ver.s16,
                  if (onPrimaryCTAPressed != null) ...[
                    AppGaps.ver.s12,
                    AppCommonButtonComponent.filledButton(
                      label: primaryCTALabel ?? 'Primary CTA',
                      isEnabled: isPrimaryCTAEnabled,
                      onPressed: () => onPrimaryCTAPressed?.call(context),
                      isLarge: true,
                      key: primaryButtonKey,
                    ),
                  ],
                  if (onSecondaryCTAPressed != null) ...[
                    AppGaps.ver.s8,
                    AppCommonButtonComponent.outlinedButton(
                      label: secondaryCTALabel ?? 'Secondary CTA',
                      isEnabled: isSecondaryCTAEnabled,
                      onPressed: () => onSecondaryCTAPressed?.call(context),
                      isLarge: true,
                      key: secondaryButtonKey,
                    ),
                    AppGaps.ver.s24,
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBottomSheetAnchor extends StatelessWidget {
  const AppBottomSheetAnchor({
    super.key,
    this.width = 32,
    this.height = 4,
    this.color = Colors.white,
  });
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: AppPaddings.s16.top,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(24)),
      ),
    );
  }
}
