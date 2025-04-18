import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Represents validation errors.
enum PassCodeValidationErrors {
  ///
  empty,

  ///
  sameDigits,

  ///
  sequentialDigits,
  ;

  /// Returns the error message.
  String getErrMessage(BuildContext context) {
    return switch (this) {
      PassCodeValidationErrors.empty => context.l10n.passcodeEmptyError,
      PassCodeValidationErrors.sameDigits => context.l10n.passcodeSameDigitsError,
      PassCodeValidationErrors.sequentialDigits => context.l10n.passcodeSequentialDigitsError,
    };
  }
}

/// Form input
class PassCodeInputForm extends FormzInput<String, PassCodeValidationErrors> {
  ///
  const PassCodeInputForm.pure() : super.pure('');

  ///
  const PassCodeInputForm.dirty(super.value) : super.dirty();

  @override
  PassCodeValidationErrors? validator(String value) {
    if (value.isEmpty) {
      return PassCodeValidationErrors.empty;
    }
    if (value.runes.toSet().length == 1) {
      return PassCodeValidationErrors.sameDigits;
    }
    if (value.runes.skip(1).every((element) => element == value.runes.first + 1)) {
      return PassCodeValidationErrors.sequentialDigits;
    }
    return null;
  }
}
