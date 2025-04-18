import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<bool> useCopyContent(BuildContext context, {required String content, String? successMessage}) {
  return Clipboard.setData(ClipboardData(text: content)).then((e) {
    if (context.mounted) {
      useShowAppSnackBar(
        context,
        label: successMessage ?? context.l10n.copySuccessMessage,
        duration: 3,
        leadingIcon: AppAssetBuilder.svg(
          svg: Assets.icons.checkCircle,
        ),
      );
    }
    return HapticFeedback.lightImpact().then((e) => true).catchError(
          (_) => true,
        );
  }).catchError((e) {
    return false;
  });
}
