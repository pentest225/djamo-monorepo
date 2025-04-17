import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/// A [PhoneNumberMaskTextInputFormatter] is a [MaskTextInputFormatter] that formats a phone number.
class PhoneNumberMaskTextInputFormatter extends MaskTextInputFormatter {
  /// Creates a [PhoneNumberMaskTextInputFormatter] with the given [mask].
  PhoneNumberMaskTextInputFormatter({
    required String mask,
    this.initialText,
  }) : super(
          mask: mask,
          filter: {'#': RegExp('[0-9]')},
          initialText: initialText,
        );

  /// The initial text to be formatted.
  final String? initialText;
}
