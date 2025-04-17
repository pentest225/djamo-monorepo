part of 'app_prospectus_reader_view.dart';

class _Accordion extends StatelessWidget {
  const _Accordion({
    required this.title,
    required this.children,
    this.useChildrenLeftPadding = true,
  });
  final String title;
  final List<Widget> children;
  final bool useChildrenLeftPadding;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      expandedAlignment: Alignment.centerLeft,
      iconColor: const Color(0xFF1B1B1E),
      collapsedIconColor: const Color(0xFF1B1B1E),
      shape: const RoundedRectangleBorder(),
      tilePadding: EdgeInsets.zero,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppTextComponent.titleMedium(
            title,
          ),
          AppDividerComponent.horizontal(height: AppSizes.h.s8),
        ],
      ),
      childrenPadding: EdgeInsets.only(
        left: !useChildrenLeftPadding ? 0 : AppSizes.w.s16,
        bottom: AppSizes.h.s4,
      ),
      children: children,
    );
  }
}
