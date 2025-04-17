part of 'app_bottom_sheet_component.dart';

class _CustomBottomSheet extends AppBottomSheetComponent {
  const _CustomBottomSheet({
    required super.customWidget,
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
      title: '',
      showCloseButton: showCloseButton,
      customWidget: customWidget,
      autoHeight: autoHeight,
      height: height,
    );
  }
}
