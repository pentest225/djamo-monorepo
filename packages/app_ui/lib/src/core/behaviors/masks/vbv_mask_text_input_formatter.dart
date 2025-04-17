import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class VBVMaskTextInputFormatter extends MaskTextInputFormatter {
  VBVMaskTextInputFormatter({
    required this.code,
  }) : super(
          mask: '# # # # # #',
          filter: {'#': RegExp('[0-9]')},
          initialText: code,
        );

  /// The initial text to be formatted.
  final String code;
}
