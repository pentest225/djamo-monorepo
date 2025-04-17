import 'package:app_ui/src/core/core.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petit_extension/petit_extension.dart';

part '_country_selector_component.dart';
part '_field.dart';

class AppInternationalPhoneNumberComponent extends StatefulWidget {
  const AppInternationalPhoneNumberComponent({
    required this.msisdnLength,
    required this.msisdnInputMask,
    required this.msisdnPlaceholder,
    required this.onCompleted,
    required this.callingCode,
    required this.flagAsset,
    this.controller,
    this.countryController,
    super.key,
    this.initialPhoneNumber,
    this.onChanged,
    this.onCountrySelectorPressed,
    this.autoFocus = true,
    this.isCountrySelectorEnabled = true,
    this.msisdnValidator,
    this.onTapOutside,
    this.focusNode,
  });

  final String callingCode;

  /// The flag asset to be displayed.
  /// Prefer use [AppAssetBuilder.image] builder.
  final AppAssetBuilder flagAsset;
  final TextEditingController? controller;
  final TextEditingController? countryController;
  final String? initialPhoneNumber;
  final int msisdnLength;
  final String msisdnInputMask;
  final String msisdnPlaceholder;
  final bool autoFocus;
  final void Function(String) onCompleted;
  final void Function(String)? onChanged;
  final void Function(FocusNode)? onCountrySelectorPressed;
  final bool isCountrySelectorEnabled;
  final String? Function(String?)? msisdnValidator;
  final VoidCallback? onTapOutside;
  final FocusNode? focusNode;

  @override
  State<AppInternationalPhoneNumberComponent> createState() => _AppInternationalPhoneNumberComponentState();
}

class _AppInternationalPhoneNumberComponentState extends State<AppInternationalPhoneNumberComponent> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    if ((widget.initialPhoneNumber ?? '').isNotEmpty) {
      widget.controller?.text = PhoneNumberMaskTextInputFormatter(mask: widget.msisdnInputMask).maskText(widget.initialPhoneNumber ?? '');
    }
  }

  @override
  void dispose() {
    if (widget.focusNode == null) _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.h.custom(96),
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _CountrySelectorComponent(
            key: const Key('country_selector'),
            focusNode: _focusNode,
            callingCode: widget.callingCode,
            flagAsset: widget.flagAsset,
            enabled: widget.isCountrySelectorEnabled,
            onPressed: !widget.isCountrySelectorEnabled
                ? null
                : () {
                    widget.onCountrySelectorPressed?.call(_focusNode);
                  },
          ),
          AppGaps.hor.s8,
          Expanded(
            child: AppPhoneNumberFieldComponent(
              key: const Key('phone_number_field'),
              //controller: widget.controller,
              focusNode: _focusNode,
              msisdnInputMask: widget.msisdnInputMask,
              msisdnLength: widget.msisdnLength,
              msisdnPlaceholder: widget.msisdnPlaceholder,
              onCompleted: widget.onCompleted,
              msisdnValidator: widget.msisdnValidator,
              autofocus: widget.autoFocus,
              onChanged: widget.onChanged,
              onTapOutside: widget.onTapOutside,
            ),
          ),
        ],
      ),
    );
  }
}
