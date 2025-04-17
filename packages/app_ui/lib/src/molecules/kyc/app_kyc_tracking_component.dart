import 'package:app_ui/src/components/specific_informations/specific_informations.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_rejected.dart';

abstract class AppKYCTrackingComponent extends StatelessWidget {
  const AppKYCTrackingComponent({
    this.onPressed,
    this.message,
    super.key,
  });

  const factory AppKYCTrackingComponent.rejected({
    VoidCallback onPressed,
    String? message,
  }) = _Rejected;

  final VoidCallback? onPressed;
  final String? message;
}
