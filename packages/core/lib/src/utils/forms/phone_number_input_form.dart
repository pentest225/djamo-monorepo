import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Represents the phone number validation errors.
enum PhoneNumberValidationErrors {
  /// Represents an empty phone number error.
  empty,

  /// Represents an invalid phone number error (incorrect format).
  invalid,

  /// Represents a missing prefix error.
  prefixMissing,

  /// Represents an invalid phone number length.
  lengthInvalid,
  ;

  /// Returns the error message associated with this error.
  String getErrMessage(BuildContext context, {String prefix = '225'}) {
    switch (this) {
      case PhoneNumberValidationErrors.empty:
      case PhoneNumberValidationErrors.invalid:
      case PhoneNumberValidationErrors.lengthInvalid:
        return context.l10n.phoneNumberInvalidErrMessage;

      case PhoneNumberValidationErrors.prefixMissing:
        return context.l10n.phoneNumberPrefixNotPresentErrMessage(prefix);
    }
  }
}

/// Form input for phone number validation.
class PhoneNumberInputForm extends FormzInput<String, PhoneNumberValidationErrors> {
  ///
  const PhoneNumberInputForm.pure() : super.pure('');

  ///
  const PhoneNumberInputForm.dirty(super.value) : super.dirty();

  @override
  PhoneNumberValidationErrors? validator(String? value, {RegExp? defaultPhoneRegex}) {
    if (value == null || value.isEmpty) {
      return PhoneNumberValidationErrors.empty;
    }

    // Check if the number starts with a "+"
    if (!value.startsWith('+')) {
      return PhoneNumberValidationErrors.prefixMissing;
    }

    // Ensure there is only one "+"
    if (value.split('+').length > 2) {
      return PhoneNumberValidationErrors.invalid;
    }

    // WAEMU countries' prefix codes
    final waemuCountriesCodes = ['+228', '+229', '+226', '+225', '+245', '+223', '+227', '+221'];

    // Check if the prefix is valid for WAEMU countries
    if (value.length >= 4 && !waemuCountriesCodes.contains(value.substring(0, 4))) {
      return PhoneNumberValidationErrors.invalid;
    }

    // Validate the phone number length after the prefix
    if (value.length >= 4) {
      final prefix = value.substring(0, 4);
      final phoneNumberWithoutPrefix = value.replaceAll(prefix, '');

      final minMsisdnValue = prefix == '+245' ? 6 : 8;
      const maxMsisdnValue = 10;

      // Check if the phone number length is within the valid range
      if (!(phoneNumberWithoutPrefix.length >= minMsisdnValue && phoneNumberWithoutPrefix.length <= maxMsisdnValue)) {
        return PhoneNumberValidationErrors.lengthInvalid;
      }
    }

    // If the number is too short, return length invalid error
    if (value.length < 4) {
      return PhoneNumberValidationErrors.lengthInvalid;
    }

    return null; // If no errors, the phone number is valid
  }
}
