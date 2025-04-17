import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class AppHtmlWidgetComponent extends StatelessWidget {
  const AppHtmlWidgetComponent({
    super.key,
    this.htmlText = '',
    this.textStyle,
    this.enableCaching = false,
    this.onTapImage,
    this.customStylesBuilder,
    this.onTapUrl,
  });

  final String htmlText;
  final TextStyle? textStyle;
  final bool enableCaching;
  final void Function(ImageMetadata)? onTapImage;
  final CustomStylesBuilder? customStylesBuilder;
  final Future<bool> Function(String)? onTapUrl;

  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      htmlText,
      textStyle: textStyle ?? const TextStyle(fontFamily: 'GTWalsheimPro', fontSize: 18),
      onTapImage: onTapImage,
      customStylesBuilder: customStylesBuilder ??
          (element) {
            if (element.localName!.contains('a')) {
              return {'color': 'blue'};
            } else if (element.localName!.contains('tr')) {
              return {'color': 'black', 'font-size': '10px'};
            } else if (element.localName!.contains('p')) {
              return {'text-align': 'justify'};
            }

            return null;
          },
      onTapUrl: onTapUrl,
    );
  }
}
