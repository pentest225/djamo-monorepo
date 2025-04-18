import 'package:app_ui/app_ui.dart';
import 'package:core/src/utils/app_regex.dart';
import 'package:flutter/widgets.dart';
import 'package:formz/formz.dart';

enum FullnameValidationErrors {
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
class FullnameInputForm extends FormzInput<String, FullnameValidationErrors> {
  ///
  const FullnameInputForm.pure() : super.pure('');

  ///
  const FullnameInputForm.dirty(super.value) : super.dirty();

  @override
  FullnameValidationErrors? validator(String? value, {RegExp? defaultNameRegex}) {
    if (value == null || value.isEmpty) {
      return FullnameValidationErrors.empty;
    }
    if (!AppRegRex.latinName.hasMatch(value)) {
      return FullnameValidationErrors.invalid;
    }
    final regex = defaultNameRegex ?? AppRegRex.defaultNameRegex;
    if (regex.hasMatch(value)) {
      return FullnameValidationErrors.invalid;
    }
    return null;
  }
}
