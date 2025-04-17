part of 'app_segmented_button_component.dart';

class _SegmentedButtonBuilder<T> extends StatelessWidget {
  const _SegmentedButtonBuilder({
    required this.items,
    required this.selectedValue,
    required this.multiSelectionEnabled,
    this.onSelectionChanged,
    this.unSelectedItemColor,
    this.selectedItemColor,
    this.showSelectedIcon = true,
    this.fillMaxWidth = false,
    this.contentPadding,
    super.key,
  });
  final List<SegmentItem<T>> items;
  final Set<T> selectedValue;
  final bool multiSelectionEnabled;
  final void Function(Set<T>)? onSelectionChanged;
  final Color? selectedItemColor;
  final Color? unSelectedItemColor;
  final bool showSelectedIcon;
  final bool fillMaxWidth;
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fillMaxWidth ? double.infinity : null,
      child: SegmentedButton<T>(
        showSelectedIcon: showSelectedIcon,
        segments: items.map((item) {
          final isSelected = selectedValue.contains(item.value);
          final enabledForegroundColor = item.enabled
              ? isSelected
                  ? context.colorScheme.onPrimaryContainer
                  : context.customColorScheme.content
              : context.colorScheme.onSurface;
          return ButtonSegment<T>(
            value: item.value,
            label: item.label == null
                ? null
                : AppTextComponent.labelLarge(
                    item.label!,
                    color: enabledForegroundColor,
                    textAlign: TextAlign.center,
                  ),
            icon: item.icon?.mayOverrideConfig(
              config: AssetBuilderConfig.icon(
                size: AppSizes.f.s18,
                color: enabledForegroundColor,
              ).$svg(
                height: AppSizes.h.s18,
                width: AppSizes.w.s18,
                color: enabledForegroundColor,
              ),
            ),
            enabled: item.enabled,
          );
        }).toList(),
        style: ButtonStyle(
          padding: contentPadding != null
              ? WidgetStateProperty.resolveWith<EdgeInsets>(
                  (states) {
                    return contentPadding!;
                  },
                )
              : null,
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return selectedItemColor ?? context.colorScheme.primaryContainer;
              }
              return unSelectedItemColor ?? Colors.transparent;
            },
          ),
        ),
        selected: selectedValue,
        onSelectionChanged: onSelectionChanged,
        multiSelectionEnabled: multiSelectionEnabled,
      ),
    );
  }
}
