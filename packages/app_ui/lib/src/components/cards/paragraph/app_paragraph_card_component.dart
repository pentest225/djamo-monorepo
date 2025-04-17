import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppParagraphCardComponent extends StatelessWidget {
  const AppParagraphCardComponent({
    required this.text,
    super.key,
    this.actionLabel,
    this.maxLines = 3,
    this.onActionPressed,
  });
  final String text;
  final int? maxLines;
  final String? actionLabel;
  final VoidCallback? onActionPressed;
  @override
  Widget build(BuildContext context) {
    return AppCardComponent(
      backgroundColor: context.customColorScheme.primaryContainerLowest,
      borderColor: context.customColorScheme.outlineLow,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppTextComponent.bodyMedium(
            text,
            maxLines: maxLines,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
          ),
          AppCommonButtonComponent.textButton(
            label: actionLabel ?? context.l10n.viewDetails,
            onPressed: onActionPressed,
          ),
        ],
      ),
    );
  }
}
