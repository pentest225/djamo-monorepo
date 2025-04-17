import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppAutomaticDepositConfigurationSummaryView extends StatelessWidget with UIFrequencyFacingMixin {
  const AppAutomaticDepositConfigurationSummaryView({
    this.amount = 10000,
    this.onEditAmountPressed,
    this.onEditFrequencyPressed,
    this.frequency = 'monday',
    this.canSave = false,
    this.canDelete = false,
    this.onSavePressed,
    this.onDeletePressed,
    super.key,
  });

  final double amount;
  final String frequency;
  final VoidCallback? onEditAmountPressed;
  final VoidCallback? onEditFrequencyPressed;
  final bool canSave;
  final bool canDelete;
  final VoidCallback? onSavePressed;
  final VoidCallback? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return AppScaffoldComponent.withFooter(
      horizontalPadding: AppSizes.w.zero,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppGaps.ver.s16,
            AppListItemComponent.arrowForward(
              horizontalPadding: AppSizes.w.s16,
              leading: AppAssetBuilder.svg(svg: Assets.icons.payments),
              title: context.l10n.enterAmount,
              subtitle: amount.toCurrency(context),
              onPressed: onEditAmountPressed,
            ),
            AppListItemComponent.arrowForward(
              horizontalPadding: AppSizes.w.s16,
              leading: AppAssetBuilder.svg(svg: Assets.icons.refresh),
              title: context.l10n.recurrence,
              subtitle: getFrequencyLabel(context, frequency: frequency),
              onPressed: onEditFrequencyPressed,
            ),
          ],
        ),
      ),
      footer: [
        Padding(
          padding: AppPaddings.s16.horizontal,
          child: AppBottomFillingCtaButtonComponent.pairFillingButtonCta(
            primaryCTALabel: context.l10n.save,
            secondaryCTALabel: context.l10n.deleteAutomaticDeposit,
            hideSecondaryButton: !canDelete,
            isPrimaryCTAEnabled: canSave,
            onPrimaryCTAPressed: onSavePressed,
            onSecondaryCTAPressed: onDeletePressed,
          ),
        ),
      ],
    );
  }
}
