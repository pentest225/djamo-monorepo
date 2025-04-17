part of 'app_transaction_list_item_component.dart';

class _Frozen extends AppTransactionListItemComponent {
  const _Frozen({
    required super.label,
    required super.tag,
    required super.amount,
    required super.date,
    required super.isCredit,
    super.icon,
    super.customIcon,
    super.onPressed,
    super.horizontalPadding,
    super.labelMaxLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _Builder(
      icon: icon,
      customIcon: customIcon,
      label: label,
      labelMaxLines: labelMaxLines,
      tag: tag,
      amount: amount,
      date: date,
      isCredit: isCredit,
      status: _TransactionStatus.frozen,
      onPressed: onPressed,
      horizontalPadding: horizontalPadding,
    );
  }
}
