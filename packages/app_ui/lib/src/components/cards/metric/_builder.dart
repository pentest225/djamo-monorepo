part of 'app_key_metric_card.dart';

class _Builder extends StatelessWidget {
  const _Builder({
    required this.metrics,
    required this.backgroundColor,
    required this.borderColor,
  });

  final List<Widget> metrics;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return AppCardComponent(
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      content: Row(
        children: [
          for (int i = 0; i < metrics.length; i++) ...[
            Expanded(
              child: metrics[i],
            ),
            if (i < metrics.length - 1) AppGaps.hor.s32,
          ],
        ],
      ),
    );
  }
}
