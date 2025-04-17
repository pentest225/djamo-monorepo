part of 'app_transaction_status_view.dart';

class _Transfer extends AppTransactionStatusView {
  const _Transfer({
    required super.amount,
    required super.initializationDate,
    required super.accountDebitDate,
    required super.completionDate,
    required this.beneficiary,
    required super.serviceIconUrl,
    super.errorMessage,
    super.isFailed,
    this.infoMessage,
  });

  final String beneficiary;
  final String? infoMessage;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      amount: amount,
      sign: '-',
      serviceIconUrl: serviceIconUrl!,
      infoMessage: infoMessage.orNull ?? '',
      showInfoMessageOnAllSuccess: true,
      operationInfo: [
        _InfoSection(
          title: context.l10n.beneficiary,
          value: beneficiary,
          isMini: true,
        ),
      ],
      initialText: context.l10n.transferInitialization,
      accountDebitText: context.l10n.debitFromYourDjamoAccount,
      completionText: context.l10n.transferProcessingByOperator,
      initializationDate: initializationDate,
      accountDebitDate: accountDebitDate,
      completionDate: completionDate,
      isFailed: isFailed,
      errorMessage: errorMessage,
    );
  }
}
