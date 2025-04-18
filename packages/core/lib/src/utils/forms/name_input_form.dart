import 'package:app_ui/app_ui.dart';
import 'package:core/src/utils/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Represents the name validation errors.
enum NameValidationErrors {
  /// Represents an empty name error.
  empty,

  /// Represents an invalid name error.
  invalid,
  ;

  /// Returns the error message.
  String getErrMessage(BuildContext context) {
    return context.l10n.onboardingLastnameValidationErrMessage;
  }
}

/// Form input for the name.
class NameInputForm extends FormzInput<String, NameValidationErrors> {
  /// Creates an instance of the name input form.
  const NameInputForm.pure() : super.pure('');

  /// Creates an instance of the name input form with a value.
  const NameInputForm.dirty(super.value) : super.dirty();

  @override
  NameValidationErrors? validator(String? value) {
    if (value == null || value.isEmpty) {
      return NameValidationErrors.empty;
    }
    if (!AppRegRex.latinName.hasMatch(value)) {
      return NameValidationErrors.invalid;
    }
    if (AppRegRex.defaultNameRegex.hasMatch(value)) {
      return NameValidationErrors.invalid;
    }
    return null;
  }
}
