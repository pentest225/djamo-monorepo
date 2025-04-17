part of 'app_graph_component.dart';

class _Invest extends AppGraphComponent {
  const _Invest({
    required this.data,
    super.yAxisMaxValue = 0,
    super.graphs = const [],
    super.key,
  });

  final AppInvestGraphData data;

  @override
  Widget build(BuildContext context) {
    return _InvestView(data: data);
  }
}

class _InvestView extends StatefulWidget {
  const _InvestView({
    required this.data,
  });

  final AppInvestGraphData data;

  @override
  State<_InvestView> createState() => _InvestViewState();
}

class _InvestViewState extends State<_InvestView> {
  int _index = 0;

  AppInvestGraphDatum get _currentData => widget.data[_index];

  @override
  Widget build(BuildContext context) {
    return AppCardComponent(
      backgroundColor: Colors.transparent,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppSizes.h.custom(52),
            child: AppSegmentedButtonComponent(
              showSelectedIcon: false,
              fillMaxWidth: true,
              items: widget.data.mapIndexed((index, e) {
                return SegmentItem(value: index, label: e.period);
              }).toList(),
              selectedValue: {_index},
              onSelectionChanged: (v) {
                setState(() {
                  _index = v.first;
                });
              },
            ),
          ),
          AppGaps.ver.s16,
          AppInterestSectionComponent(
            isVisible: true,
            label: context.l10n.performance,
            isNegative: _currentData.performancePercentage.current.isNegative,
            interestPercentage: _currentData.performancePercentage,
            interestAmount: _currentData.performanceAmount,
          ),
          AppGaps.ver.s16,
          SizedBox(
            height: AppSizes.h.custom(112),
            child: _LineChart(
              _currentData.yAxisMaxValue,
              _currentData.graphs,
            ),
          ),
        ],
      ),
    );
  }
}
