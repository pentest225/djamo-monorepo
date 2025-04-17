import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:flutter/material.dart';

String? useAmountValidator(
  BuildContext context, {
  required double? amount,
  required double minAmount,
  required double maxAmount,
  double? mainBalance,
  int? multiFactor,
  bool compareToMainBalance = false,
  bool placeMainAccountBalanceAtNewLine = true,
  AmountValidatorMessageScheme? messageScheme,
}) {
  if (amount == null || amount == 0) {
    return messageScheme?.onValidationRequiredError ?? context.l10n.amountValidationRequiredError;
  }
  if (amount < minAmount) {
    return messageScheme?.onValidationExceedMinError ?? context.l10n.amountValidationExceedMinError(minAmount.toCurrency(context));
  }
  if (compareToMainBalance && mainBalance != null && amount > mainBalance) {
    final m = messageScheme?.onValidationExceedBalanceError ?? context.l10n.amountValidationExceedBalanceError(mainBalance.toCurrency(context));
    return placeMainAccountBalanceAtNewLine ? m : m.replaceAll('\n', ' ').trim();
  }
  if (amount > maxAmount) {
    return messageScheme?.onValidationExceedMaxError ?? context.l10n.amountValidationExceedMaxError(maxAmount.toCurrency(context));
  }
  if (multiFactor != null && amount % multiFactor != 0) {
    return messageScheme?.onValidationMultipleOfError ??
        context.l10n.amountValidationMultipleOfError(
          multiFactor.toCurrency(context),
        );
  }

  return null;
}

final class AmountValidatorMessageScheme {
  const AmountValidatorMessageScheme({
    this.onValidationRequiredError,
    this.onValidationExceedMinError,
    this.onValidationExceedBalanceError,
    this.onValidationExceedMaxError,
    this.onValidationMultipleOfError,
  });
  final String? onValidationRequiredError;
  final String? onValidationExceedMinError;
  final String? onValidationExceedBalanceError;
  final String? onValidationExceedMaxError;
  final String? onValidationMultipleOfError;
}
