import 'package:app_ui/src/components/cards/cards.dart';
import 'package:app_ui/src/components/specific_informations/specific_informations.dart';
import 'package:app_ui/src/components/texts/balances/app_balance_text_component.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/config/config.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_builder.dart';
part '_challenge.dart';
part '_invest.dart';
part '_vault.dart';

abstract class AppSavingItemComponent extends StatelessWidget {
  const AppSavingItemComponent({
    required this.name,
    this.amount,
    this.onPressed,
    this.horizontalPadding,
    this.isAmountVisible = true,
    super.key,
  });

  const factory AppSavingItemComponent.vault({
    required String name,
    required AppAssetBuilder icon,
    required double amount,
    VoidCallback? onPressed,
    double? horizontalPadding,
    bool isAmountVisible,
  }) = _Vault;

  const factory AppSavingItemComponent.challenge({
    required String name,
    required AppAssetBuilder icon,
     double? amount,
    VoidCallback? onPressed,
    double? horizontalPadding,
  }) = _Vault;

  const factory AppSavingItemComponent.vaultWithInterest({
    required String name,
    required AppAssetBuilder icon,
    required double amount,
    required ValueHistory<num> interestAmount,
    VoidCallback? onPressed,
    double? horizontalPadding,
    bool isAmountVisible,
  }) = _Vault;

  //challenge
  const factory AppSavingItemComponent.joinedChallenge({
    required String name,
    required AppAssetBuilder icon,
    required double amount,
    VoidCallback? onPressed,
    double? horizontalPadding,
    bool isAmountVisible,
  }) = _Challenge;

  //invest
  const factory AppSavingItemComponent.invest({
    required String name,
    double? entryFeesPercentage,
    double? exitFeesPercentage,
    double? amount,
    ValueHistory<num>? performance,
    double? annualPerformanceObjective,
    VoidCallback? onPressed,
    double? horizontalPadding,
    bool isAmountVisible,
    AppGraphData? graphData,
    double graphMaxXAxisValue,
    double graphMaxYAxisValue,
  }) = _Invest;

  final String name;
  final double? amount;
  final VoidCallback? onPressed;
  final double? horizontalPadding;
  final bool isAmountVisible;
}
