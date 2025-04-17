part of 'app_transaction_info_card_component.dart';

class _Vault extends _WithFees {
  const _Vault({
    required super.chargedAmount,
    required super.reference,
    required super.status,
    super.fees = 0,
    super.date,
    super.isCredit = false,
    super.balanceAfter,
    super.label,
    super.icon,
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
          isCredit: isCredit,
          label: label,
          icon: icon ?? AppAssetBuilder.image(image: Assets.brands.djamoDark),
        ),
        AppGaps.ver.s24,
        _MainInfoBuilder(
          date: date,
          status: status,
          fees: fees,
          amountWithoutFees: null,
          balanceAfter: balanceAfter,
          isCredit: isCredit,
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
