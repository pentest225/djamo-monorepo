import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/cupertino.dart';

part '_builder.dart';

abstract class AppHeadlineComponent extends StatelessWidget {
  const AppHeadlineComponent({
    required this.header,
    required this.description,
    this.textAlign,
    super.key,
  });

  /// Large headline
  const factory AppHeadlineComponent.large({
    required String header,
    required String description,
    Key? key,
    TextAlign? textAlign,
    Color? foregroundColor,
  }) = _Large;

  /// Large headline with single text
  factory AppHeadlineComponent.largeSingleText({
    required String header,
    Key? key,
    TextAlign? textAlign,
    Color? foregroundColor,
  }) {
    return AppHeadlineComponent.large(
      header: header,
      description: '',
      key: key,
      textAlign: textAlign,
      foregroundColor: foregroundColor,
    );
  }

  /// Large headline
  const factory AppHeadlineComponent.small({
    required String header,
    required String description,
    Key? key,
    TextAlign? textAlign,
    Color? foregroundColor,
  }) = _Small;

  /// Large headline with single text
  factory AppHeadlineComponent.smallSingleText({
    required String header,
    Key? key,
    TextAlign? textAlign,
    Color? foregroundColor,
  }) {
    return AppHeadlineComponent.small(
      header: header,
      description: '',
      key: key,
      textAlign: textAlign,
      foregroundColor: foregroundColor,
    );
  }

  final String header;
  final String description;
  final TextAlign? textAlign;
}
