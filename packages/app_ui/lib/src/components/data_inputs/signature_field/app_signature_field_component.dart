import 'dart:async';
import 'dart:ui' as ui;

import 'package:app_ui/src/components/buttons/common_buttons/app_common_button_component.dart';
import 'package:app_ui/src/components/cards/app_card_component.dart';
import 'package:app_ui/src/components/cards/app_dotted_border_container_component.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';

class AppSignatureFieldComponent extends StatefulWidget {
  const AppSignatureFieldComponent({
    super.key,
    this.onChanged,
  });

  final void Function(ui.Image?)? onChanged;

  @override
  State<AppSignatureFieldComponent> createState() => _AppSignatureFieldComponentState();
}

class _AppSignatureFieldComponentState extends State<AppSignatureFieldComponent> {
  late final GlobalKey<SignatureState> _sign;

  Timer? _debounce;

  bool _hasSignature = false;

  void _onChanged() {
    if (!_hasSignature) {
      setState(() {
        _hasSignature = true;
      });
    }
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      _sign.currentState?.getData().then((i) {
        widget.onChanged?.call(i);
      }).catchError((_) {
        widget.onChanged?.call(null);
      });
    });
  }

  void _onClear() {
    _sign.currentState?.clear();
    setState(() {
      _hasSignature = false;
    });
    widget.onChanged?.call(null);
  }

  @override
  void initState() {
    _sign = GlobalKey<SignatureState>();
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.95,
      child: AppDottedBorderContainerComponent(
        radius: AppSizes.r.s32,
        strokeWidth: AppSizes.w.custom(1),
        dashSpace: AppSizes.w.custom(4),
        dashColor: context.customColorScheme.outlineLow,
        child: Stack(
          fit: StackFit.expand,
          children: [
            AppCardComponent(
              backgroundColor: context.colorScheme.surfaceContainerLow,
              borderColor: context.colorScheme.surfaceContainerLow,
              borderRadius: AppBorderRadius.s32.all,
              content: Stack(
                fit: StackFit.expand,
                children: [
                  if (!_hasSignature) ...[
                    Align(
                      child: AppTextComponent.labelLarge(
                        context.l10n.signHere,
                        textAlign: TextAlign.center,
                        color: context.customColorScheme.contentLow,
                      ),
                    ),
                  ],
                  Signature(
                    key: _sign,
                    onSign: () {
                      _onChanged();
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: AppSizes.h.s16,
              right: AppSizes.w.s16,
              child: AppCommonButtonComponent.outlinedButton(
                icon: AppAssetBuilder.svg(svg: Assets.icons.refresh),
                label: context.l10n.restart,
                onPressed: _hasSignature ? _onClear : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
