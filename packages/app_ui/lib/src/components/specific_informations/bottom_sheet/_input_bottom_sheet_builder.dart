part of 'app_dropdown_bottom_sheet_component.dart';

class _InputBottomSheetBuilder<T> extends StatelessWidget {
  const _InputBottomSheetBuilder({
    required this.title,
    required this.label,
    required this.hasFocused,
    required this.items,
    required this.onItemChanged,
    required this.onMenuStateChange,
    this.buttonKey,
    this.value,
    this.decoration,
    this.itemValueFormatter,
    this.primaryCTALabel,
    this.onPrimaryCTAPressed,
    this.secondaryCTALabel,
    this.onSecondaryCTAPressed,
    this.isPrimaryCTAEnabled = true,
    this.isSecondaryCTAEnabled = true,
    this.autoHeight = true,
    this.height,
    super.key,
  });

  final String title;
  final String? primaryCTALabel;
  final void Function(BuildContext)? onPrimaryCTAPressed;
  final String? secondaryCTALabel;
  final void Function(BuildContext)? onSecondaryCTAPressed;
  final bool isPrimaryCTAEnabled;
  final bool isSecondaryCTAEnabled;
  final bool autoHeight;
  final double? height;
  final T? value;
  final String label;
  final bool hasFocused;
  final AppDropdownDecoration? decoration;
  final List<T> items;
  final void Function(T?) onItemChanged;
  final ValueChanged<bool> onMenuStateChange;
  final String Function(T?)? itemValueFormatter;
  final GlobalKey? buttonKey;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                AppGaps.ver.s28,
                if (title.isNotEmpty)
                  AppTextComponent.titleLargeProminent(
                    title,
                    textAlign: TextAlign.center,
                  ),
                AppGaps.ver.s24,
                _AppDropdownFieldWidget<T>(
                  key: buttonKey,
                  label: label,
                  items: items,
                  hasFocused: hasFocused,
                  decoration: decoration,
                  onItemChanged: onItemChanged,
                  onMenuStateChange: onMenuStateChange,
                  itemValueFormatter: itemValueFormatter,
                  value: value,
                ),
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
                    label: primaryCTALabel!,
                    isEnabled: isPrimaryCTAEnabled,
                    onPressed: () => onPrimaryCTAPressed?.call(context),
                    isLarge: true,
                  ),
                ],
                if (onSecondaryCTAPressed != null) ...[
                  AppGaps.ver.s8,
                  AppCommonButtonComponent.outlinedButton(
                    label: secondaryCTALabel!,
                    isEnabled: isSecondaryCTAEnabled,
                    onPressed: () => onSecondaryCTAPressed?.call(context),
                    isLarge: true,
                  ),
                  AppGaps.ver.s24,
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
