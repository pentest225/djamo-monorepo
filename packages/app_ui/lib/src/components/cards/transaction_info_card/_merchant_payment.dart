part of 'app_transaction_info_card_component.dart';

class _MerchantPayment extends _WithFees {
  const _MerchantPayment({
    required super.chargedAmount,
    required super.reference,
    required super.status,
    required super.fees,
    required this.lastCardFourDigits,
    required this.fx,
    required this.originalAmount,
    required this.currency,
    super.date,
    super.amountWithoutFees,
    super.balanceAfter,
    super.label,
    super.description,
    super.icon,
    super.onCopyReference,
    this.isInternationPayment = false,
  });

  final String lastCardFourDigits;
  final String fx;
  final String originalAmount;
  final String currency;
  final bool isInternationPayment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeaderTransactionCardDetailsComponent(
          amount: chargedAmount,
          label: label,
          description: description,
          icon: icon,
          isCredit: isCredit,
        ),
        AppGaps.ver.s24,
        _MainInfoBuilder(
          date: date,
          status: status,
          fees: fees,
          amountWithoutFees: amountWithoutFees,
          balanceAfter: balanceAfter,
          isCredit: isCredit,
          showFeesDescription: false,
          fx: fx,
          originalAmount: originalAmount,
          currency: currency,
          isInternationPayment: isInternationPayment,
        ),
        if (reference.isNotEmpty) ...[
          AppGaps.ver.s12,
          _Reference(
            reference: reference,
            onCopyReference: onCopyReference,
          ),
        ],
        if (lastCardFourDigits.isNotEmpty) ...[
          AppGaps.ver.s12,
          _CardRowList(
            items: [
              AppDetailListItemComponent.medium(
                label: context.l10n.paidWith,
                value: context.l10n.djamoCardMasked(lastCardFourDigits),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
