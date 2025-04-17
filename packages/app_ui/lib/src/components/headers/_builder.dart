part of 'app_headline_component.dart';

class _Large extends AppHeadlineComponent {
  const _Large({
    required super.header,
    required super.description,
    super.key,
    super.textAlign,
    this.foregroundColor,
  });
  final Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (header.isNotEmpty)
          AppTextComponent.headlineSmall(
            header,
            textAlign: textAlign,
            color: foregroundColor ?? context.colorScheme.onSurface,
          ),
        if (description.isNotEmpty)
          AppTextComponent.bodyMedium(
            description,
            textAlign: textAlign,
            color: foregroundColor ?? context.customColorScheme.contentLow,
          ),
      ],
    );
  }
}

//H2

class _Small extends AppHeadlineComponent {
  const _Small({
    required super.header,
    required super.description,
    super.key,
    super.textAlign,
    this.foregroundColor,
  });

  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (header.isNotEmpty)
          AppTextComponent.titleLarge(
            header,
            textAlign: textAlign,
            color: foregroundColor ?? context.colorScheme.onSurface,
          ),
        if (description.isNotEmpty)
          AppTextComponent.bodyMedium(
            description,
            textAlign: textAlign,
            color: foregroundColor ?? context.colorScheme.onSurface,
          ),
      ],
    );
  }
}
