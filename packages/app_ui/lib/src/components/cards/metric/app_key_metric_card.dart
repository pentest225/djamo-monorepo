import 'package:app_ui/src/components/cards/app_card_component.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

part '_builder.dart';
part '_medium.dart';
part '_prominent.dart';

abstract class AppKeyMetricCard extends StatelessWidget {
  const AppKeyMetricCard({
    required this.metrics,
    this.backgroundColor,
    this.borderColor,
    super.key,
  }) : assert(metrics.length > 0 && metrics.length <= 2, 'Metrics must be between 1 and 2');

  const factory AppKeyMetricCard.medium({
    required MetricItems metrics,
    Color? backgroundColor,
    Color? borderColor,
  }) = _Medium;

  const factory AppKeyMetricCard.prominent({
    required MetricItems metrics,
    Color? backgroundColor,
    Color? borderColor,
  }) = _Prominent;

  final MetricItems metrics;
  final Color? backgroundColor;
  final Color? borderColor;
}
