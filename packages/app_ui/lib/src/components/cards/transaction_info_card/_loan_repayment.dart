part of 'app_transaction_info_card_component.dart';

class _LoanRePayment extends AppTransactionInfoCardComponent {
  const _LoanRePayment({
    required super.chargedAmount,
    required super.reference,
    required super.status,
    required this.remainingToRepay,
    super.date,
    super.onCopyReference,
  });
  final double remainingToRepay;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeaderTransactionCardDetailsComponent(
          amount: chargedAmount,
          icon: AppAssetBuilder.image(image: Assets.djamoIcons.cashBundle),
        ),
        AppGaps.ver.s24,
        _MainInfoBuilder(
          date: date,
          status: status,
          fees: null,
          amountWithoutFees: null,
          balanceAfter: null,
          isCredit: false,
          showFeesDescription: false,
          additionalItems: [
            AppDetailListItemComponent.medium(
              label: context.l10n.remainingToRepay,
              value: remainingToRepay.toCurrency(context),
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
