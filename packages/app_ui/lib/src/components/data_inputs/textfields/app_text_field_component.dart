import 'dart:async';

import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/core.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petit_extension/petit_extension.dart';

part '_operation_amount_field_builder.dart';
part '_operation_amount_small_field_builder.dart';

class AppTextFieldComponent extends StatefulWidget {
  const AppTextFieldComponent({
    super.key,
    this.controller,
    this.focusNode,
    this.autoFocus,
    this.initialValue,
    this.enabled = true,
    this.labelText,
    this.leadingIcon,
    this.trailingIcon,
    this.customTrailingIcon,
    this.trailing,
    this.placeholderText,
    this.autovalidateMode,
    this.validator,
    this.textAlign,
    this.helperText,
    this.keyboardType,
    this.inputFormatters = const [],
    this.onTapOutside,
    this.onChanged,
    this.contentPadding,
    this.textCapitalization,
    this.textInputAction,
    this.onFocusChanged,
    this.onTap,
    this.readOnly = false,
    this.currency = 'F',
    this.showCancelActionOnValid = false,
    this.maxLength,
  });

  factory AppTextFieldComponent.dropdown({
    required String labelText,
    required void Function() onPressed,
    required String? value,
    String? placeholderText,
    String? helperText,
    Key? key,
  }) {
    return AppTextFieldComponent(
      key: key ?? ValueKey(value),
      labelText: labelText,
      initialValue: value,
      placeholderText: placeholderText,
      helperText: helperText,
      onTap: () {
        useRequestUnFocus();
        onPressed();
      },
      readOnly: true,
      onTapOutside: useRequestUnFocus,
      trailingIcon: AppAssetBuilder.svg(svg: Assets.icons.arrowDropDown),
    );
  }

  /// Creates a text field with a currency formatter.
  factory AppTextFieldComponent.operationAmountLarge({
    Key? key,

    ///Prefers to use a [onChanged] value instead of a [controller]
    TextEditingController? controller,
    ValueNotifier<double?>? valueController,
    FocusNode? focusNode,
    double? initialAmount,
    bool autoFocus = true,
    bool readOnly = false,
    VoidCallback? onTapOutside,
    String? Function(double)? validator,
    void Function(double)? onChanged,
    TextInputAction? textInputAction,
    String currency = 'F',
    String? helperText,
  }) {
    return _OperationAmountFieldBuilder(
      key: key,
      controller: controller,
      valueController: valueController,
      focusNode: focusNode,
      initialAmount: initialAmount,
      validator: validator,
      onChanged: onChanged,
      onTapOutside: onTapOutside,
      autoFocus: autoFocus,
      readOnly: readOnly,
      textInputAction: textInputAction,
      currency: currency,
      helperText: helperText,
    );
  }

  /// Creates a text field with a currency formatter.
  factory AppTextFieldComponent.operationAmountSmall({
    Key? key,

    ///Prefers to use a [onChanged] value instead of a [controller]
    TextEditingController? controller,
    String? labelText,
    TextAlign? textAlign,
    FocusNode? focusNode,
    double? initialAmount,
    bool autoFocus = true,
    VoidCallback? onTapOutside,
    String? Function(double)? validator,
    void Function(double)? onChanged,
    EdgeInsetsGeometry? contentPadding,
    TextInputAction? textInputAction,
    bool hideCurrencySymbol = false,
    AutovalidateMode? autovalidateMode,
    bool showCancelActionOnValid = false,
  }) {
    return _OperationAmountSmallFieldBuilder(
      key: key,
      controller: controller,
      labelText: labelText,
      textAlign: textAlign,
      focusNode: focusNode,
      initialAmount: initialAmount,
      validator: validator,
      onChanged: onChanged,
      onTapOutside: onTapOutside,
      autoFocus: autoFocus,
      contentPadding: contentPadding,
      textInputAction: textInputAction,
      hideCurrencySymbol: hideCurrencySymbol,
      autovalidateMode: autovalidateMode,
      showCancelActionOnValid: showCancelActionOnValid,
    );
  }

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final String? initialValue;
  final bool enabled;
  final AutovalidateMode? autovalidateMode;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final TextAlign? textAlign;
  final String? labelText;
  final String? placeholderText;
  final String? helperText;
  final AppAssetBuilder? leadingIcon;
  final AppAssetBuilder? trailingIcon;
  final Widget? customTrailingIcon;
  final Widget? trailing;
  final TextInputType? keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final VoidCallback? onTapOutside;
  final EdgeInsetsGeometry? contentPadding;
  final TextCapitalization? textCapitalization;
  final TextInputAction? textInputAction;
  final ValueChanged<bool>? onFocusChanged;
  final VoidCallback? onTap;
  final bool readOnly;
  final String currency;
  final bool showCancelActionOnValid;
  final int? maxLength;

  @override
  State<AppTextFieldComponent> createState() => _AppTextFieldComponentState();
}

class _AppTextFieldComponentState extends State<AppTextFieldComponent> {
  late final FocusNode _focusNode;
  late final TextEditingController _controller;
  late final ValueNotifier<String?> _errMessage;
  late final AutovalidateMode _autovalidateMode;

  Timer? _debounce;

  bool _hasEnteredTextAtLeastOnce = false;
  late bool _isFocused;

  bool get hasErr => _errMessage.value != null && _errMessage.value!.isNotEmpty;

  bool get _hasValue => _controller.text.trim().isNotEmpty;

  void _processValidation() {
    if (!mounted) return;
    _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 300),
      () {
        final canValidate = [
          (_autovalidateMode.isOnUnfocus && !_isFocused),
          (!_autovalidateMode.isOnUnfocus && _hasEnteredTextAtLeastOnce),
        ].any((e) => e);

        if (!canValidate) {
          if (_autovalidateMode.isOnUnfocus && _isFocused) _errMessage.value = null;
          return;
        }
        final text = _controller.text;
        final err = widget.validator?.call(text);
        _errMessage.value = err;
      },
    );
  }

  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();
    _isFocused = widget.autoFocus ?? _focusNode.hasFocus;
    _controller = widget.controller ?? TextEditingController(text: widget.initialValue);
    _errMessage = ValueNotifier(null);
    _autovalidateMode = widget.autovalidateMode ?? AutovalidateMode.onUnfocus;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.addListener(() {
        setState(() {
          _isFocused = _focusNode.hasFocus;
        });
        widget.onFocusChanged?.call(_isFocused);
        _processValidation();
      });
      _controller.addListener(_processValidation);
      final hasInitialErr = widget.initialValue != null && widget.initialValue!.isNotEmpty;
      if (hasInitialErr) {
        _controller.text = widget.initialValue!;
        final initialErr = widget.validator?.call(widget.initialValue);
        _errMessage.value = initialErr;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    if (widget.focusNode == null) _focusNode.dispose();
    _debounce?.cancel();
    _errMessage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasLeadingIcon = widget.leadingIcon != null;
    final maxIconSize = AppSizes.f.s40;
    final iconConstraints = BoxConstraints(
      maxWidth: maxIconSize,
      maxHeight: maxIconSize,
      minWidth: maxIconSize,
      minHeight: maxIconSize,
    );
    return ValueListenableBuilder(
      valueListenable: _errMessage,
      builder: (_, err, __) {
        final hasErr = err != null && err.isNotEmpty;
        return TextFormField(
          readOnly: widget.readOnly,
          enabled: widget.enabled,
          maxLength: widget.maxLength,
          onTap: widget.onTap,
          controller: _controller,
          focusNode: _focusNode,
          autofocus: widget.autoFocus ?? false,
          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
          autovalidateMode: _autovalidateMode,
          textAlign: widget.textAlign ?? TextAlign.start,
          keyboardType: widget.keyboardType,
          inputFormatters: widget.inputFormatters,
          onTapOutside: widget.onTapOutside != null ? (_) => widget.onTapOutside?.call() : null,
          onChanged: (value) {
            if (!_hasEnteredTextAtLeastOnce) {
              setState(() {
                _hasEnteredTextAtLeastOnce = true;
              });
            }
            widget.onChanged?.call(value);
          },
          decoration: InputDecoration(
            contentPadding: AppPaddings.s16.bottom,
            labelText: widget.labelText ?? '',
            prefixIcon: useReturnValue(() {
              if (!hasLeadingIcon) return null;
              return Align(
                child: widget.leadingIcon?.mayOverrideConfig(
                  config: AssetBuilderConfig.icon(size: AppSizes.f.s20).$svg(
                    height: AppSizes.f.s20,
                    width: AppSizes.f.s20,
                  ),
                ),
              );
            }),
            suffix: widget.trailing,
            suffixIcon: useReturnValue(() {
              if (hasErr) {
                return Align(
                  child: Assets.icons.error.svg(
                    colorFilter: context.colorScheme.error.toSrcMode(),
                    height: AppSizes.f.s20,
                    width: AppSizes.f.s20,
                  ),
                );
              }
              final hasTrailingIcon = widget.trailingIcon != null || widget.customTrailingIcon != null;
              if (widget.showCancelActionOnValid && !hasTrailingIcon && _hasValue && !hasErr && !_isFocused) {
                return Align(
                  child: AppAssetBuilder.svg(
                    onTap: () {
                      _controller.clear();
                      widget.onChanged?.call('');
                      _focusNode.requestFocus();
                    },
                    svg: Assets.icons.cancel,
                    config: AssetBuilderConfig.svg(
                      height: AppSizes.f.s20,
                      width: AppSizes.f.s20,
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                );
              }
              if (!hasTrailingIcon) return null;
              return widget.customTrailingIcon ??
                  Align(
                    child: widget.trailingIcon?.mayOverrideConfig(
                      config: AssetBuilderConfig.icon(
                        size: AppSizes.f.s20,
                        color: hasErr ? context.colorScheme.error : null,
                      ).$svg(
                        color: hasErr ? context.colorScheme.error : null,
                        height: AppSizes.f.s20,
                        width: AppSizes.f.s20,
                      ),
                    ),
                  );
            }),
            hintText: widget.placeholderText,
            helper: useReturnValue(() {
              final hasHelperText = widget.helperText != null && widget.helperText!.isNotEmpty;
              if (hasErr || !hasHelperText) return null;
              return Padding(
                padding: hasLeadingIcon ? AppPaddings.s16.left : EdgeInsets.zero,
                child: AppTextComponent.bodySmall(
                  widget.helperText!,
                  color: context.colorScheme.onSurface,
                ),
              );
            }),
            error: !hasErr
                ? null
                : Padding(
                    padding: hasLeadingIcon ? AppPaddings.s16.left : EdgeInsets.zero,
                    child: AppTextComponent.bodySmall(
                      err,
                      color: context.colorScheme.error,
                    ),
                  ),
            suffixIconConstraints: iconConstraints,
            prefixIconConstraints: iconConstraints,
            labelStyle: context.theme.inputDecorationTheme.labelStyle?.copyWith(
              color: !widget.enabled ? context.colorScheme.onSurface.withOpacity(.38) : null,
            ),
            floatingLabelStyle: context.theme.inputDecorationTheme.floatingLabelStyle?.copyWith(
              color: useReturnValue(() {
                if (!widget.enabled) return context.colorScheme.onSurface.withOpacity(.38);
                if (hasErr) return context.colorScheme.error;
                if (_isFocused) return context.colorScheme.primary;
                return context.colorScheme.onSurfaceVariant;
              }),
            ),
          ),
        );
      },
    );
  }
}

extension _AutovalidateModeX on AutovalidateMode {
  bool get isOnUnfocus => this == AutovalidateMode.onUnfocus;
}
