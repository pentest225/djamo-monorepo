import 'package:app_ui/app_ui.dart';
import 'package:core/src/utils/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Represents the name validation errors.
enum FirstnameValidationErrors {
  /// Represents an empty name error.
  empty,

  /// Represents an invalid name error.
  invalid,
  ;

  /// Returns the error message.
  String getErrMessage(BuildContext context) {
    return context.l10n.onboardingFirstnameValidationErrMessage;
  }
}

/// Form input
class FirstnameInputForm extends FormzInput<String, FirstnameValidationErrors> {
  ///
  const FirstnameInputForm.pure() : super.pure('');

  ///
  const FirstnameInputForm.dirty(super.value) : super.dirty();

  @override
  FirstnameValidationErrors? validator(String? value, {RegExp? defaultNameRegex}) {
    if (value == null || value.isEmpty) {
      return FirstnameValidationErrors.empty;
    }
    if (!AppRegRex.latinName.hasMatch(value)) {
      return FirstnameValidationErrors.invalid;
    }
    final regex = defaultNameRegex ?? AppRegRex.defaultNameRegex;
    if (regex.hasMatch(value)) {
      return FirstnameValidationErrors.invalid;
    }
    return null;
  }
}
