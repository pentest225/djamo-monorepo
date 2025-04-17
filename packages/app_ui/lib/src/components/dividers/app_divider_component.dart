import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

part '_builder.dart';

abstract class AppDividerComponent extends StatelessWidget {
  const AppDividerComponent({
    super.key,
    this.indent,
    this.endIndent,
  });

  const factory AppDividerComponent.vertical({
    double? indent,
    double? endIndent,
    double? width,
  }) = _Vertical;

  const factory AppDividerComponent.horizontal({
    double? indent,
    double? endIndent,
    String? subHeaderContent,
    double? height,
  }) = _Horizontal;

  final double? indent;
  final double? endIndent;
}

class _Vertical extends AppDividerComponent {
  const _Vertical({
    super.indent,
    super.endIndent,
    this.width,
  });

  final double? width;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      isVertical: true,
      indent: indent,
      endIndent: endIndent,
      size: width,
    );
  }
}

class _Horizontal extends AppDividerComponent {
  const _Horizontal({
    super.indent,
    super.endIndent,
    this.subHeaderContent,
    this.height,
  });
  final String? subHeaderContent;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Builder(
          isVertical: false,
          indent: indent,
          endIndent: endIndent,
          size: height,
        ),
        if (subHeaderContent != null && subHeaderContent!.isNotEmpty) ...[
          AppGaps.ver.s4,
          Padding(
            padding: EdgeInsets.only(left: indent ?? 0),
            child: AppTextComponent.titleSmall(
              subHeaderContent ?? '',
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ],
    );
  }
}
