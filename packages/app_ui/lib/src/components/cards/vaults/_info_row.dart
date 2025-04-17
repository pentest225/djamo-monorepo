part of 'app_vault_basic_controls_card_component.dart';

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.value,
    this.content,
    this.customContent,
    this.contentSeparator,
  });

  final String value;
  final String? content;
  final Widget? customContent;
  final Widget? contentSeparator;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextComponent.titleMedium(value),
        if (contentSeparator != null) contentSeparator!,
        if (customContent != null) ...[
          customContent!,
        ] else ...[
          AppTextComponent.headlineMedium(content!),
        ],
      ],
    );
  }
}
