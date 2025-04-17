import 'package:app_ui/src/components/texts/texts.dart';
import 'package:flutter/material.dart';

/// Headline component
class HeadlineComponent extends StatelessWidget {
  /// Creates a [HeadlineComponent].
  const HeadlineComponent({
    required this.title,
    required this.subtitle,
    this.contentPadding,
    super.key,
  });

  //_WithTitleLarge
  const factory HeadlineComponent.withTitleLarge({
    required String title,
    required String subtitle,
    EdgeInsets? contentPadding,
    Key? key,
  }) = _WithTitleLarge;

  //_WithBodyLarge
  const factory HeadlineComponent.withBodyLarge({
    required String title,
    required String subtitle,
    EdgeInsets? contentPadding,
    Key? key,
  }) = _WithBodyLarge;

  /// The title of the headline
  final String title;

  /// The subtitle of the headline
  final String subtitle;

  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding ?? EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextComponent.headlineSmall(title),
          AppTextComponent.bodyMedium(subtitle),
        ],
      ),
    );
  }
}

class _WithTitleLarge extends HeadlineComponent {
  const _WithTitleLarge({
    required super.title,
    required super.subtitle,
    super.contentPadding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding ?? EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextComponent.titleLarge(title),
          AppTextComponent.bodyMedium(subtitle),
        ],
      ),
    );
  }
}

class _WithBodyLarge extends HeadlineComponent {
  const _WithBodyLarge({
    required super.title,
    required super.subtitle,
    super.contentPadding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding ?? EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextComponent.bodyLarge(title),
          AppTextComponent.bodyMedium(subtitle),
        ],
      ),
    );
  }
}
