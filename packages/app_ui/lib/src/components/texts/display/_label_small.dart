part of 'app_text_component.dart';

class _LabelSmall extends AppTextComponent {
  const _LabelSmall(
    super.data, {
    super.textAlign,
    super.maxLines,
    super.overflow,
    super.color,
    super.useRichText,
    super.boldFontWeight,
    super.linkFontWeight,
    super.onUrlPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _Builder(
      data: data,
      mainStyle: context.theme.textTheme.labelSmall,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      color: color,
      useRichText: useRichText,
      boldFontWeight: boldFontWeight,
      linkFontWeight: linkFontWeight,
      onUrlPressed: onUrlPressed,
    );
  }
}
