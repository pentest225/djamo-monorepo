import 'dart:async';

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

Future<void> useAddPhoneNumberModal(
  BuildContext context, {
  required String title,
  required int msisdnLength,
  required String msisdnInputMask,
  required void Function(String) onCompleted,
  String? msisdnPlaceholder,
  String? description,
  String? invalidPhoneNumberErrMessage,
  String? fieldLabel,
  void Function(String)? onChanged,
  TextEditingController? controller,
  FocusNode? focusNode,
  String name = '',
}) async {
  await useAppShowModalBottomSheet<void>(
    context,
    isScrollControlled: true,
    useSafeArea: true,
    routeSettings: RouteSettings(name: 'ADD_PHONE:$name'),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: _AddPhoneNumberModalView(
          title: title,
          msisdnLength: msisdnLength,
          msisdnInputMask: msisdnInputMask,
          msisdnPlaceholder: msisdnPlaceholder,
          onCompleted: onCompleted,
          invalidPhoneNumberErrMessage: invalidPhoneNumberErrMessage,
          fieldLabel: fieldLabel,
          onChanged: onChanged,
          controller: controller,
          focusNode: focusNode,
        ),
      );
    },
  );
}

class _AddPhoneNumberModalView extends StatefulWidget {
  const _AddPhoneNumberModalView({
    required this.title,
    required this.msisdnLength,
    required this.msisdnInputMask,
    required this.onCompleted,
    this.invalidPhoneNumberErrMessage,
    this.fieldLabel,
    this.onChanged,
    this.controller,
    this.focusNode,
    this.msisdnPlaceholder,
  });

  final String title;
  final String? fieldLabel;
  final int msisdnLength;
  final String msisdnInputMask;
  final String? msisdnPlaceholder;
  final String? invalidPhoneNumberErrMessage;
  final void Function(String) onCompleted;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  State<_AddPhoneNumberModalView> createState() => _AddPhoneNumberModalViewState();
}

class _AddPhoneNumberModalViewState extends State<_AddPhoneNumberModalView> {
  late final TextEditingController _controller;

  Timer? _debounce;

  late ValueNotifier<String> _phoneNumber;

  @override
  void initState() {
    _controller = TextEditingController();
    _phoneNumber = ValueNotifier<String>('');
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _debounce?.cancel();
    _phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppPaddings.s24.symmetric.copyWith(
          top: 0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTextComponent.titleLargeProminent(
              widget.title,
              textAlign: TextAlign.center,
            ),
            AppGaps.ver.s24,
            AppPhoneNumberFieldComponent(
              controller: _controller,
              focusNode: widget.focusNode,
              label: widget.fieldLabel ?? context.l10n.number,
              msisdnLength: widget.msisdnLength,
              msisdnInputMask: widget.msisdnInputMask,
              msisdnPlaceholder: widget.msisdnPlaceholder ?? '',
              onCompleted: (phoneNumber) {},
              onChanged: (phoneNumber) {
                _debounce?.cancel();
                _debounce = Timer(
                  const Duration(milliseconds: 300),
                  () {
                    _phoneNumber.value = phoneNumber;
                    widget.onChanged?.call(phoneNumber);
                  },
                );
              },
            ),
            AppGaps.ver.custom(38),
            ValueListenableBuilder(
              valueListenable: _phoneNumber,
              builder: (_, value, __) {
                final isValid = value.length == widget.msisdnLength;
                return AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta(
                  isEnabled: isValid,
                  label: context.l10n.confirm,
                  onPressed: () {
                    useAppPopModalBottomSheet<void>(context).then((r) {
                      widget.onCompleted(_phoneNumber.value);
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
