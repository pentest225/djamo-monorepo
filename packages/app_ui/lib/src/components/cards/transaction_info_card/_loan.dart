part of 'app_transaction_info_card_component.dart';

class _Loan extends _WithFees {
  const _Loan({
    required super.chargedAmount,
    required super.reference,
    required super.status,
    super.fees = 0,
    super.date,
    super.onCopyReference,
    super.balanceAfter,
    this.remainingToRepay,
    this.isTransactionFromCreditDashboard = false,
  });

  final double? remainingToRepay;
  final bool isTransactionFromCreditDashboard;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeaderTransactionCardDetailsComponent(
          amount: chargedAmount,
          icon: AppAssetBuilder.image(image: Assets.djamoIcons.cashBundle),
          isCredit: true,
        ),
        AppGaps.ver.s24,
        _MainInfoBuilder(
          date: date,
          status: status,
          fees: fees,
          amountWithoutFees: null,
          balanceAfter: null,
          isCredit: true,
          showFeesDescription: false,
          additionalItems: [
            AppDetailListItemComponent.medium(
              label: isTransactionFromCreditDashboard ? context.l10n.remainingToRepay : context.l10n.newBalance,
              value: isTransactionFromCreditDashboard ? remainingToRepay.toCurrency(context) : balanceAfter.toCurrency(context),
            ),
          ],
        ),
        if (reference.isNotEmpty) ...[
          AppGaps.ver.s12,
          _Reference(
            reference: reference,
            onCopyReference: onCopyReference,
          ),
        ],
      ],
    );
  }
}
