import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petit_extension/petit_extension.dart';

enum _NumericPadKey {
  one._(1),
  two._(2),
  three._(3),
  four._(4),
  five._(5),
  six._(6),
  seven._(7),
  eight._(8),
  nine._(9),
  zero._(0),
  ;

  const _NumericPadKey._(this.value);

  final int value;
}

///
class AppNumericKeyboardComponent extends StatefulWidget {
  ///
  const AppNumericKeyboardComponent({
    required this.maxInputLength,
    required this.controller,
    this.onChanged,
    super.key,
    this.onCompleted,
    this.biometricButtonBuilder,
    this.onBiometricPressed,
    this.valueController,
    this.isForAmount = false,
  });

  ///
  final TextEditingController controller;
  final ValueNotifier<double?>? valueController;

  ///
  final int maxInputLength;

  ///
  final void Function(String)? onChanged;
  final void Function(String)? onCompleted;
  final Widget Function(BuildContext)? biometricButtonBuilder;
  final void Function()? onBiometricPressed;
  final bool isForAmount;

  @override
  State<AppNumericKeyboardComponent> createState() => _AppNumericKeyboardComponentState();
}

class _AppNumericKeyboardComponentState extends State<AppNumericKeyboardComponent> {
  final _keys = _NumericPadKey.values.chunked(3).toList();
  String _value = '';

  void _updateValue(String value) {
    if (_value.isNotEmpty && widget.controller.text.isEmpty) {
      _value = '';
    }
    final canPush = _value.length < widget.maxInputLength;
    if (canPush && widget.isForAmount) {
      final v = num.tryParse((_value + value).split('').takeFirst(widget.maxInputLength).join());
      _value = v == 0 || v == null ? '' : v.toString();
      widget.controller.text = _value;
      widget.onChanged?.call(_value);
      if (_value.length == widget.maxInputLength) {
        widget.onCompleted?.call(_value);
      }
      return;
    }
    if (canPush) {
      _value = (_value + value).split('').takeFirst(widget.maxInputLength).join();
      widget.controller.text = _value;
      widget.onChanged?.call(_value);
      if (_value.length == widget.maxInputLength) {
        widget.onCompleted?.call(_value);
      }
    }
  }

  void _removeLastValue() {
    if (_value.isNotEmpty) {
      _value = _value.substring(0, _value.length - 1);
      widget.controller.text = _value;
      widget.onChanged?.call(_value);
    }
  }

  void _removeAllValue() {
    _value = '';
    widget.controller.text = _value;
    widget.onChanged?.call(_value);
  }

  @override
  void initState() {
    _listen();
    super.initState();
  }

  void _listen() {
    widget.controller.addListener(() {
      widget.valueController?.value = double.tryParse(widget.controller.text);
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_listen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < _keys.length; i++) ...[
            if (_keys.elementAt(i).length == 1) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: widget.isForAmount
                        ? _ButtonComponent.doubleZero(
                            onPressed: _updateValue,
                          )
                        : _ButtonComponent.emptyOr(
                            child: widget.biometricButtonBuilder,
                            onPressed: widget.onBiometricPressed,
                          ),
                  ),
                  Expanded(
                    child: _ButtonComponent.digit(
                      value: _keys.elementAt(i).last.value,
                      onPressed: _updateValue,
                    ),
                  ),
                  Expanded(
                    child: _ButtonComponent.backspace(
                      onPressed: _removeLastValue,
                      onLongPressed: _removeAllValue,
                    ),
                  ),
                ],
              ),
            ] else ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int j = 0; j < _keys.elementAt(i).length; j++) ...[
                    Expanded(
                      child: _ButtonComponent.digit(
                        value: _keys[i][j].value,
                        onPressed: _updateValue,
                      ),
                    ),
                  ],
                ],
              ),
              AppGaps.ver.s8,
            ],
          ],
        ],
      ),
    );
  }
}

class _ButtonComponent extends StatelessWidget {
  const _ButtonComponent._({
    required this.child,
    super.key,
    this.onPressed,
    this.onLongPressed,
    this.useBackground = true,
  });

  factory _ButtonComponent.doubleZero({
    required void Function(String) onPressed,
  }) {
    const zero = '00';
    return _ButtonComponent._(
      key: const ValueKey(zero),
      onPressed: () {
        onPressed(zero);
        HapticFeedback.lightImpact().ignore();
      },
      child: (context) => const AppTextComponent.headlineLarge(
        zero,
        textAlign: TextAlign.center,
      ),
    );
  }

  factory _ButtonComponent.digit({
    required int value,
    required void Function(String) onPressed,
  }) {
    return _ButtonComponent._(
      key: ObjectKey(value),
      onPressed: () {
        onPressed(value.toString());
        HapticFeedback.lightImpact().ignore();
      },
      child: (context) => AppTextComponent.headlineLarge(
        value.toString(),
        textAlign: TextAlign.center,
      ),
    );
  }

  factory _ButtonComponent.backspace({
    required VoidCallback onPressed,
    required VoidCallback onLongPressed,
  }) {
    return _ButtonComponent._(
      key: const Key('backspace'),
      onPressed: () {
        onPressed();
        HapticFeedback.heavyImpact().ignore();
      },
      onLongPressed: () {
        onLongPressed();
        HapticFeedback.vibrate().ignore();
      },
      useBackground: false,
      child: (_) => Assets.icons.keyboardReturn2.svg(
        height: AppSizes.f.s32,
        width: AppSizes.f.s32,
      ),
    );
  }

  factory _ButtonComponent.emptyOr({
    Widget Function(BuildContext)? child,
    VoidCallback? onPressed,
  }) {
    return _ButtonComponent._(
      key: const Key('empty'),
      onPressed: onPressed,
      child: child ?? (_) => const SizedBox(),
    );
  }

  final Widget Function(BuildContext) child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final bool useBackground;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: AppSizes.w.s96,
      height: AppSizes.h.s56,
      child: Material(
        shape: const StadiumBorder(),
        color: Colors.transparent,
        child: InkWell(
          customBorder: const StadiumBorder(),
          onTap: onPressed,
          onLongPress: onLongPressed,
          child: Align(child: child(context)),
        ),
      ),
    );
  }
}
