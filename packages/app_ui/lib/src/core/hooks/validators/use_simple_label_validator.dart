import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:flutter/material.dart';

/// A simple label validator that checks if the value is empty or contains special characters.
String? useSimpleLabelValidator(BuildContext context, {required String? value, bool validateOnEmpty = false}) {
  if (value == null || value.isEmpty) {
    return validateOnEmpty ? context.l10n.validationFieldRequired : null;
  }

  if (!RegExp(r"^[\p{L}\p{M}\s\p{So}'-]+$", unicode: true).hasMatch(value)) {
    return context.l10n.validationSpecialCharacterNotAllowed;
  }
  return null;
}
