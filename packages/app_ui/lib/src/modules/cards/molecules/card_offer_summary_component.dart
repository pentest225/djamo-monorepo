import 'package:app_ui/src/components/buttons/buttons.dart';
import 'package:app_ui/src/components/texts/texts.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

class CardOfferSummaryComponent extends StatelessWidget {
  const CardOfferSummaryComponent({
    required this.name,
    required this.summaries,
    required this.ctaLabel,
    required this.onCTAPressed,
    this.highlight,
    this.color,
    super.key,
  });

  final String name;
  final Color? color;
  final String ctaLabel;
  final VoidCallback onCTAPressed;
  final Widget? highlight;
  final List<Widget> summaries;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color ?? context.theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(AppSizes.r.s16),
        border: color == null
            ? Border.all(
                color: context.theme.colorScheme.outline,
                width: AppSizes.w.custom(1),
              )
            : null,
      ),
      child: Padding(
        padding: AppPaddings.s16.symmetric,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              spacing: AppSizes.w.s8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                AppTextComponent.titleLargeProminent(
                  name,
                  color: context.theme.colorScheme.onSurface,
                ),
                if (highlight != null) ...[
                  highlight!,
                ],
              ],
            ),
            ...summaries,
            AppGaps.ver.s12,
            AppCommonButtonComponent.filledButton(
              label: ctaLabel,
              onPressed: onCTAPressed,
              fullMaxWidth: true,
            ),
          ],
        ),
      ),
    );
  }
}
