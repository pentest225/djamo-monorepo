part of 'app_balance_card_component.dart';

class _VaultAccount extends AppBalanceCardComponent {
  const _VaultAccount({
    required super.balance,
    super.isMini = false,
    super.name,
    super.isBalanceVisible,
    super.showToggleVisibilityIcon,
    super.onBalanceVisibilityChanged,
    super.onPressed,
    super.trailing,
    super.animationDuration,
    super.locale,
    super.key,
    this.onCTAPressed,
    this.interestAmount,
    this.interestPercentage,
    this.showCTA = true,
  });
  final ValueHistory<num>? interestAmount;
  final ValueHistory<num>? interestPercentage;
  final VoidCallback? onCTAPressed;
  final bool showCTA;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      name: name,
      icon: AppAssetBuilder.svg(svg: Assets.icons.vault),
      label: context.l10n.accountVaultAccountName,
      balance: balance,
      isBalanceVisible: isBalanceVisible,
      showToggleVisibilityIcon: showToggleVisibilityIcon,
      onBalanceVisibilityChanged: onBalanceVisibilityChanged,
      onPressed: onPressed,
      isMini: isMini,
      trailing: trailing,
      animationDuration: animationDuration,
      locale: locale,
      bottom: isMini || interestAmount == null
          ? null
          : AppInterestSectionComponent(
              isMini: isMini,
              isVisible: isBalanceVisible,
              isNegative: interestAmount?.current.isNegative ?? false,
              interestAmount: interestAmount,
              interestPercentage: interestPercentage,
              label: context.l10n.interestEarned,
            ),
      action: isMini || !showCTA
          ? null
          : AppCommonButtonComponent.filledButton(
              fullMaxWidth: true,
              label: context.l10n.vaultCreateVault,
              onPressed: onCTAPressed,
              icon: AppAssetBuilder.svg(svg: Assets.icons.add),
            ),
    );
  }
}
