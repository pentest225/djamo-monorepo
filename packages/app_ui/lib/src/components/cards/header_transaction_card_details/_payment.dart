part of 'app_header_transaction_card_details_component.dart';

class _Payment extends AppHeaderTransactionCardDetailsComponent {
  const _Payment({
    required super.amount,
    required super.icon,
  });

  @override
  Widget build(BuildContext context) {
    return _Builder(
      amount: amount,
      icon: icon,
    );
  }
}
