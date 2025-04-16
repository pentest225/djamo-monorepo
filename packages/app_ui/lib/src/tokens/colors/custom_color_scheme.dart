import 'package:app_ui/src/tokens/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
final class CustomColorScheme {
  const CustomColorScheme();

  Color get pageBackground {
    return AppColors.primary.p95;
  }

  Color get primaryContainerLow {
    return AppColors.primary.p95;
  }

  Color get primaryContainerLowest {
    return AppColors.primary.p100;
  }

  Color get primaryCardOutline {
    return AppColors.primary.p90;
  }

  Color get secondaryCardOutline {
    return AppColors.secondary.p90;
  }

  Color get tertiaryCardOutline {
    return AppColors.tertiary.p90;
  }

  Color get errorCardOutline {
    return AppColors.error.p90;
  }

  Color get outlineLow {
    return AppColors.neutral.p80;
  }

  Color get outlineLowest {
    return AppColors.neutral.p95;
  }

  //CONTENT
  Color get content {
    return AppColors.neutral.p10;
  }

  Color get contentLow {
    return AppColors.neutral.p30;
  }

  Color get contentLowest {
    return AppColors.neutral.p50;
  }
}
