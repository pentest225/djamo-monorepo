import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

/// {@template otp_input_widget}
/// A widget that allows the user to input their OTP.
/// {@endtemplate}
class AppOTPCodeComponent extends StatelessWidget {
  /// {@macro otp_input_widget}
  const AppOTPCodeComponent({
    super.key,
    this.onCompleted,
    this.onChanged,
    this.controller,
    this.focusNode,
    this.autoFocus = true,
    this.enabled = true,
    this.validator,
    this.androidSmsAutofillMethod = AndroidSmsAutofillMethod.none,
  });

  /// Callback function that is called when the OTP is completed.
  final void Function(String)? onCompleted;

  ///
  final void Function(String)? onChanged;

  /// The controller that is used to control the OTP input.
  final TextEditingController? controller;

  /// The focus node that is used to control the OTP input.
  final FocusNode? focusNode;
  final bool autoFocus;
  final bool enabled;
  final String? Function(String?)? validator;
  final AndroidSmsAutofillMethod androidSmsAutofillMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: AppPaddings.s8.horizontal,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth / 4.35;
          return _Inputs(
            width: width,
            onCompleted: onCompleted,
            onChanged: onChanged,
            controller: controller,
            focusNode: focusNode,
            autoFocus: autoFocus,
            enabled: enabled,
            validator: validator,
            androidSmsAutofillMethod: androidSmsAutofillMethod,
          );
        },
      ),
    );
  }
}

class _Inputs extends StatelessWidget {
  const _Inputs({
    required this.width,
    this.onCompleted,
    this.onChanged,
    this.controller,
    this.focusNode,
    this.autoFocus = true,
    this.enabled = true,
    this.validator,
    this.androidSmsAutofillMethod = AndroidSmsAutofillMethod.none,
  });
  final void Function(String)? onCompleted;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final double width;
  final bool enabled;
  final bool autoFocus;
  final AndroidSmsAutofillMethod androidSmsAutofillMethod;

  @override
  Widget build(BuildContext context) {
    PinTheme defaultTheme({
      Color? textColor,
      Color? borderColor,
      double? borderWidth,
    }) {
      return PinTheme(
        height: AppSizes.h.s56,
        width: width,
        textStyle: context.theme.textTheme.bodyLarge?.copyWith(
          color: textColor ?? context.colorScheme.onSurface,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: borderColor ?? context.customColorScheme.contentLowest,
              width: borderWidth ?? AppSizes.w.custom(1),
            ),
          ),
        ),
      );
    }

    return Pinput(
      enabled: enabled,
      focusNode: focusNode,
      controller: controller,
      androidSmsAutofillMethod: androidSmsAutofillMethod,
      autofocus: autoFocus,
      validator: validator,
      errorBuilder: (err, content) {
        return Padding(
          padding: AppPaddings.s16.horizontal.copyWith(
            top: AppSizes.h.s4,
          ),
          child: AppTextComponent.bodySmall(
            err ?? '',
            color: context.colorScheme.error,
          ),
        );
      },
      cursor: Text(
        '|',
        style: context.theme.textTheme.bodyLarge?.copyWith(
          color: context.colorScheme.primary,
          fontSize: AppSizes.f.s24,
          fontWeight: FontWeight.bold,
        ),
      ),
      separatorBuilder: (index) => AppGaps.hor.s8,
      focusedPinTheme: defaultTheme(
        borderColor: context.colorScheme.primary,
        borderWidth: AppSizes.w.custom(2),
        textColor: context.colorScheme.primary,
      ),
      errorPinTheme: defaultTheme(
        borderColor: context.colorScheme.error,
        borderWidth: AppSizes.w.custom(2),
        textColor: context.colorScheme.error,
      ),
      submittedPinTheme: defaultTheme(),
      defaultPinTheme: defaultTheme(),
      disabledPinTheme: defaultTheme(
        borderColor: context.customColorScheme.contentLowest,
        textColor: context.customColorScheme.contentLowest,
      ),
      onCompleted: onCompleted,
      onChanged: onChanged,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}
