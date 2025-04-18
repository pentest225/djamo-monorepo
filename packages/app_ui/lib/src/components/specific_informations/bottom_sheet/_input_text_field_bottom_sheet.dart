part of 'app_bottom_sheet_component.dart';

class _InputTextFieldBottomSheet extends AppBottomSheetComponent {
  const _InputTextFieldBottomSheet({
    required super.title,
    super.controller,
    super.focusNode,
    super.autoFocus,
    super.initialValue,
    super.enabled,
    super.autovalidateMode,
    super.onChanged,
    super.validator,
    super.textAlign,
    super.labelText,
    super.placeholderText,
    super.helperText,
    super.leadingIcon,
    super.trailingIcon,
    super.keyboardType,
    super.inputFormatters,
    super.onTapOutside,
    super.contentPadding,
    super.primaryCTALabel,
    super.secondaryCTALabel,
    super.onPrimaryCTAPressed,
    super.onSecondaryCTAPressed,
    super.isPrimaryCTAEnabled = true,
    super.isSecondaryCTAEnabled = true,
    super.autoHeight = true,
    super.height,
    super.showCloseButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return _AppBottomSheetBuilder(
      title: title!,
      showCloseButton: showCloseButton,
      inputTextFieldComponent: AppTextFieldComponent(
        labelText: labelText,
        controller: controller,
        focusNode: focusNode,
        autoFocus: autoFocus,
        initialValue: initialValue,
        enabled: enabled,
        autovalidateMode: autovalidateMode,
        onChanged: onChanged,
        validator: validator,
        textAlign: textAlign,
        placeholderText: placeholderText,
        helperText: helperText,
        leadingIcon: leadingIcon,
        trailingIcon: trailingIcon,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        onTapOutside: onTapOutside,
        contentPadding: contentPadding,
      ),
      primaryCTALabel: primaryCTALabel ?? 'Primary CTA Label',
      secondaryCTALabel: secondaryCTALabel ?? 'Secondary CTA Label',
      onPrimaryCTAPressed: onPrimaryCTAPressed,
      onSecondaryCTAPressed: onSecondaryCTAPressed,
      isPrimaryCTAEnabled: isPrimaryCTAEnabled,
      isSecondaryCTAEnabled: isPrimaryCTAEnabled,
      autoHeight: autoHeight,
      height: height,
      key: key,
    );
  }
}
