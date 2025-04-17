part of 'app_transaction_info_card_component.dart';

class _Invest extends _WithFees {
  const _Invest({
    required super.chargedAmount,
    required super.reference,
    required super.status,
    required super.fees,
    required this.shares,
    super.date,
    super.amountWithoutFees,
    super.isCredit = false,
    super.onCopyReference,
  });

  final double shares;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppHeaderTransactionCardDetailsComponent(
          amount: chargedAmount,
          isCredit: isCredit,
          label: context.l10n.investTransactedShares(shares),
          customIcon: AppIdentityTagComponent.icon(
            size: AppSizes.w.s80,
            icon: AppAssetBuilder.svg(
              svg: Assets.icons.payments,
              config: AssetBuilderConfig.svg(
                height: AppSizes.h.s24,
                width: AppSizes.h.s24,
              ),
            ),
          ),
        ),
        AppGaps.ver.s24,
        _MainInfoBuilder(
          date: date,
          status: status,
          fees: fees,
          amountWithoutFees: amountWithoutFees,
          balanceAfter: null,
          isCredit: isCredit,
          showFeesDescription: true,
        ),
        if (reference.isNotEmpty) ...[
          AppGaps.ver.s12,
          _Reference(reference: reference, onCopyReference: onCopyReference),
        ],
      ],
    );
  }
}
