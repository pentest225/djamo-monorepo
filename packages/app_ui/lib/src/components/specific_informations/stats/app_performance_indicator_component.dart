import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppPerformanceIndicatorComponent extends StatelessWidget {
  const AppPerformanceIndicatorComponent({
    required this.value,
    this.symbol = '%',
    this.decimalDigits = 0,
    super.key,
  });

  final int decimalDigits;
  final ValueHistory<num> value;
  final String symbol;

  @override
  Widget build(BuildContext context) {
    final isPositive = !value.current.isNegative;
    final foregroundColor = switch (isPositive) {
      false => context.colorScheme.onError,
      _ => context.colorScheme.onSecondary,
    };
    return DecoratedBox(
      decoration: BoxDecoration(
        color: switch (isPositive) {
          false => context.colorScheme.error,
          _ => context.colorScheme.secondary,
        },
        borderRadius: AppBorderRadius.s8.all,
      ),
      child: Padding(
        padding: AppPaddings.s4.vertical.copyWith(
          left: AppSizes.w.s8,
          right: AppSizes.w.s12,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppAssetBuilder.svg(
              svg: switch (isPositive) {
                false => Assets.icons.arrowDown,
                _ => Assets.icons.arrowUp,
              },
              config: AssetBuilderConfig.svg(
                color: foregroundColor,
                height: AppSizes.h.s18,
                width: AppSizes.h.s18,
              ),
            ),
            AppGaps.hor.s8,
            AppBalanceTextComponent(
              balance: value,
              decimalDigits: decimalDigits,
              color: foregroundColor,
              suffix: symbol,
              style: context.theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: foregroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
