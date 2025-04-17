part of 'app_transaction_status_view.dart';

class _Bills extends AppTransactionStatusView {
  const _Bills({
    required super.amount,
    required super.initializationDate,
    required super.accountDebitDate,
    required super.completionDate,
    required this.accountReference,
    required super.serviceIconUrl,
    required this.customInfoMessage,
    super.errorMessage,
    super.isFailed,
  });

  final String accountReference;
  final Widget customInfoMessage;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      amount: amount,
      sign: '-',
      serviceIconUrl: serviceIconUrl!,
      showInfoMessageOnAllSuccess: true,
      operationInfo: [
        _InfoSection(
          title: context.l10n.billsReferenceAccount,
          value: accountReference,
          isMini: true,
        ),
      ],
      customInfoMessage: customInfoMessage,
      initialText: context.l10n.paymentInitialization,
      accountDebitText: context.l10n.debitFromYourDjamoAccount,
      completionText: context.l10n.codeActivation,
      initializationDate: initializationDate,
      accountDebitDate: accountDebitDate,
      completionDate: completionDate,
      isFailed: isFailed,
      errorMessage: errorMessage,
    );
  }
}
