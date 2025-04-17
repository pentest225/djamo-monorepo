import 'dart:math';

import 'package:app_ui/src/src.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_airtime.dart';
part '_bills_payment.dart';
part '_builder.dart';
part '_invest.dart';
part '_loan.dart';
part '_loan_repayment.dart';
part '_merchant_payment.dart';
part '_momo.dart';
part '_p2p.dart';
part '_physical_withdrawal.dart';
part '_premium_subscription.dart';
part '_vault.dart';
part '_with_fees.dart';

/// The [AppTransactionInfoCardComponent] Widget is used to display transaction details card to the user
/// Figma link is https://www.figma.com/design/pDFRMXXEc0zemAv0eRM4Mh/Transaction-details-page?node-id=1-27&p=f&t=uwnvpvVUqslyvipA-0
abstract class AppTransactionInfoCardComponent extends StatelessWidget {
  const AppTransactionInfoCardComponent({
    required this.reference,
    required this.status,
    required this.chargedAmount,
    super.key,
    this.date,
    this.isCredit = false,
    this.icon,
    this.label,
    this.description,
    this.tag,
    this.onCopyReference,
  });

  const factory AppTransactionInfoCardComponent.generic({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double fees,
    required String operator,
    required bool isCredit,
    required DateTime? date,
    double? amountWithoutFees,
    double? balanceAfter,
    String? label,
    String? description,
    AppAssetBuilder? icon,
    VoidCallback? onCopyReference,
    bool shouldClipOval,
  }) = _Momo;

  /// Invest Card details
  /// Two options possible withdrawa or deposit
  /// See : https://www.figma.com/design/pDFRMXXEc0zemAv0eRM4Mh/Transaction-details-page?node-id=2479-10778&t=uwnvpvVUqslyvipA-0
  const factory AppTransactionInfoCardComponent.invest({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double fees,
    required DateTime? date,
    required double shares,
    double? amountWithoutFees,
    bool isCredit,
    VoidCallback? onCopyReference,
  }) = _Invest;

  /// Mobile Money Card details
  /// See : https://www.figma.com/design/pDFRMXXEc0zemAv0eRM4Mh/Transaction-details-page?node-id=2223-13913&t=uwnvpvVUqslyvipA-0
  const factory AppTransactionInfoCardComponent.momo({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double fees,
    required String operator,
    required bool isCredit,
    required DateTime? date,
    double? amountWithoutFees,
    double? balanceAfter,
    String? label,
    String? description,
    AppAssetBuilder? icon,
    VoidCallback? onCopyReference,
  }) = _Momo;

  /// Djamo P2P Card details
  /// See : https://www.figma.com/design/4eEH9iepfDAigkp861bWyT/Transfer-Money?node-id=19-22103&p=f&t=tmpuiPtrfAydbiJR-0
  const factory AppTransactionInfoCardComponent.djamo({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double fees,
    required bool isCredit,
    required DateTime? date,
    required String illustrationUrl,
    required String note,
    required String phoneNumber,
    double? amountWithoutFees,
    double? balanceAfter,
    String? label,
    AppAssetBuilder? icon,
    VoidCallback? onCopyReference,
  }) = _P2P;

  /// Vault Card details
  /// See : https://www.figma.com/design/pDFRMXXEc0zemAv0eRM4Mh/Transaction-details-page?node-id=2223-10620&t=uwnvpvVUqslyvipA-0
  const factory AppTransactionInfoCardComponent.vault({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double balanceAfter,
    required bool isCredit,
    required DateTime? date,
    String? label,
    AppAssetBuilder? icon,
    VoidCallback? onCopyReference,
  }) = _Vault;

  /// Regular Payment and Withdrawal Card details
  /// See : https://www.figma.com/design/pDFRMXXEc0zemAv0eRM4Mh/Transaction-details-page?node-id=2223-20405&t=uwnvpvVUqslyvipA-0
  const factory AppTransactionInfoCardComponent.regularPaymentAndWithdrawal({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double fees,
    required double amountWithoutFees,
    required double balanceAfter,
    required DateTime? date,
    required String fx,
    required String originalAmount,
    required String currency,
    required String lastCardFourDigits,
    required AppAssetBuilder icon,
    String? label,
    String? description,
    bool isInternationPayment,
    VoidCallback? onCopyReference,
  }) = _MerchantPayment;

  /// Djamo Premium Subscription card only
  /// In the figma it is a subclass of Subscription.
  /// See : https://www.figma.com/design/pDFRMXXEc0zemAv0eRM4Mh/Transaction-details-page?node-id=2223-20405&t=uwnvpvVUqslyvipA-0
  const factory AppTransactionInfoCardComponent.subscription({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double fees,
    required DateTime? date,
    required double amountWithoutFees,
    required double balanceAfter,
    String? label,
    String? description,
    VoidCallback? onCopyReference,
  }) = _PremiumSubscription;

  /// Loan card (Called Credit by the designers)
  /// This card is used when the user **receives** money from a loan
  ///See : https://www.figma.com/design/pDFRMXXEc0zemAv0eRM4Mh/Transaction-details-page?node-id=2223-10050&t=uwnvpvVUqslyvipA-0
  const factory AppTransactionInfoCardComponent.loan({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double fees,
    required DateTime? date,
    double? remainingToRepay,
    double? balanceAfter,
    VoidCallback? onCopyReference,
    bool isTransactionFromCreditDashboard,
  }) = _Loan;

  /// Loan Repayment card (Called Debit by the designers)
  /// This card is used when the user **repays** a loan (or part of it)
  ///See : https://www.figma.com/design/pDFRMXXEc0zemAv0eRM4Mh/Transaction-details-page?node-id=2223-10050&t=uwnvpvVUqslyvipA-0
  const factory AppTransactionInfoCardComponent.loanRePayment({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double remainingToRepay,
    required DateTime? date,
    VoidCallback? onCopyReference,
  }) = _LoanRePayment;

  /// Bill Card details
  /// See : https://www.figma.com/design/pDFRMXXEc0zemAv0eRM4Mh/Transaction-details-page?node-id=2551-18209&t=o3dXS2FsID4wpZoY-0
  const factory AppTransactionInfoCardComponent.bill({
    required double chargedAmount,
    required String reference,
    required UITransactionStatusEnum status,
    required double fees,
    required String operator,
    required DateTime? date,
    double? amountWithoutFees,
    double? balanceAfter,
    String? label,
    String? description,
    AppAssetBuilder? icon,
    List<String> reloadCodes,
    String? message,
    Map<String, dynamic> receiptExtraData,
    void Function(int index)? onReloadCopyTap,
    VoidCallback? onCopyReference,
  }) = _BillsDeposit;

  final double chargedAmount;
  final String reference;
  final bool isCredit;
  final UITransactionStatusEnum status;
  final AppAssetBuilder? icon;
  final String? label;
  final String? description;
  final String? tag;
  final DateTime? date;
  final VoidCallback? onCopyReference;
}
