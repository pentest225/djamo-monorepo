part of 'app_chips_component.dart';

class _ChoiceChipComponent extends AppChipsComponent {
  const _ChoiceChipComponent({
    required super.labelText,
    required super.selected,
    required super.onSelected,
    super.key,
    super.backgroundColor,
    super.label,
    super.selectedColor,
    super.showCheckmark,
    super.elevation,
    super.avatarWidget,
    super.avatarIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
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
          AppTextComponent.labelLarge(
            labelText,
            color: selected! ? context.colorScheme.onPrimaryContainer : context.colorScheme.onSurface,
          ),
      avatar: avatarWidget ??
          avatarIcon?.mayOverrideConfig(
            config: AssetBuilderConfig.icon(
              size: AppSizes.f.s18,
              color: context.colorScheme.primary,
            ),
          ),
      selected: selected!,
      onSelected: onSelected,
    );
  }
}
