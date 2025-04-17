part of 'app_transaction_info_card_component.dart';

class _PremiumSubscription extends _WithFees {
  const _PremiumSubscription({
    required super.chargedAmount,
    required super.reference,
    required super.status,
    required super.fees,
    super.date,
    super.amountWithoutFees,
    super.balanceAfter,
    super.label,
    super.description,
    super.onCopyReference,
  });

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
          icon: AppAssetBuilder.image(image: Assets.djamoIcons.crown),
        ),
        AppGaps.ver.s24,
        _MainInfoBuilder(
          date: date,
          status: status,
          fees: fees,
          amountWithoutFees: amountWithoutFees,
          balanceAfter: balanceAfter,
          isCredit: false,
          showFeesDescription: false,
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
