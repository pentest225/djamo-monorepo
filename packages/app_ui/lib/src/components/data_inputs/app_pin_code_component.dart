import 'dart:async';

import 'package:app_ui/app_ui.dart';
import 'package:app_ui/src/core/hooks/hooks.dart';
import 'package:flutter/material.dart';

///
class AppPinCodeComponent extends StatefulWidget {
  ///
  const AppPinCodeComponent({
    required TextEditingController controller,
    super.key,
    this.inputLength = 5,
    this.useObscuringTransition = false,
    this.enabled = true,
    this.supportingText,
    this.errMessage,
  }) : _controller = controller;

  final TextEditingController _controller;
  final bool useObscuringTransition;
  final bool enabled;
  final int inputLength;
  final String? supportingText;
  final String? errMessage;

  @override
  State<AppPinCodeComponent> createState() => _AppPinCodeComponentState();
}

class _AppPinCodeComponentState extends State<AppPinCodeComponent> {
  String? _err;

  @override
  void initState() {
    _err = widget.errMessage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: AppSizes.h.s56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < widget.inputLength; i++) ...[
                _Dot(
                  index: i,
                  enabled: widget.enabled,
                  controller: widget._controller,
                  useObscuringTransition: widget.useObscuringTransition,
                  inputLength: widget.inputLength,
                  hasErr: _err != null,
                ),
              ],
            ],
          ),
        ),
        if (_err != null && _err!.isNotEmpty) ...[
          AppTextComponent.bodySmall(
            _err ?? '',
            color: context.theme.colorScheme.error,
            textAlign: TextAlign.center,
          ),
        ] else if (widget.supportingText != null && widget.supportingText!.isNotEmpty) ...[
          AppTextComponent.bodySmall(
            widget.supportingText!,
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}

class _Dot extends StatefulWidget {
  const _Dot({
    required this.index,
    required this.controller,
    required this.enabled,
    required this.hasErr,
    required this.useObscuringTransition,
    required this.inputLength,
  });

  final int index;
  final TextEditingController controller;
  final bool useObscuringTransition;
  final bool enabled;
  final bool hasErr;
  final int inputLength;

  @override
  State<_Dot> createState() => _DotState();
}

class _DotState extends State<_Dot> {
  Timer? _debounce;
  bool _obscured = false;
  String _input = '';

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      if (!mounted) return;
      final text = widget.controller.text;
      if (text.isEmpty) {
        setState(() {
          _input = '';
          _obscured = false;
        });
        return;
      }
      final e = text.trim().split('').elementAtOrNull(widget.index);
      if (e == null || e.isEmpty) {
        setState(() {
          _input = '';
          _obscured = false;
        });
        return;
      }
      setState(() {
        _input = e;
      });
      _obscure(text);
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    widget.controller.removeListener(() {});
    super.dispose();
  }

  void _obscure(String incomingCode) {
    final duration = widget.useObscuringTransition ? const Duration(milliseconds: 600) : const Duration(milliseconds: 150);
    final isLastField = widget.inputLength == widget.index + 1;
    if (isLastField || !widget.useObscuringTransition) {
      if (_debounce?.isActive ?? false) _debounce?.cancel();
      _debounce = Timer(duration, () {
        setState(() {
          _obscured = true;
        });
      });
      return;
    }
    final next = incomingCode.trim().split('').elementAtOrNull(widget.index + 1);
    if (next == null || next.isEmpty) {
      return;
    }
    setState(() {
      _obscured = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final noneColor = useReturnValue(() {
      if (widget.hasErr) return context.theme.colorScheme.error;
      if (widget.enabled) return context.customColorScheme.contentLowest;
      return context.colorScheme.onSurface.withOpacity(.38);
    });
    return SizedBox(
      width: AppSizes.w.s32,
      child: Builder(
        builder: (_) {
          if (!widget.useObscuringTransition) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: AppSizes.h.s12,
              width: AppSizes.h.s12,
              curve: Curves.decelerate,
              decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: _obscured
                    ? widget.hasErr
                        ? context.colorScheme.error
                        : context.theme.colorScheme.primary
                    : noneColor,
              ),
            );
          }
          if (_shouldObscure) {
            return FadeInUp(
              key: ObjectKey(_obscured),
              from: 8,
              duration: const Duration(milliseconds: 200),
              delay: const Duration(milliseconds: 80),
              child: Container(
                height: AppSizes.h.s12,
                width: AppSizes.h.s12,
                decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  color: widget.hasErr ? context.colorScheme.error : context.colorScheme.primary,
                ),
              ),
            );
          }
          if (_input.isEmpty) {
            return FadeInUp(
              key: ObjectKey(_obscured),
              from: 25,
              duration: const Duration(milliseconds: 200),
              child: Container(
                height: AppSizes.h.s12,
                width: AppSizes.h.s12,
                decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  color: noneColor,
                ),
              ),
            );
          }
          return FadeInUp(
            key: ObjectKey(_input),
            from: 15,
            duration: const Duration(milliseconds: 200),
            child: Align(
              child: Text(
                _input,
                style: context.theme.textTheme.headlineSmall?.copyWith(
                  fontSize: AppSizes.f.s32,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  bool get _shouldObscure {
    return _obscured && (_input.isNotEmpty);
  }
}
