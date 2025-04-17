import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

part '_body_large.dart';
part '_body_medium.dart';
part '_body_small.dart';
part '_builder.dart';
part '_display_large.dart';
part '_display_medium.dart';
part '_display_small.dart';
part '_extension.dart';
part '_headline_large.dart';
part '_headline_medium.dart';
part '_headline_small.dart';
part '_label_large.dart';
part '_label_large_prominent.dart';
part '_label_medium.dart';
part '_label_medium_prominent.dart';
part '_label_small.dart';
part '_title_large.dart';
part '_title_large_prominent.dart';
part '_title_medium.dart';
part '_title_medium_prominent.dart';
part '_title_small.dart';

///
abstract class AppTextComponent extends StatelessWidget {
  const AppTextComponent(
    this.data, {
    super.key,
    this.textAlign,
    this.overflow,
    this.color,
    this.maxLines,
    this.useRichText = false,
    this.boldFontWeight,
    this.linkFontWeight,
    this.onUrlPressed,
  });

  const factory AppTextComponent.displayLarge(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _DisplayLarge;

  const factory AppTextComponent.displayMedium(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _DisplayMedium;

  const factory AppTextComponent.displaySmall(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _DisplaySmall;

  const factory AppTextComponent.headlineLarge(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _HeadlineLarge;

  const factory AppTextComponent.headlineMedium(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _HeadlineMedium;

  const factory AppTextComponent.headlineSmall(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _HeadlineSmall;

  const factory AppTextComponent.titleLarge(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _TitleLarge;

  const factory AppTextComponent.titleLargeProminent(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _TitleLargeProminent;

  const factory AppTextComponent.titleMedium(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _TitleMedium;

  const factory AppTextComponent.titleMediumProminent(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _TitleMediumProminent;

  const factory AppTextComponent.titleSmall(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _TitleSmall;

  const factory AppTextComponent.labelLarge(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _LabelLarge;

  const factory AppTextComponent.labelLargeProminent(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _LabelLargeProminent;

  const factory AppTextComponent.labelMedium(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _LabelMedium;

  const factory AppTextComponent.labelMediumProminent(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _LabelMediumProminent;

  const factory AppTextComponent.labelSmall(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _LabelSmall;

  const factory AppTextComponent.bodyLarge(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _BodyLarge;

  const factory AppTextComponent.bodyMedium(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _BodyMedium;

  const factory AppTextComponent.bodySmall(
    String data, {
    Key? key,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    int? maxLines,
    bool useRichText,
    FontWeight? boldFontWeight,
    FontWeight? linkFontWeight,
    void Function(String)? onUrlPressed,
  }) = _BodySmall;

  final String data;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final Color? color;
  final int? maxLines;
  final bool useRichText;
  final FontWeight? boldFontWeight;
  final FontWeight? linkFontWeight;
  final void Function(String)? onUrlPressed;
}
