import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

part '_detail_list_item_builder.dart';

abstract class AppDetailListItemComponent extends StatelessWidget {
  const AppDetailListItemComponent({
    required this.label,
    required this.value,
    this.valueColor,
    this.foregroundColor,
    this.isValueSelectable = false,
    this.labelIcon,
    this.valueMaxLines,
    this.valueOverflow,
    this.labelMaxLines,
    this.labelOverflow,
    super.key,
  });

  const factory AppDetailListItemComponent.medium({
    required String label,
    required String value,
    Color? valueColor,
    bool? isValueSelectable,
    int? valueMaxLines,
    TextOverflow? valueOverflow,
    AppAssetBuilder? labelIcon,
    Color? foregroundColor,
    int? labelMaxLines,
    TextOverflow? labelOverflow,
    Key? key,
  }) = _Medium;

  const factory AppDetailListItemComponent.prominent({
    required String label,
    required String value,
    Color? valueColor,
    bool? isValueSelectable,
    int? valueMaxLines,
    TextOverflow? valueOverflow,
    AppAssetBuilder? labelIcon,
    Color? foregroundColor,
    int? labelMaxLines,
    TextOverflow? labelOverflow,
    Key? key,
  }) = _Prominent;

  final String label;
  final String value;
  final Color? valueColor;
  final Color? foregroundColor;
  final bool? isValueSelectable;
  final int? valueMaxLines;
  final TextOverflow? valueOverflow;
  final int? labelMaxLines;
  final TextOverflow? labelOverflow;
  final AppAssetBuilder? labelIcon;
}
