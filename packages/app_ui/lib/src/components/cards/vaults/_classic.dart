part of 'app_vault_basic_controls_card_component.dart';

class _Classic extends AppVaultBasicControlsCardComponent {
  const _Classic({
    required super.name,
    required super.balance,
    required super.icon,
    required super.onPrimaryActionPressed,
    super.earnedInterestAmount,
    super.primaryActionLabel,
    super.primaryActionIcon,
    super.secondaryActionLabel,
    super.onSecondaryActionPressed,
    super.isBlocked = false,
    super.isBalanceVisible = true,
    super.hideSecondaryAction = false,
    super.hideInterestSection = false,
    super.canBeBlocked,
    super.onBlockPressed,
    super.blockedUntil,
    super.onMoreInfoOnInterestPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _Builder(
      icon: icon,
      blockedUntil: blockedUntil,
      canBeBlocked: canBeBlocked,
      onBlockPressed: onBlockPressed,
      info: [
        _InfoRow(
          value: name,
          customContent: AppBalanceTextComponent(
            balance: balance ?? const ValueHistory(current: 0, previous: 0),
            isBalanceVisible: isBalanceVisible,
          ),
        ),
      ],
      isBlocked: isBlocked,
      isBalanceVisible: isBalanceVisible,
      hideInterestSection: hideInterestSection,
      earnedInterestAmount: earnedInterestAmount,
      onMoreInfoOnInterestPressed: onMoreInfoOnInterestPressed,
      primaryAction: AppCommonButtonComponent.filledButton(
        fullMaxWidth: true,
        label: primaryActionLabel ?? context.l10n.addMoney,
        onPressed: onPrimaryActionPressed,
        icon: primaryActionIcon ?? AppAssetBuilder.svg(svg: Assets.icons.add),
      ),
      secondaryAction: !hideSecondaryAction
          ? AppCommonButtonComponent.outlinedButton(
              fullMaxWidth: true,
              icon: AppAssetBuilder.svg(svg: Assets.icons.checkIndeterminateSmall),
              label: secondaryActionLabel ?? context.l10n.withdrawMoney,
              onPressed: onSecondaryActionPressed,
            )
          : null,
    );
  }
}
