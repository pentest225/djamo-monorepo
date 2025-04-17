import 'package:app_ui/src/components/buttons/buttons.dart';
import 'package:app_ui/src/components/cards/app_card_component.dart';
import 'package:app_ui/src/components/specific_informations/specific_informations.dart';
import 'package:app_ui/src/components/texts/balances/app_balance_text_component.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

part '_builder.dart';
part '_challenge.dart';
part '_classic.dart';
part '_info_row.dart';
part '_joined_challenge.dart';

abstract class AppVaultBasicControlsCardComponent extends StatelessWidget {
  const AppVaultBasicControlsCardComponent({
    required this.name,
    required this.icon,
    this.balance,
    this.earnedInterestAmount,
    this.primaryActionLabel,
    this.primaryActionIcon,
    this.secondaryActionLabel,
    this.onPrimaryActionPressed,
    this.onSecondaryActionPressed,
    this.isBlocked = false,
    this.isBalanceVisible = true,
    this.hideSecondaryAction = true,
    this.hideInterestSection = false,
    this.onBlockPressed,
    this.canBeBlocked = false,
    this.blockedUntil,
    this.onMoreInfoOnInterestPressed,
    super.key,
  });

  //classic
  const factory AppVaultBasicControlsCardComponent.classic({
    required String name,
    required ValueHistory<num> balance,
    required AppAssetBuilder icon,
    required VoidCallback? onPrimaryActionPressed,
    ValueHistory<num>? earnedInterestAmount,
    String? primaryActionLabel,
    AppAssetBuilder? primaryActionIcon,
    String? secondaryActionLabel,
    VoidCallback? onSecondaryActionPressed,
    bool isBlocked,
    bool hideSecondaryAction,
    bool hideInterestSection,
    bool isBalanceVisible,
    bool canBeBlocked,
    VoidCallback? onBlockPressed,
    VoidCallback? onMoreInfoOnInterestPressed,
    DateTime? blockedUntil,
    Key? key,
  }) = _Classic;

  //challenge
  const factory AppVaultBasicControlsCardComponent.challenge({
    required String name,
    required double targetAmount,
    required AppAssetBuilder icon,
    required VoidCallback? onPrimaryActionPressed,
    String? primaryActionLabel,
    bool isBlocked,
    Key? key,
  }) = _Challenge;

  //joined challenge
  const factory AppVaultBasicControlsCardComponent.joinedChallenge({
    required String name,
    required ValueHistory<num> balance,
    required AppAssetBuilder icon,
    required VoidCallback? onPrimaryActionPressed,
    required int participants,
    required int remainingDays,
    required int objectivesReached,
    ValueHistory<num>? earnedInterestAmount,
    String? primaryActionLabel,
    String? secondaryActionLabel,
    VoidCallback? onSecondaryActionPressed,
    VoidCallback? onMoreInfoOnInterestPressed,
    bool isBlocked,
    bool isBalanceVisible,
    bool hideSecondaryAction,
    bool hideInterestSection,
    DateTime? blockedUntil,
    Key? key,
  }) = _JoinedChallenge;

  final String name;
  final ValueHistory<num>? balance;
  final ValueHistory<num>? earnedInterestAmount;
  final AppAssetBuilder icon;
  final String? primaryActionLabel;
  final AppAssetBuilder? primaryActionIcon;
  final String? secondaryActionLabel;
  final VoidCallback? onPrimaryActionPressed;
  final VoidCallback? onSecondaryActionPressed;
  final bool canBeBlocked;
  final bool isBlocked;
  final bool isBalanceVisible;
  final bool hideSecondaryAction;
  final bool hideInterestSection;
  final VoidCallback? onBlockPressed;
  final VoidCallback? onMoreInfoOnInterestPressed;
  final DateTime? blockedUntil;
}
