import 'dart:async';

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPVerificationInputView extends StatefulWidget {
  const OTPVerificationInputView({
    required this.leading,
    super.key,
    this.title,
    this.length = 4,
    this.onCompleted,
    this.onResendOTPPressed,
    this.onUseAnotherVerificationMethodPressed,
    this.focusNode,
    this.cta,
    this.actions,
    this.useAppBar = true,
    this.controller,
    this.method = 'SMS',
    this.useSmsAutofill = true,
  });

  final String? title;
  final int length;
  final void Function(String)? onCompleted;
  final VoidCallback? onResendOTPPressed;
  final Future<bool> Function()? onUseAnotherVerificationMethodPressed;
  final FocusNode? focusNode;
  final Widget? leading;
  final Widget? cta;
  final List<Widget>? actions;
  final bool useAppBar;
  final TextEditingController? controller;
  final String? method;
  final bool useSmsAutofill;

  @override
  State<OTPVerificationInputView> createState() => _OTPVerificationInputViewState();
}

class _OTPVerificationInputViewState extends State<OTPVerificationInputView> {
  int _remainingTimeToReSentOTP = 30;
  Timer? _debounce;
  bool get _canResendOTP => _remainingTimeToReSentOTP == 0;

  late final TextEditingController _controller;

  void _processRemainingTimeToReSentOTP() {
    _remainingTimeToReSentOTP = 30;
    _debounce?.cancel();
    _debounce = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_remainingTimeToReSentOTP > 0) {
        setState(() {
          _remainingTimeToReSentOTP--;
        });
        return;
      }
      _debounce?.cancel();
    });
  }

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _processRemainingTimeToReSentOTP();
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    if (widget.controller == null) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffoldComponent.withFooter(
      horizontalPadding: AppSizes.w.s16,
      appBar: !widget.useAppBar
          ? null
          : AppTopBarComponent(
              context,
              leading: widget.leading,
              actions: widget.actions,
            ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppGaps.ver.s16,
            AppHeadlineComponent.largeSingleText(
              key: const Key('auth_otp_verification_input_view_headline'),
              header: widget.title ?? context.l10n.authEnterOtpTitle(widget.method?.toUpperCase() ?? 'SMS'),
            ),
            AppGaps.ver.custom(71),
            Padding(
              padding: AppPaddings.custom(50).horizontal,
              child: AppOTPCodeComponent(
                key: const Key('auth_otp_input'),
                controller: _controller,
                androidSmsAutofillMethod: switch (widget.useSmsAutofill) {
                  true => AndroidSmsAutofillMethod.smsUserConsentApi,
                  _ => AndroidSmsAutofillMethod.none,
                },
                onCompleted: (otp) {
                  widget.onCompleted?.call(otp);
                },
              ),
            ),
            AppGaps.ver.s12,
            Align(
              child: AppCommonButtonComponent.textButton(
                isEnabled: _canResendOTP,
                label: _canResendOTP
                    ? context.l10n.authResendOTPBySms
                    : context.l10n.authReSentOtpIn(
                        _formatHHMMSS(_remainingTimeToReSentOTP),
                      ),
                onPressed: () {
                  _processRemainingTimeToReSentOTP();
                  widget.onResendOTPPressed?.call();
                },
              ),
            ),
          ],
        ),
      ),
      footer: [
        if (widget.onUseAnotherVerificationMethodPressed != null) ...[
          AppCommonButtonComponent.textButton(
            label: context.l10n.authUseAnotherOtpMethod,
            isEnabled: _canResendOTP,
            onPressed: () {
              widget.onUseAnotherVerificationMethodPressed?.call().then((r) {
                if (!r) return;
                _processRemainingTimeToReSentOTP();
              });
            },
          ),
        ],
        if (widget.cta != null) ...[
          AppGaps.ver.s24,
          widget.cta!,
        ],
      ],
    );
  }

  String _formatHHMMSS(int value) {
    final hours = (value / 3600).truncate();
    final seconds = value % 3600;
    final minutes = (seconds / 60).truncate();
    final hoursStr = (hours).toString().padLeft(2, '0');
    final minutesStr = (minutes).toString().padLeft(2, '0');
    final secondsStr = (seconds % 60).toString().padLeft(2, '0');

    if (hours == 0) {
      return '$minutesStr:$secondsStr';
    }
    return '$hoursStr:$minutesStr:$secondsStr';
  }
}
