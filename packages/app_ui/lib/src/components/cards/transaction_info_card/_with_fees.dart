part of 'app_transaction_info_card_component.dart';

abstract class _WithFees extends AppTransactionInfoCardComponent {
  const _WithFees({
    required super.reference,
    required super.status,
    required this.fees,
    required super.chargedAmount,
    super.date,
    super.isCredit = false,
    this.amountWithoutFees,
    this.balanceAfter,
    super.icon,
    super.label,
    super.description,
    super.onCopyReference,
  });

  final double fees;
  final double? amountWithoutFees;
  final double? balanceAfter;
}
