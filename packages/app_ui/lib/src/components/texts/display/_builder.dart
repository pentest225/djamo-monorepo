part of 'app_text_component.dart';

class _Builder extends StatelessWidget {
  const _Builder({
    required this.data,
    required this.mainStyle,
    this.textAlign,
    this.overflow,
    this.color,
    this.maxLines,
    this.useRichText = false,
    this.boldFontWeight,
    this.linkFontWeight,
    this.onUrlPressed,
  });

  final String data;
  final TextStyle? mainStyle;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final Color? color;
  final int? maxLines;
  final bool useRichText;
  final FontWeight? boldFontWeight;
  final FontWeight? linkFontWeight;
  final void Function(String)? onUrlPressed;

  @override
  Widget build(BuildContext context) {
    //TODO: Prendre en compte les RichText dans le builder
    // if (useRichText) {
    //   final split = splitData(data);
    //   return RichText(
    //     maxLines: maxLines,
    //     overflow: overflow ?? TextOverflow.clip,
    //     text: TextSpan(
    //       children: split.map((e) {
    //         return TextSpan(
    //           text: switch (e.isBulletedList) {
    //             true => '\n• ${unwrap(e)}',
    //             _ => unwrap(e),
    //           },
    //           style: updatedStyle(context, boldFontWeight, linkFontWeight, e),
    //           recognizer: !e.isLinkStyle ? null : TapGestureRecognizer()
    //             ?..onTap = () {
    //               onUrlPressed?.call(unwrap(e));
    //             },
    //         );
    //       }).toList(),
    //       style: mainStyle,
    //     ),
    //   );
    // }
    return Text(
      data,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: mainStyle?.copyWith(
        color: color,
      ),
    );
  }

  List<String> splitData(String text) {
    final regex = RegExp(r'(<style><(a|b|li)>.*?<\2><style>)|(\*.*?\*)');
    final result = <String>[];
    var lastIndex = 0;
    for (final match in regex.allMatches(text)) {
      if (match.start > lastIndex) {
        result.add(text.substring(lastIndex, match.start));
      }
      result.add(match.group(0)!);
      lastIndex = match.end;
    }
    if (lastIndex < text.length) {
      result.add(text.substring(lastIndex));
    }
    return result;
  }

  String unwrap(String e) {
    return e.replaceAllMapped(RegExp(r'<style><(a|b|li)>(.*?)<\1><style>|\*(.*?)\*'), (match) {
      if (match.group(2) != null) {
        return match.group(2)!;
      }
      if (match.group(3) != null) {
        return match.group(3)!;
      }
      return '';
    });
  }

  //TODO: Le update Style est utilisé dans le RichText
  // TextStyle? updatedStyle(
  //   BuildContext context,
  //   FontWeight? boldFontWeight,
  //   FontWeight? linkFontWeight,
  //   String e,
  // ) {
  //   final fontSize = mainStyle?.fontSize;
  //   return mainStyle?.copyWith(
  //     fontWeight: e.isBoldStyle
  //         ? (boldFontWeight ?? FontWeight.w700)
  //         : e.isLinkStyle
  //             ? (linkFontWeight ?? FontWeight.w600)
  //             : null,
  //     fontSize: e.isLinkStyle && fontSize != null ? fontSize + .5 : fontSize,
  //     color: e.isLinkStyle ? context.colorScheme.primary : null,
  //   );
  // }
}
