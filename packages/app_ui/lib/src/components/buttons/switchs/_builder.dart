part of 'app_switch_button_component.dart';

class _SwitchBuilder extends StatelessWidget {
  const _SwitchBuilder({
    required this.isSelected,
    required this.trackColor,
    this.onChanged,
    this.iconSelected,
    this.iconDisabled,
    this.disabledBackgroundColor,
  });

  final IconData? iconSelected;
  final IconData? iconDisabled;
  final bool isSelected;
  final Color? trackColor;
  final Color? disabledBackgroundColor;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final trackColorStateProperty = WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return onChanged == null ? disabledBackgroundColor : trackColor ?? context.colorScheme.primary;
        }

        return null;
      },
    );
    final thumbIconStateProperty = iconSelected != null && iconDisabled != null
        ? WidgetStateProperty.resolveWith<Icon?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return Icon(
                  iconSelected,
                );
              }
              return Icon(
                iconDisabled,
              );
            },
          )
        : null;

    return SizedBox(
      width: AppSizes.w.custom(52),
      height: AppSizes.h.s32,
      child: Switch(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: isSelected,
        thumbIcon: thumbIconStateProperty,
        trackColor: trackColorStateProperty,
        onChanged: onChanged,
      ),
    );
  }
}
