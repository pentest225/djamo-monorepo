part of 'app_international_phone_number_component.dart';

class AppPhoneNumberFieldComponent extends StatelessWidget {
  const AppPhoneNumberFieldComponent({
    required this.msisdnLength,
    required this.msisdnInputMask,
    required this.msisdnPlaceholder,
    required this.onCompleted,
    this.focusNode,
    super.key,
    this.controller,
    this.onChanged,
    this.autofocus = true,
    this.onTapOutside,
    this.msisdnValidator,
    this.label,
  });

  final FocusNode? focusNode;
  final TextEditingController? controller;
  final int msisdnLength;
  final String msisdnInputMask;
  final String msisdnPlaceholder;
  final void Function(String) onCompleted;
  final void Function(String)? onChanged;
  final void Function()? onTapOutside;
  final bool autofocus;
  final String? Function(String?)? msisdnValidator;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUnfocus,
        onTapOutside: (_) {
          useRequestUnFocus();
        },
        focusNode: focusNode,
        autofocus: autofocus,
        textAlignVertical: TextAlignVertical.center,
        validator: msisdnValidator != null
            ? (value) {
                final err = msisdnValidator!(value);
                if (err.orNull != null) {
                  // Hack to force AppPhoneNumberFieldComponent to be
                  // always aligned with the _CountrySelectorComponent
                  // in AppInternationalPhoneNumberComponent
                  return '$err\n\n';
                }
                return null;
              }
            : null,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          labelText: label,
          hintStyle: context.theme.textTheme.bodyLarge?.copyWith(
            color: context.theme.colorScheme.onSurfaceVariant,
          ),
          floatingLabelStyle: context.theme.textTheme.bodySmall?.copyWith(
            color: (focusNode?.hasFocus ?? false) ? context.theme.colorScheme.primary : null,
          ),
          contentPadding: AppPaddings.s16.only(bottom: true),
          hintText: msisdnPlaceholder,
          helperText: ' \n ',
          errorStyle: const TextStyle(height: 0),
          helperStyle: const TextStyle(height: 0),
          errorMaxLines: 2,
        ),
        keyboardType: TextInputType.phone,
        onChanged: (phoneNumber) {
          final trimmed = phoneNumber.replaceAll(' ', '').trim();
          onChanged?.call(trimmed);
          if (trimmed.length == msisdnLength) {
            onCompleted(trimmed);
          }
        },
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(msisdnLength),
          PhoneNumberMaskTextInputFormatter(mask: msisdnInputMask) as TextInputFormatter,
        ],
      ),
    );
  }
}
