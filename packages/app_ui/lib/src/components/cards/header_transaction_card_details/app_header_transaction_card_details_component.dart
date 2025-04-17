import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/modules/common/atoms/app_assistive_chip_widget.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_builder.dart';
part '_payment.dart';

class AppHeaderTransactionCardDetailsComponent extends StatelessWidget {
  const AppHeaderTransactionCardDetailsComponent({
    required this.amount,
    this.icon,
    this.customIcon,
    super.key,
    this.label,
    this.description,
    this.tag,
    this.isCredit = false,
    this.shouldClipOval = false,
  }) : assert(icon != null || customIcon != null, 'icon or customIcon must be provided');

  final double amount;
  final AppAssetBuilder? icon;
  final Widget? customIcon;
  final String? label;
  final String? description;
  final String? tag;
  final bool isCredit;
  final bool shouldClipOval;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      amount: amount,
      icon: icon,
      customIcon: customIcon,
      label: label,
      description: description,
      tag: tag,
      isCredit: isCredit,
      shouldClipOval: shouldClipOval,
    );
  }
}
