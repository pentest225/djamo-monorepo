import 'package:app_ui/app_ui.dart';
import 'package:core/src/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Represents validation errors.
enum GenderValidationErrors {
  ///
  empty,
  ;

  /// Returns the error message.
  String? getErrMessage(BuildContext context) {
    return context.l10n.onboardingGenderValidationErrMessage;
  }
}

/// Form input
class GenderInputForm extends FormzInput<GenderEnum, GenderValidationErrors> {
  ///
  const GenderInputForm.pure() : super.pure(GenderEnum.none);

  ///
  const GenderInputForm.dirty(super.value) : super.dirty();

  @override
  GenderValidationErrors? validator(GenderEnum value) {
    if (value == GenderEnum.none) {
      return GenderValidationErrors.empty;
    }
    return null;
  }
}
