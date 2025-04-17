part of 'app_chips_component.dart';

class _InputChipButtonComponent extends AppChipsComponent {
  const _InputChipButtonComponent({
    required super.labelText,
    required super.onPressed,
    super.selected = false,
    super.key,
    super.backgroundColor,
    super.selectedColor,
    super.avatarWidget,
    super.avatarIcon,
    super.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InputChip(
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
      onPressed: onPressed,
      deleteButtonTooltipMessage: '',
      onDeleted: onPressed,
      deleteIcon: trailingIcon,
    );
  }
}
