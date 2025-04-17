part of 'app_chips_component.dart';

class _InputChipComponent extends AppChipsComponent {
  const _InputChipComponent({
    required super.labelText,
    required super.selected,
    super.onSelected,
    super.onDeleted,
    super.label,
    super.key,
    super.selectedForegroundColor,
    super.backgroundColor,
    super.selectedColor,
    super.elevation,
    super.showCheckmark,
    super.avatarWidget,
    super.avatarIcon,
    super.trailingIcon,
    this.borderSide,
  });
  final BorderSide? borderSide;
  @override
  Widget build(BuildContext context) {
    return InputChip(
      padding: AppPaddings.custom(6).horizontal.copyWith(
            right: AppSizes.w.s10,
          ),
      labelPadding: AppPaddings.s4.left,
      avatarBoxConstraints: BoxConstraints(
        maxHeight: AppSizes.h.s18,
        maxWidth: AppSizes.h.s18,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: AppBorderRadius.s8.all,
        side: borderSide ?? BorderSide.none,
      ),
      deleteIconBoxConstraints: BoxConstraints(
        maxHeight: AppSizes.h.s18,
        maxWidth: AppSizes.h.s18,
      ),
      backgroundColor: backgroundColor ?? context.colorScheme.surface,
      selectedColor: selectedColor ?? context.colorScheme.primaryContainer,
      elevation: elevation,
      color: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return selectedColor ?? context.colorScheme.primaryContainer;
          }

          return null;
        },
      ),
      showCheckmark: showCheckmark ?? avatarIcon == null && avatarWidget == null,
      label: label ??
          AppTextComponent.labelSmall(
            labelText,
            color: selected! ? selectedForegroundColor ?? context.colorScheme.onPrimaryContainer : context.colorScheme.onSurface,
          ),
      avatar: avatarWidget ??
          avatarIcon?.mayOverrideConfig(
            config: AssetBuilderConfig.icon(
              size: AppSizes.f.s18,
              color: context.colorScheme.primary,
            )
                .$svg(
                  height: AppSizes.h.s18,
                  width: AppSizes.h.s18,
                )
                .$image(
                  height: AppSizes.h.s18,
                  width: AppSizes.h.s18,
                ),
          ),
      selected: selected!,
      onSelected: onSelected,
      onDeleted: onDeleted,
      deleteButtonTooltipMessage: '',
      deleteIcon: trailingIcon,
    );
  }
}
