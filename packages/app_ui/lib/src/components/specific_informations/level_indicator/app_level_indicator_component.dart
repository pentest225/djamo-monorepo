import 'package:app_ui/src/components/specific_informations/level_indicator/app_level_component.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

class AppLevelIndicatorComponent extends StatelessWidget {
  const AppLevelIndicatorComponent({
    required this.level,
    required this.maxLevel,
    super.key,
  }) : assert(maxLevel >= 2, 'maxLevel must be greater than or equal to 2');

  final int level;
  final int maxLevel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < maxLevel; i++) ...[
          AppLevelComponent(isCompleted: i < level),
          if (i < maxLevel - 1) AppGaps.hor.s4,
        ],
        AppGaps.hor.s8,
        AppTextComponent.labelMedium(
          '$level/$maxLevel',
          color: context.customColorScheme.contentLowest,
        ),
      ],
    );
  }
}
