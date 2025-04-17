import 'package:animate_do/animate_do.dart';
import 'package:app_ui/src/components/specific_informations/specific_informations.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_bills.dart';
part '_builder.dart';
part '_info_section.dart';
part '_invest_buying.dart';
part '_invest_selling.dart';
part '_loan.dart';
part '_time_line.dart';
part '_transfer.dart';

abstract class AppTransactionStatusView extends StatelessWidget {
  const AppTransactionStatusView({
    required this.amount,
    required this.initializationDate,
    required this.accountDebitDate,
    required this.completionDate,
    this.serviceIconUrl,
    this.errorMessage,
    this.isFailed = false,
    super.key,
  });

  const factory AppTransactionStatusView.loan({
    required double amount,
    required DateTime? initializationDate,
    required DateTime? accountDebitDate,
    required DateTime? completionDate,
    required AppAssetBuilder? iconUrl,
    bool isFailed,
    String? infoMessage,
    String? errorMessage,
  }) = _Loan;

  const factory AppTransactionStatusView.transfer({
    required double amount,
    required DateTime? initializationDate,
    required DateTime? accountDebitDate,
    required DateTime? completionDate,
    required String beneficiary,
    required String serviceIconUrl,
    bool isFailed,
    String? infoMessage,
    String? errorMessage,
  }) = _Transfer;

  const factory AppTransactionStatusView.investBuying({
    required double amount,
    required DateTime? initializationDate,
    required DateTime? accountDebitDate,
    required DateTime? completionDate,
    required String fundName,
    required String serviceIconUrl,
    required String fundIconUrl,
    bool isFailed,
    String? errorMessage,
  }) = _InvestBuying;

  const factory AppTransactionStatusView.investSelling({
    required double amount,
    required DateTime? initializationDate,
    required DateTime? accountDebitDate,
    required DateTime? completionDate,
    required String fundName,
    required String serviceIconUrl,
    required String fundIconUrl,
    bool isFailed,
    String? errorMessage,
  }) = _InvestSelling;

  const factory AppTransactionStatusView.bills({
    required double amount,
    required DateTime? initializationDate,
    required DateTime? accountDebitDate,
    required DateTime? completionDate,
    required String accountReference,
    required String serviceIconUrl,
    required Widget customInfoMessage,
    bool isFailed,
    String? errorMessage,
  }) = _Bills;

  final double amount;
  final String? serviceIconUrl;
  final DateTime? initializationDate;
  final DateTime? accountDebitDate;
  final DateTime? completionDate;
  final String? errorMessage;
  final bool isFailed;
}
