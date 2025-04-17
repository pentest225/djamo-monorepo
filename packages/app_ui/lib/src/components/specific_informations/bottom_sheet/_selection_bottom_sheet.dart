part of 'app_bottom_sheet_component.dart';

class _SelectionBottomSheet extends AppBottomSheetComponent {
  const _SelectionBottomSheet({
    required super.title,
    required super.selectionItems,
    super.titleTextAlign,
    super.appSelectionLabel,
    super.primaryCTALabel,
    super.secondaryCTALabel,
    super.onPrimaryCTAPressed,
    super.onSecondaryCTAPressed,
    super.isPrimaryCTAEnabled = true,
    super.isSecondaryCTAEnabled = true,
    super.autoHeight = true,
    super.height,
    super.showCloseButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return _AppBottomSheetBuilder(
      title: title!,
      showCloseButton: showCloseButton,
      titleTextAlign: titleTextAlign,
      appSelectionLabel: appSelectionLabel,
      selectionItems: selectionItems,
      primaryCTALabel: primaryCTALabel ?? 'Primary CTA Label',
      secondaryCTALabel: secondaryCTALabel,
      onPrimaryCTAPressed: onPrimaryCTAPressed,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isPrimaryCTAEnabled,
      autoHeight: autoHeight,
      height: height,
      key: key,
    );
  }
}
