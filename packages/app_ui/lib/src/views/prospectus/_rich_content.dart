part of 'app_prospectus_reader_view.dart';

class _RichContent extends StatelessWidget {
  const _RichContent({
    required this.text,
    this.onUrlPressed,
  });
  final String text;
  final void Function(String)? onUrlPressed;

  @override
  Widget build(BuildContext context) {
    final split = text.split('<style>');
    final defaultStyle = context.theme.textTheme.labelLarge?.copyWith(
      fontWeight: FontWeight.w400,
      color: context.customColorScheme.contentLow,
    );
    return InteractiveViewer(
      child: RichText(
        text: TextSpan(
          children: split.map((e) {
            return TextSpan(
              text: format(e),
              style: updatedStyle(context, defaultStyle, e),
              recognizer: !e.isLinkStyle ? null : TapGestureRecognizer()
                ?..onTap = () {
                  onUrlPressed?.call(format(e));
                },
            );
          }).toList(),
          style: defaultStyle,
        ),
      ),
    );
  }

  String format(String e) {
    var str = e;
    if (str.isBoldStyle) {
      str = str.replaceAll('<b>', '');
    }
    if (str.isLinkStyle) {
      str = str.replaceAll('<a>', '');
    }
    if (str.isBulletedList) {
      str = str.replaceAll('<li>', '');
      str = '\t\t\u16EB $str'.trim();
    }
    return str;
  }

  TextStyle? updatedStyle(BuildContext context, TextStyle? defaultStyle, String e) {
    return defaultStyle?.copyWith(
      fontWeight: e.isBoldStyle
          ? FontWeight.w500
          : e.isLinkStyle
              ? FontWeight.w600
              : null,
      fontSize: e.isLinkStyle ? AppSizes.f.custom(16.5) : AppSizes.f.s16,
      color: e.isLinkStyle ? context.colorScheme.primary : null,
    );
  }
}
