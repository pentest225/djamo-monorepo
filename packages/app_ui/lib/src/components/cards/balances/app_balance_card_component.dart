import 'package:app_ui/src/components/buttons/common_buttons/app_common_button_component.dart';
import 'package:app_ui/src/components/specific_informations/specific_informations.dart';
import 'package:app_ui/src/components/texts/balances/app_balance_text_component.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/core.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

part '_builder.dart';
part '_card_account.dart';
part '_invest_account.dart';
part '_main_account_balance.dart';
part '_vault_account.dart';

abstract class AppBalanceCardComponent extends StatelessWidget {
  const AppBalanceCardComponent({
    required this.balance,
    this.isBalanceVisible = false,
    this.showToggleVisibilityIcon = false,
    this.isMini = false,
    this.name,
    this.onPressed,
    this.trailing,
    this.animationDuration,
    this.locale,
    this.onBalanceVisibilityChanged,
    super.key,
  });

  const factory AppBalanceCardComponent.main({
    required ValueHistory<num> balance,
    bool isMini,
    String? name,
    bool isBalanceVisible,
    bool showToggleVisibilityIcon,
    ValueChanged<bool> onBalanceVisibilityChanged,
    VoidCallback? onPressed,
    VoidCallback? onDepositPressed,
    Widget? trailing,
    VoidCallback? onQrCodePressed,
    String? qrCodeData,
    Duration? animationDuration,
    Locale? locale,
    Key? key,
  }) = _MainAccountBalance;

  const factory AppBalanceCardComponent.card({
    required ValueHistory<num> balance,
    bool isMini,
    String? name,
    bool isBalanceVisible,
    bool showToggleVisibilityIcon,
    ValueChanged<bool> onBalanceVisibilityChanged,
    VoidCallback? onPressed,
    Widget? trailing,
    Duration? animationDuration,
    Locale? locale,
    Key? key,
  }) = _CardAccount;

  const factory AppBalanceCardComponent.vault({
    required ValueHistory<num> balance,
    bool isMini,
    String? name,
    bool isBalanceVisible,
    bool showToggleVisibilityIcon,
    ValueChanged<bool> onBalanceVisibilityChanged,
    VoidCallback? onPressed,
    VoidCallback? onCTAPressed,
    Widget? trailing,
    Duration? animationDuration,
    Locale? locale,
    ValueHistory<num>? interestAmount,
    ValueHistory<num>? interestPercentage,
    bool showCTA,
    Key? key,
  }) = _VaultAccount;

  const factory AppBalanceCardComponent.invest({
    required ValueHistory<num> balance,
    bool isMini,
    String? name,
    bool isBalanceVisible,
    bool showToggleVisibilityIcon,
    ValueChanged<bool> onBalanceVisibilityChanged,
    VoidCallback? onPressed,
    Widget? trailing,
    Duration? animationDuration,
    Locale? locale,
    ValueHistory<num>? interestAmount,
    ValueHistory<num>? interestPercentage,
    bool showCTA,
    Key? key,
  }) = _InvestAccount;

  final ValueHistory<num> balance;
  final String? name;
  final bool isBalanceVisible;
  final bool showToggleVisibilityIcon;
  final VoidCallback? onPressed;
  final ValueChanged<bool>? onBalanceVisibilityChanged;
  final Widget? trailing;
  final Duration? animationDuration;
  final Locale? locale;
  final bool isMini;
}
