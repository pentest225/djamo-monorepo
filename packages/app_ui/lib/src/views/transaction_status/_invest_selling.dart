part of 'app_transaction_status_view.dart';

class _InvestSelling extends AppTransactionStatusView {
  const _InvestSelling({
    required super.amount,
    required super.initializationDate,
    required super.accountDebitDate,
    required super.completionDate,
    required this.fundName,
    required super.serviceIconUrl,
    required this.fundIconUrl,
    super.errorMessage,
    super.isFailed,
  });

  final String fundName;
  final String fundIconUrl;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      amount: amount,
      sign: '-',
      infoMessage: context.l10n.investSellConfirmationMessage,
      serviceIconUrl: serviceIconUrl.orNull ?? fundIconUrl,
      operationInfo: [
        _InfoSection(
          title: context.l10n.funds,
          value: fundName,
          isMini: true,
        ),
      ],
      initialText: context.l10n.initializingYourTransaction,
      accountDebitText: context.l10n.debitFromYourAccount(fundName.capitalize()),
      completionText: context.l10n.depositConfirmationInProgress,
      initializationDate: initializationDate,
      accountDebitDate: accountDebitDate,
      completionDate: completionDate,
      isFailed: isFailed,
      errorMessage: errorMessage,
    );
  }
}
