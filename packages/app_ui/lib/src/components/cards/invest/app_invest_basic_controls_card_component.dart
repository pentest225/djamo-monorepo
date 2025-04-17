import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppInvestBasicControlsCardComponent extends StatelessWidget {
  const AppInvestBasicControlsCardComponent({
    required this.name,
    required this.balance,
    required this.performancePercentage,
    required this.performanceAmount,
    required this.bank,
    this.primaryActionLabel,
    this.secondaryActionLabel,
    this.onPrimaryActionPressed,
    this.onSecondaryActionPressed,
    this.hideSecondaryAction = false,
    this.pendingTransactionsCount = 0,
    super.key,
  });
  final String name;
  final ValueHistory<num> balance;
  final ValueHistory<num>? performancePercentage;
  final ValueHistory<num>? performanceAmount;
  final AppAssetBuilder bank;
  final String? primaryActionLabel;
  final String? secondaryActionLabel;
  final VoidCallback? onPrimaryActionPressed;
  final VoidCallback? onSecondaryActionPressed;
  final bool hideSecondaryAction;
  final int pendingTransactionsCount;

  @override
  Widget build(BuildContext context) {
    return AppCardComponent(
      backgroundColor: context.colorScheme.surfaceContainerLow,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextComponent.titleMedium(
                    name,
                    color: context.customColorScheme.contentLow,
                  ),
                  Row(
                    children: [
                      AppBalanceTextComponent(balance: balance),
                      if (pendingTransactionsCount > 0) ...[
                        AppGaps.hor.s16,
                        AppChipsComponent.inputChip(
                          borderSide: BorderSide(
                            color: context.customColorScheme.outlineLow,
                            width: AppSizes.w.custom(1),
                          ),
                          selectedForegroundColor: context.customColorScheme.contentLowest,
                          avatarIcon: AppAssetBuilder.svg(
                            svg: Assets.icons.hourglass,
                            config: AssetBuilderConfig.svg(
                              color: context.colorScheme.primary,
                            ),
                          ),
                          selectedColor: Colors.transparent,
                          labelText: context.l10n.pendingTransaction(pendingTransactionsCount),
                          selected: true,
                          onSelected: (_) {},
                        ),
                      ],
                    ],
                  ),
                ],
              ),
              const Spacer(),
              bank.mayOverrideConfig(
                config: AssetBuilderConfig.image(
                  height: AppSizes.h.s24,
                ).$svg(
                  height: AppSizes.h.s24,
                ),
              ),
            ],
          ),
          AppGaps.ver.s8,
          AppInterestSectionComponent(
            isVisible: true,
            label: primaryActionLabel ?? context.l10n.performance,
            isNegative: performancePercentage?.current.isNegative ?? false,
            interestAmount: performanceAmount,
            interestPercentage: performancePercentage,
          ),
          AppGaps.ver.s16,
          AppCommonButtonComponent.filledButton(
            fullMaxWidth: true,
            icon: AppAssetBuilder.svg(svg: Assets.icons.add),
            label: secondaryActionLabel ?? context.l10n.addMoney,
            onPressed: onPrimaryActionPressed,
          ),
          if (!hideSecondaryAction) ...[
            AppGaps.ver.s8,
            AppCommonButtonComponent.outlinedButton(
              icon: AppAssetBuilder.svg(svg: Assets.icons.checkIndeterminateSmall),
              fullMaxWidth: true,
              label: context.l10n.withdrawMoney,
              onPressed: onSecondaryActionPressed,
            ),
          ],
        ],
      ),
    );
  }
}
