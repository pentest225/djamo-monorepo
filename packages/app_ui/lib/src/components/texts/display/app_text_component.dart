import 'package:flutter/material.dart';

part '_builder.dart';
part '_label_small.dart';

abstract class AppTextComponent extends StatelessWidget{
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

  final String data;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final Color? color;
  final int? maxLines;
  final bool useRichText;
  final FontWeight? boldFontWeight;
  final FontWeight? linkFontWeight;
  final void Function(String)? onUrlPressed;

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
}