part of 'app_chips_component.dart';

class _Filter extends AppChipsComponent {
  const _Filter({
    required super.labelText,
    required super.selected,
    super.onSelected,
    super.key,
    super.backgroundColor,
    super.selectedColor,
    super.showCheckmark = false,
    super.elevation,
    super.avatarWidget,
    super.avatarIcon,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selected ?? false;
    return FilterChip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: AppPaddings.custom(6).horizontal.copyWith(
            right: AppSizes.w.s10,
          ),
      labelPadding: AppPaddings.s4.left,
      avatarBoxConstraints: BoxConstraints(
        maxHeight: AppSizes.h.s18,
        maxWidth: AppSizes.h.s18,
      ),
      deleteIconBoxConstraints: BoxConstraints(
        maxHeight: AppSizes.h.s18,
        maxWidth: AppSizes.h.s18,
      ),
      label: AppTextComponent.labelLarge(labelText),
      onSelected: onSelected,
      selected: isSelected,
      showCheckmark: showCheckmark,
      backgroundColor: backgroundColor ?? context.colorScheme.surfaceContainer,
      selectedColor: selectedColor ?? context.customColorScheme.primaryContainerLow,
      shape: RoundedRectangleBorder(
        side: isSelected ? BorderSide.none : BorderSide(color: context.colorScheme.outline),
        borderRadius: AppBorderRadius.s8.all,
      ),
    );
  }
}
