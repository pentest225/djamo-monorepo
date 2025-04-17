part of 'app_divider_component.dart';

class _Builder extends StatelessWidget {
  const _Builder({
    required this.isVertical,
    required this.indent,
    required this.endIndent,
    this.size = 0,
  });

  final bool isVertical;
  final double? indent;
  final double? endIndent;
  final double? size;

  @override
  Widget build(BuildContext context) {
    if (isVertical) {
      return VerticalDivider(
        indent: indent,
        endIndent: endIndent,
        color: context.customColorScheme.outlineLow,
        width: size ?? 1,
      );
    }
    return Divider(
      indent: indent,
      endIndent: endIndent,
      color: context.customColorScheme.outlineLow,
      height: size ?? 1,
    );
  }
}
