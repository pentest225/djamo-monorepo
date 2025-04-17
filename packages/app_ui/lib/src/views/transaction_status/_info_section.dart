part of 'app_transaction_status_view.dart';

class _InfoSection extends StatelessWidget {
  const _InfoSection({
    required this.title,
    required this.value,
    this.isMini = false,
  });
  final String title;
  final String value;
  final bool isMini;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextComponent.bodyLarge(
          title,
          color: context.customColorScheme.content,
        ),
        AppGaps.ver.s4,
        if (isMini)
          AppTextComponent.titleLargeProminent(
            value,
            color: context.customColorScheme.content,
          )
        else
          AppTextComponent.headlineMedium(
            value,
            color: context.customColorScheme.content,
          ),
      ],
    );
  }
}
