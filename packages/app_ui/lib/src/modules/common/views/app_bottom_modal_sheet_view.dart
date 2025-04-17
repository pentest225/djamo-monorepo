import 'package:app_ui/src/components/specific_informations/banner/app_banners_component.dart';
import 'package:app_ui/src/components/texts/texts.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/modules/common/atoms/atoms.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';

///  App Bottom Modal Sheet View
///  This is a stateless widget that represents a bottom modal sheet view in the application.
///  It includes several optional and required parameters to customize the view.
class AppBottomModalSheetView extends StatelessWidget {
  ///
  ///  Constructor for AppBottomModalSheetView.
  ///  [title] - The title of the modal sheet.
  ///  [hintText] - The hintText of the modal sheet.
  ///  [description] - The description of the modal sheet.
  ///  [primaryCTALabel] - The label for the primary call to action button.
  ///  [onPrimaryCTAPressed] - The function to be executed when the primary call to action button is pressed.
  ///  [alignCTAsHorizontally] - A boolean to determine if the call to action buttons should be aligned horizontally. Default is false.
  ///  [centerHeader] - A boolean to determine if the header should be centered. Default is true.
  ///  [secondaryCTALabel] - The label for the secondary call to action button. Optional.
  ///  [onSecondaryCTAPressed] - The function to be executed when the secondary call to action button is pressed. Optional.
  ///  [illustrationWidget] - A widget to be used as an illustration at the top of the modal sheet. Optional.
  ///  [bannerContent] - The content for the banner component. Optional.
  ///  [middleWidget] - A widget to be placed in the middle of the modal sheet. Optional.
  const AppBottomModalSheetView({
    required this.title,
    required this.description,
    this.primaryCTALabel,
    this.hintText,
    this.onPrimaryCTAPressed,
    this.alignCTAsHorizontally = false,
    this.centerHeader = true,
    this.secondaryCTALabel,
    this.onSecondaryCTAPressed,
    this.illustrationWidget,
    this.bannerContent,
    this.middleWidget,
    this.primaryCTABackgroundColor,
    this.primaryCTAForegroundColor,
    this.isPrimaryCTAEnabled = true,
    this.isSecondaryCTAEnabled = true,
    super.key,
  }) /* : assert(
          (secondaryCTALabel == null && onSecondaryCTAPressed == null) ||
              (secondaryCTALabel != null && onSecondaryCTAPressed != null),
          'If secondaryCTALabel is provided, onSecondaryCTAPressed must also be provided',
        ) */
  ;

  //Success
  factory AppBottomModalSheetView.success({
    required String title,
    required String description,
    required String primaryCTALabel,
    required void Function(BuildContext) onPrimaryCTAPressed,
    Map<String, dynamic>? details,
    bool alignCTAsHorizontally = false,
    String? secondaryCTALabel,
    void Function(BuildContext)? onSecondaryCTAPressed,
    String? bannerContent,
    Widget? middleWidget,
    bool isPrimaryCTAEnabled = true,
    bool isSecondaryCTAEnabled = true,
    Key? key,
  }) {
    return AppBottomModalSheetView(
      key: key,
      title: title,
      description: description,
      primaryCTALabel: primaryCTALabel,
      onPrimaryCTAPressed: onPrimaryCTAPressed,
      alignCTAsHorizontally: alignCTAsHorizontally,
      secondaryCTALabel: secondaryCTALabel,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      illustrationWidget: Assets.illustrations.check.image(
        width: AppSizes.h.custom(120),
        height: AppSizes.h.custom(120),
      ),
      bannerContent: bannerContent,
      middleWidget: middleWidget ?? (details == null ? null : _DetailsRenderWidget(details: details)),
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isSecondaryCTAEnabled,
    );
  }
  //Warning
  factory AppBottomModalSheetView.warning({
    required String title,
    required String message,
    required String primaryCTALabel,
    required void Function(BuildContext) onPrimaryCTAPressed,
    Map<String, dynamic>? details,
    bool alignCTAsHorizontally = false,
    String? secondaryCTALabel,
    void Function(BuildContext)? onSecondaryCTAPressed,
    String? bannerContent,
    Widget? middleWidget,
    bool isPrimaryCTAEnabled = true,
    bool isSecondaryCTAEnabled = true,
    Key? key,
  }) {
    return AppBottomModalSheetView(
      key: key,
      title: title,
      description: message,
      primaryCTALabel: primaryCTALabel,
      onPrimaryCTAPressed: onPrimaryCTAPressed,
      alignCTAsHorizontally: alignCTAsHorizontally,
      secondaryCTALabel: secondaryCTALabel,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      illustrationWidget: Assets.illustrations.warning.image(
        width: AppSizes.h.custom(120),
        height: AppSizes.h.custom(120),
      ),
      bannerContent: bannerContent,
      middleWidget: middleWidget ?? (details == null ? null : _DetailsRenderWidget(details: details)),
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isSecondaryCTAEnabled,
    );
  }

  //
  //Error
  factory AppBottomModalSheetView.error({
    required String title,
    required String description,
    required String primaryCTALabel,
    required void Function(BuildContext) onPrimaryCTAPressed,
    Map<String, dynamic>? details,
    bool alignCTAsHorizontally = false,
    String? secondaryCTALabel,
    void Function(BuildContext)? onSecondaryCTAPressed,
    String? bannerContent,
    bool isPrimaryCTAEnabled = true,
    bool isSecondaryCTAEnabled = true,
    Key? key,
  }) {
    return AppBottomModalSheetView(
      key: key,
      title: title,
      description: description,
      primaryCTALabel: primaryCTALabel,
      onPrimaryCTAPressed: onPrimaryCTAPressed,
      alignCTAsHorizontally: alignCTAsHorizontally,
      secondaryCTALabel: secondaryCTALabel,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      illustrationWidget: Assets.illustrations.cross.image(
        width: AppSizes.h.custom(120),
        height: AppSizes.h.custom(120),
      ),
      bannerContent: bannerContent,
      middleWidget: details == null ? null : _DetailsRenderWidget(details: details),
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isSecondaryCTAEnabled,
    );
  }
  //confirmation with summary
  factory AppBottomModalSheetView.confirmation({
    required String title,
    required String description,
    required Map<String, dynamic> details,
    required String primaryCTALabel,
    required void Function(BuildContext) onPrimaryCTAPressed,
    bool alignCTAsHorizontally = false,
    String? secondaryCTALabel,
    void Function(BuildContext)? onSecondaryCTAPressed,
    String? bannerContent,
    bool isPrimaryCTAEnabled = true,
    bool isSecondaryCTAEnabled = true,
    Key? key,
  }) {
    return AppBottomModalSheetView(
      key: key,
      title: title,
      description: description,
      primaryCTALabel: primaryCTALabel,
      onPrimaryCTAPressed: onPrimaryCTAPressed,
      alignCTAsHorizontally: alignCTAsHorizontally,
      secondaryCTALabel: secondaryCTALabel,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      bannerContent: bannerContent,
      middleWidget: details.isEmpty ? null : _DetailsRenderWidget(details: details),
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isSecondaryCTAEnabled,
    );
  }

  //selection
  factory AppBottomModalSheetView.selection({
    required String title,
    required String description,
    required String initialIdentifier,
    required SelectionItems items,
    String? hintText,
    bool centerHeader = false,
    bool alignCTAsHorizontally = false,
    Widget Function(BuildContext, SelectionItem)? itemBuilder,
    Widget Function(BuildContext, int)? customItemBuilder,
    void Function(BuildContext)? onSecondaryCTAPressed,
    bool isPrimaryCTAEnabled = true,
    bool isSecondaryCTAEnabled = true,
    Key? key,
  }) {
    return AppBottomModalSheetView(
      key: key,
      title: title,
      hintText: hintText,
      description: description,
      centerHeader: centerHeader,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      middleWidget: Expanded(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: customItemBuilder != null
              ? (context, index) => customItemBuilder(context, index)
              : (context, index) {
                  final item = items[index];
                  return RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.trailing,
                    value: item.identifier,
                    groupValue: initialIdentifier,
                    title: itemBuilder?.call(context, item) ?? Text(item.label),
                    onChanged: (selected) {
                      if (selected == null) {
                        return;
                      }
                      final item = items.firstWhere((e) => e.identifier == selected);
                      Navigator.of(context).pop(item);
                    },
                  );
                },
        ),
      ),
      alignCTAsHorizontally: alignCTAsHorizontally,
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isSecondaryCTAEnabled,
    );
  }

  final String title;
  final String? hintText;
  final String description;
  final bool centerHeader;
  final Widget? illustrationWidget;
  final String? bannerContent;
  final String? primaryCTALabel;
  final void Function(BuildContext)? onPrimaryCTAPressed;
  final String? secondaryCTALabel;
  final void Function(BuildContext)? onSecondaryCTAPressed;
  final bool alignCTAsHorizontally;
  final Widget? middleWidget;
  final Color? primaryCTABackgroundColor;
  final Color? primaryCTAForegroundColor;
  final bool isPrimaryCTAEnabled;
  final bool isSecondaryCTAEnabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.s24.horizontal.copyWith(
        bottom: AppSizes.h.s24,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            AppSizes.r.custom(28),
          ),
          topRight: Radius.circular(
            AppSizes.r.custom(28),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (illustrationWidget != null) ...[
              Align(
                child: SizedBox.square(
                  dimension: AppSizes.h.custom(120),
                  child: illustrationWidget,
                ),
              ),
              AppGaps.ver.s24,
            ],
            if (hintText != null && hintText!.isNotEmpty) ...[
              AppTextComponent.bodyMedium(
                hintText!,
                textAlign: centerHeader ? TextAlign.center : TextAlign.start,
              ),
              AppGaps.ver.s8,
            ],
            if (title.isNotEmpty) ...[
              if (hintText != null && hintText!.isNotEmpty)
                AppTextComponent.headlineLarge(
                  title,
                  textAlign: centerHeader ? TextAlign.center : TextAlign.start,
                )
              else
                AppTextComponent.headlineSmall(
                  title,
                  textAlign: centerHeader ? TextAlign.center : TextAlign.start,
                ),
              AppGaps.ver.s8,
            ],
            if (description.isNotEmpty) ...[
              AppTextComponent.bodyMedium(
                description,
                textAlign: centerHeader ? TextAlign.center : TextAlign.start,
              ),
              AppGaps.ver.s24,
            ],
            if (middleWidget != null) ...[
              middleWidget!,
              AppGaps.ver.s24,
            ],
            if (bannerContent != null && bannerContent!.isNotEmpty) ...[
              AppBannersComponent.info(
                title: '',
                contentText: bannerContent ?? '',
                showLabelButton: false,
              ),
              AppGaps.ver.s24,
            ],
            if (alignCTAsHorizontally)
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    if (onSecondaryCTAPressed != null) ...[
                      Expanded(
                        child: AppButtonWidget.secondary(
                          enable: isSecondaryCTAEnabled,
                          label: secondaryCTALabel ?? 'Close',
                          onPressed: () => onSecondaryCTAPressed?.call(context),
                        ),
                      ),
                      AppGaps.hor.s8,
                    ],
                    if (onPrimaryCTAPressed != null)
                      Expanded(
                        child: AppButtonWidget.primary(
                          enable: isPrimaryCTAEnabled,
                          backgroundColor: primaryCTABackgroundColor,
                          foregroundColor: primaryCTAForegroundColor,
                          label: primaryCTALabel ?? context.l10n.continueLabel,
                          onPressed: () => onPrimaryCTAPressed?.call(context),
                        ),
                      ),
                  ],
                ),
              )
            else ...[
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (onPrimaryCTAPressed != null)
                      AppButtonWidget.primary(
                        enable: isPrimaryCTAEnabled,
                        label: primaryCTALabel ?? context.l10n.continueLabel,
                        backgroundColor: primaryCTABackgroundColor,
                        foregroundColor: primaryCTAForegroundColor,
                        onPressed: () => onPrimaryCTAPressed?.call(context),
                      ),
                    if (onSecondaryCTAPressed != null && secondaryCTALabel!.isEmpty) ...[
                      AppGaps.ver.s8,
                      AppButtonWidget.secondary(
                        enable: isSecondaryCTAEnabled,
                        label: secondaryCTALabel ?? 'Close',
                        //Fix missing localization
                        onPressed: () => onSecondaryCTAPressed?.call(context),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _DetailsRenderWidget extends StatelessWidget {
  const _DetailsRenderWidget({
    required this.details,
  });

  final Map<String, dynamic> details;

  @override
  Widget build(BuildContext context) {
    if (details.isEmpty) {
      return const SizedBox.shrink();
    }
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.r.s8),
      ),
      child: Padding(
        padding: AppPaddings.s16.symmetric,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final entry in details.entries) ...[
              Row(
                children: [
                  AppTextComponent.titleSmall(
                    entry.key,
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  AppTextComponent.bodyMedium(
                    entry.value.toString(),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              if (entry != details.entries.last) AppGaps.ver.s4,
            ],
          ],
        ),
      ),
    );
  }
}
