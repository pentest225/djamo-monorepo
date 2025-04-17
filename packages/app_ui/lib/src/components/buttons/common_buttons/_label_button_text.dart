part of 'app_common_button_component.dart';

class _LabelButtonText extends StatelessWidget {
  const _LabelButtonText({
    required this.label,
    required this.isEnabled,
    required this.foregroundColor,
    required this.disabledForegroundColor,
    required this.onPressed,
    this.hasLeadingIcon = false,
  });

  final String label;
  final bool isEnabled;
  final Color foregroundColor;
  final Color disabledForegroundColor;
  final void Function()? onPressed;
  final bool hasLeadingIcon;

  @override
  Widget build(BuildContext context) {
    return AppTextComponent.labelLarge(
      label,
      color: onPressed == null || !isEnabled ? disabledForegroundColor : foregroundColor,
      maxLines: hasLeadingIcon ? 1 : null,
      overflow: hasLeadingIcon ? TextOverflow.ellipsis : null,
    );
  }
}
