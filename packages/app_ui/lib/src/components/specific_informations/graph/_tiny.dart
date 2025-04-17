part of 'app_graph_component.dart';

class _Tiny extends AppGraphComponent {
  const _Tiny({
    required super.yAxisMaxValue,
    required this.maxXAxisValue,
    required super.graphs,
    this.height,
    super.key,
  });

  final double? height;
  final double maxXAxisValue;

  @override
  Widget build(BuildContext context) {
    return AppDottedBorderContainerComponent(
      radius: 0,
      strokeWidth: AppSizes.w.custom(1),
      dashSpace: AppSizes.w.custom(2),
      dashColor: context.customColorScheme.contentLowest,
      direction: DottedBorderDirection.bottom,
      child: SizedBox(
        height: height ?? AppSizes.h.s32,
        width: double.infinity,
        child: Padding(
          padding: AppPaddings.s10.left.copyWith(
            bottom: AppSizes.h.custom(2),
          ),
          child: _LineChart(
            yAxisMaxValue,
            graphs,
            maxXAxisValue: maxXAxisValue,
            bottomTitles: const AxisTitles(
              sideTitles: SideTitles(reservedSize: 5, showTitles: true),
            ),
          ),
        ),
      ),
    );
  }
}
