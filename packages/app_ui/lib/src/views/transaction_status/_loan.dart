part of 'app_transaction_status_view.dart';

class _Loan extends AppTransactionStatusView {
  const _Loan({
    required super.amount,
    required super.initializationDate,
    required super.accountDebitDate,
    required super.completionDate,
    required this.iconUrl,
    super.isFailed,
    this.infoMessage,
    super.errorMessage,
  });

  final String? infoMessage;
  final AppAssetBuilder? iconUrl;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      amount: amount,
      sign: '',
      serviceIconUrl: '',
      infoMessage: infoMessage.orNull ?? context.l10n.loanAmount,
      showInfoMessageOnAllSuccess: true,
      operationInfo: const [],
      initialText: context.l10n.accountAnalysis,
      accountDebitText: context.l10n.loanApproval,
      completionText: context.l10n.loanDisbursementMessage,
      initializationDate: initializationDate,
      accountDebitDate: accountDebitDate,
      completionDate: completionDate,
      isFailed: isFailed,
      iconUrl: iconUrl,
      errorMessage: errorMessage,
    );
  }
}
