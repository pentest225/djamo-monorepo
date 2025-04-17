part of 'app_chips_component.dart';

class _InputChipSwithAvatarComponent extends AppChipsComponent {
  const _InputChipSwithAvatarComponent({
    required super.labelText,
    required super.selected,
    required super.onSelected,
    required super.activeAvatarIcon,
    required super.disableAvatarIcon,
    super.onDeleted,
    super.key,
    super.backgroundColor,
    super.selectedColor,
    super.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return InputChip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.r.custom(100))),
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
      showCheckmark: false,
      label: AppTextComponent.labelLarge(
        labelText,
        color: selected! ? context.colorScheme.onPrimaryContainer : context.colorScheme.onSurface,
      ),
      avatar: selected! ? activeAvatarIcon : disableAvatarIcon,
      selected: selected!,
      onSelected: onSelected,
      onDeleted: onDeleted,
      deleteButtonTooltipMessage: '',
    );
  }
}
