part of 'app_illustration_card_component.dart';

class _CTA extends AppIllustrationCardComponent {
  const _CTA({
    required super.title,
    required super.description,
    required this.actionLabel,
    super.isIllustrationBackgroundColored,
    this.onActionPressed,
    super.key,
  });

  final String actionLabel;
  final VoidCallback? onActionPressed;
  @override
  Widget build(BuildContext context) {
    return _Builder(
      title: title,
      description: description,
      action: AppCommonButtonComponent.outlinedButton(
        label: actionLabel,
        onPressed: onActionPressed,
      ),
      isIllustrationBackgroundColored: isIllustrationBackgroundColored,
    );
  }
}
