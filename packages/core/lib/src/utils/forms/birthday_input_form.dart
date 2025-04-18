import 'package:app_ui/app_ui.dart';
import 'package:core/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Represents validation errors.
enum BirthdayValidationErrors {
  ///
  empty,

  ///
  invalid,
  ;

  /// Returns the error message.
  String? getErrMessage(BuildContext context, {int minAge = 18}) {
    return context.l10n.onboardingAgeRestrictionMessage(minAge);
  }
}

/// Form input
class BirthdayInputForm extends FormzInput<DateTime?, BirthdayValidationErrors> {
  ///
  const BirthdayInputForm.pure() : super.pure(null);

  ///
  const BirthdayInputForm.dirty(super.value) : super.dirty();

  @override
  BirthdayValidationErrors? validator(DateTime? value) {
    if (value == null) {
      return BirthdayValidationErrors.empty;
    }
    if (value.isAfter(AppConstants.userMinimumAgeInDatetime)) {
      return BirthdayValidationErrors.invalid;
    }
    return null;
  }
}
