part of 'app_transaction_info_card_component.dart';

class _Momo extends _WithFees {
  const _Momo({
    required super.chargedAmount,
    required super.reference,
    required super.status,
    required super.fees,
    required this.operator,
    super.date,
    super.isCredit = false,
    super.amountWithoutFees,
    super.balanceAfter,
    super.label,
    super.description,
    super.icon,
    super.onCopyReference,
    this.shouldClipOval = false,
  });

  final String operator;
  final bool shouldClipOval;

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
          shouldClipOval: shouldClipOval,
        ),
        AppGaps.ver.s24,
        _MainInfoBuilder(
          date: date,
          status: status,
          fees: fees,
          amountWithoutFees: isCredit ? null : amountWithoutFees,
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
        if (operator.isNotEmpty) ...[
          AppGaps.ver.s12,
          _Operator(
            operator: operator,
          ),
        ],
      ],
    );
  }
}
