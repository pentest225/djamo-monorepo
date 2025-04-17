import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/enums/enums.dart';
import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/core/hooks/hooks.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/modules/common/atoms/app_assistive_chip_widget.dart';
import 'package:app_ui/src/tokens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part '_builder.dart';
part '_completed.dart';
part '_failed.dart';
part '_frozen.dart';
part '_pending.dart';

abstract class AppTransactionListItemComponent extends StatelessWidget {
  const AppTransactionListItemComponent({
    required this.label,
    required this.tag,
    required this.amount,
    required this.date,
    required this.isCredit,
    this.icon,
    this.customIcon,
    this.onPressed,
    this.horizontalPadding,
    this.labelMaxLines = 1,
    super.key,
  });

  factory AppTransactionListItemComponent.resolve({
    required UITransactionStatusEnum status,
    required String label,
    required String tag,
    required double amount,
    required DateTime? date,
    required bool? isCredit,
    AppAssetBuilder? icon,
    Widget? customIcon,
    VoidCallback? onPressed,
    double? horizontalPadding,
    Key? key,
    int labelMaxLines = 1,
  }) {
    return switch (status) {
      UITransactionStatusEnum.completed => AppTransactionListItemComponent.completed(
          icon: icon,
          customIcon: customIcon,
          label: label,
          labelMaxLines: labelMaxLines,
          tag: tag,
          amount: amount,
          date: date,
          isCredit: isCredit,
          onPressed: onPressed,
          horizontalPadding: horizontalPadding,
          key: key,
        ),
      UITransactionStatusEnum.failed => AppTransactionListItemComponent.failed(
          icon: icon,
          customIcon: customIcon,
          label: label,
          labelMaxLines: labelMaxLines,
          tag: tag,
          amount: amount,
          date: date,
          isCredit: isCredit,
          onPressed: onPressed,
          horizontalPadding: horizontalPadding,
          key: key,
        ),
      UITransactionStatusEnum.frozen => AppTransactionListItemComponent.frozen(
          icon: icon,
          customIcon: customIcon,
          label: label,
          labelMaxLines: labelMaxLines,
          tag: tag,
          amount: amount,
          date: date,
          isCredit: isCredit,
          onPressed: onPressed,
          horizontalPadding: horizontalPadding,
          key: key,
        ),
      UITransactionStatusEnum.pending => AppTransactionListItemComponent.pending(
          icon: icon,
          customIcon: customIcon,
          label: label,
          labelMaxLines: labelMaxLines,
          tag: tag,
          amount: amount,
          date: date,
          isCredit: isCredit,
          onPressed: onPressed,
          horizontalPadding: horizontalPadding,
          key: key,
        ),
    };
  }

  @internal
  const factory AppTransactionListItemComponent.completed({
    required String label,
    required String tag,
    required double amount,
    required DateTime? date,
    required bool? isCredit,
    AppAssetBuilder? icon,
    Widget? customIcon,
    int labelMaxLines,
    VoidCallback? onPressed,
    double? horizontalPadding,
    Key? key,
  }) = _Completed;

  @internal
  const factory AppTransactionListItemComponent.failed({
    required String label,
    required String tag,
    required double amount,
    required DateTime? date,
    required bool? isCredit,
    AppAssetBuilder? icon,
    Widget? customIcon,
    int labelMaxLines,
    VoidCallback? onPressed,
    double? horizontalPadding,
    Key? key,
  }) = _Failed;

  @internal
  const factory AppTransactionListItemComponent.frozen({
    required String label,
    required String tag,
    required double amount,
    required DateTime? date,
    required bool? isCredit,
    AppAssetBuilder? icon,
    Widget? customIcon,
    int labelMaxLines,
    VoidCallback? onPressed,
    double? horizontalPadding,
    Key? key,
  }) = _Frozen;

  @internal
  const factory AppTransactionListItemComponent.pending({
    required String label,
    required String tag,
    required double amount,
    required DateTime? date,
    required bool? isCredit,
    AppAssetBuilder? icon,
    Widget? customIcon,
    int labelMaxLines,
    VoidCallback? onPressed,
    double? horizontalPadding,
    Key? key,
  }) = _Pending;

  ///Prefer using [AppAssetBuilder.image] to build the icon
  final AppAssetBuilder? icon;
  final Widget? customIcon;
  final String label;
  final String tag;
  final double amount;
  final DateTime? date;
  final bool? isCredit;
  final VoidCallback? onPressed;
  final double? horizontalPadding;
  final int labelMaxLines;
}
