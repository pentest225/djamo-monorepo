import 'package:app_ui/src/components/buttons/buttons.dart';
import 'package:app_ui/src/components/texts/texts.dart';
import 'package:app_ui/src/core/core.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_builder.dart';

abstract class AppSectionLabel extends StatelessWidget {
  const AppSectionLabel({
    required this.label,
    this.actionLabel,
    this.actionIcon,
    this.description,
    super.key,
    this.onActionPressed,
    this.customAction,
  });

  const factory AppSectionLabel.small({
    required String label,
    String? actionLabel,
    AppAssetBuilder? actionIcon,
    String description,
    VoidCallback? onActionPressed,
    Widget? customAction,
    Key? key,
  }) = _Small;

  const factory AppSectionLabel.large({
    required String label,
    String? actionLabel,
    AppAssetBuilder? actionIcon,
    String description,
    VoidCallback? onActionPressed,
    Widget? customAction,
    Key? key,
  }) = _Large;

  final String label;
  final String? description;
  final String? actionLabel;
  final AppAssetBuilder? actionIcon;
  final VoidCallback? onActionPressed;
  final Widget? customAction;
}
