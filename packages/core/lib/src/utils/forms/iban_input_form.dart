import 'package:app_ui/app_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Represents the IBAN validation errors.
enum IbanValidationErrors {
  /// Represents an empty IBAN error.
  empty,

  /// Represents an invalid length error.
  invalidLength,

  /// Represents an invalid bank error.
  invalidBank;

  /// Returns the corresponding error message.
  String getErrMessage(BuildContext context) {
    switch (this) {
      case IbanValidationErrors.invalidLength:
        return context.l10n.numberIbanCodeCaracterInvalid;
      case IbanValidationErrors.empty:
        return context.l10n.fieldRequiredErrMessage;
      case IbanValidationErrors.invalidBank:
        return context.l10n.ibanCodeInvalid;
    }
  }
}

class IbanInputForm extends FormzInput<String, IbanValidationErrors> {
  const IbanInputForm.pure(this.banks) : super.pure('');

  const IbanInputForm.dirty(super.value, this.banks) : super.dirty();
  final BankServiceEntities banks;

  @override
  IbanValidationErrors? validator(String? value) {
    // Check if the value is empty
    if (value == null || value.isEmpty) {
      return IbanValidationErrors.empty;
    }

    // Check if the IBAN is associated with a valid bank
    if (!banks.isIbanBankValid(value)) {
      return IbanValidationErrors.invalidBank;
    }

    // Check if the IBAN length is valid (24 characters)
    if (value.length != 24) {
      return IbanValidationErrors.invalidLength;
    }

    return null;
  }
}
