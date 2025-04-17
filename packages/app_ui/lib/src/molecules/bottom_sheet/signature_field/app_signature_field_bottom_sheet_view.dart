import 'dart:ui' as ui;

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

Future<ui.Image?> useAppSignatureFieldBottomSheetView(
  BuildContext context, {
  required String title,
  String? ctaTitle,
}) {
  return useAppShowModalBottomSheet<ui.Image>(
    context,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: 'SIGNATURE_FIELD'),
    builder: (context) {
      return AppSignatureFieldBottomSheetView(
        title: title,
        onConfirm: (image) {
          useAppPopModalBottomSheet(context, result: image).ignore();
        },
        ctaTitle: ctaTitle,
      );
    },
  );
}

class AppSignatureFieldBottomSheetView extends StatefulWidget {
  const AppSignatureFieldBottomSheetView({
    required this.title, required this.onConfirm, super.key,
    this.ctaTitle,
  });

  final String title;
  final String? ctaTitle;
  final void Function(ui.Image) onConfirm;

  @override
  State<AppSignatureFieldBottomSheetView> createState() => _AppSignatureFieldBottomSheetViewState();
}

class _AppSignatureFieldBottomSheetViewState extends State<AppSignatureFieldBottomSheetView> {
  ui.Image? _signature;

  bool get _hasSignature => _signature != null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppPaddings.s24.horizontal.copyWith(
          top: AppSizes.h.s16,
          bottom: AppSizes.h.s16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.title.isNotEmpty) ...[
              AppTextComponent.titleLargeProminent(
                widget.title,
                textAlign: TextAlign.center,
              ),
              AppGaps.ver.s24,
            ],
            AppSignatureFieldComponent(
              onChanged: (image) {
                setState(() {
                  _signature = image;
                });
              },
            ),
            AppGaps.ver.s24,
            AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta(
              label: widget.ctaTitle ?? context.l10n.confirm,
              onPressed: _hasSignature
                  ? () {
                      widget.onConfirm(_signature!);
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
