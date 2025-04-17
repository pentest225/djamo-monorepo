import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppInterestSectionComponent extends StatelessWidget {
  const AppInterestSectionComponent({
    required this.isVisible,
    required this.isNegative,
    this.interestAmount,
    this.interestPercentage,
    this.label,
    this.isMini = false,
    this.percentageDecimals = 2,
    this.onInfoPressed,
    super.key,
  });

  final bool isMini;
  final bool isVisible;
  final bool isNegative;
  final ValueHistory<num>? interestAmount;
  final ValueHistory<num>? interestPercentage;
  final int percentageDecimals;
  final String? label;
  final VoidCallback? onInfoPressed;

  @override
  Widget build(BuildContext context) {
    final hasValue = interestPercentage != null || interestAmount != null;
    final foregroundColor = !hasValue
        ? context.customColorScheme.content
        : isNegative
            ? context.colorScheme.error
            : context.colorScheme.secondary;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTextComponent.titleSmall(
              label ?? context.l10n.interestEarned,
              color: context.customColorScheme.contentLowest,
            ),
            if (onInfoPressed != null) ...[
              AppGaps.hor.s4,
              AppAssetBuilder.svg(
                svg: Assets.icons.info,
                onTap: onInfoPressed,
                config: AssetBuilderConfig.svg(
                  height: AppSizes.h.s16,
                  width: AppSizes.w.s16,
                ),
              ),
            ],
          ],
        ),
        if (isVisible)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (interestPercentage != null || interestAmount != null) ...[
                if (isNegative)
                  Assets.icons.arrowDropDown.svg(
                    height: AppSizes.h.s32,
                    width: AppSizes.w.s32,
                    colorFilter: context.colorScheme.error.toSrcMode(),
                  )
                else
                  Assets.icons.arrowDropUp.svg(
                    height: AppSizes.h.s32,
                    width: AppSizes.w.s32,
                    colorFilter: context.colorScheme.secondary.toSrcMode(),
                  ),
              ],
              if (interestAmount != null)
                AppBalanceTextComponent(
                  isMini: isMini,
                  isBalanceVisible: isVisible,
                  balance: interestAmount!,
                  color: foregroundColor,
                  decimalDigits: 0,
                  animationDuration: const Duration(seconds: 2),
                )
              else
                AppTextComponent.headlineMedium(
                  '-',
                  color: foregroundColor,
                ),
              if (interestPercentage != null && isVisible) ...[
                AppGaps.hor.s8,
                Align(
                  alignment: Alignment.bottomLeft,
                  child: AppBalanceTextComponent(
                    isMini: isMini,
                    balance: interestPercentage!,
                    decimalDigits: percentageDecimals,
                    color: foregroundColor,
                    prefix: isNegative ? '(' : '(+',
                    suffix: ' %)',
                    animate: false,
                    style: context.theme.textTheme.titleMedium?.copyWith(
                      color: foregroundColor,
                    ),
                  ),
                ),
              ],
            ],
          )
        else
          AppHiddenBalanceComponent(
            isMini: isMini,
            color: foregroundColor,
          ),
      ],
    );
  }
}
