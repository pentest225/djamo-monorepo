import 'package:app_ui/src/components/buttons/common_buttons/app_common_button_component.dart';
import 'package:app_ui/src/components/cards/app_card_component.dart';
import 'package:app_ui/src/components/specific_informations/level_indicator/app_level_indicator_component.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

part '_builder.dart';
part '_cta.dart';
part '_level_indicator.dart';

abstract class AppIllustrationCardComponent extends StatelessWidget {
  const AppIllustrationCardComponent({
    required this.title,
    required this.description,
    this.isIllustrationBackgroundColored = false,
    super.key,
  });

  const factory AppIllustrationCardComponent.cta({
    required String title,
    required String description,
    required String actionLabel,
    required VoidCallback? onActionPressed,
    bool isIllustrationBackgroundColored,
    Key? key,
  }) = _CTA;

  const factory AppIllustrationCardComponent.levelIndicator({
    required String title,
    required String description,
    required int level,
    required int maxLevel,
    bool isIllustrationBackgroundColored,
    Key? key,
  }) = _LevelIndicator;

  final String title;
  final String description;
  final bool isIllustrationBackgroundColored;
}
