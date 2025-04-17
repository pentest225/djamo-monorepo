part of 'app_transaction_info_card_component.dart';

class _BillsDeposit extends _WithFees {
  const _BillsDeposit({
    required super.chargedAmount,
    required super.reference,
    required super.status,
    required super.fees,
    required this.operator,
    super.date,
    super.amountWithoutFees,
    super.balanceAfter,
    super.label,
    super.description,
    super.icon,
    super.onCopyReference,
    this.reloadCodes = const [],
    this.message,
    this.receiptExtraData = const {},
    this.onReloadCopyTap,
  });

  final String operator;
  final List<String> reloadCodes;
  final Map<String, dynamic> receiptExtraData;
  final String? message;
  final void Function(int)? onReloadCopyTap;

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
        if (reloadCodes.isNotEmpty) ...[
          _ReloadCode(
            codes: reloadCodes,
            onCopyPressed: onReloadCopyTap,
          ),
          AppGaps.ver.s12,
        ],
        _MainInfoBuilder(
          date: date,
          status: status,
          fees: fees,
          amountWithoutFees: isCredit ? null : amountWithoutFees,
          balanceAfter: balanceAfter,
          isCredit: isCredit,
          showFeesDescription: false,
        ),
        if (receiptExtraData.isNotEmpty) ...[
          AppGaps.ver.s12,
          _MapDataInfoBuilder(
            data: receiptExtraData.map((k, v) => MapEntry(k, v.toString())),
          ),
        ],
        if (message.orNull != null) ...[
          AppGaps.ver.s12,
          _Message(message: message!),
        ],
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
