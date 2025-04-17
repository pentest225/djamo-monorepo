part of 'app_vault_basic_controls_card_component.dart';

class _JoinedChallenge extends AppVaultBasicControlsCardComponent {
  const _JoinedChallenge({
    required super.name,
    required super.balance,
    required super.icon,
    required super.onPrimaryActionPressed,
    required this.participants,
    required this.remainingDays,
    required this.objectivesReached,
    super.earnedInterestAmount,
    super.onMoreInfoOnInterestPressed,
    super.primaryActionLabel,
    super.secondaryActionLabel,
    super.onSecondaryActionPressed,
    super.blockedUntil,
    super.isBlocked = false,
    super.isBalanceVisible = true,
    super.hideSecondaryAction = false,
    super.hideInterestSection = false,
    super.key,
  });

  final int participants;
  final int remainingDays;
  final int objectivesReached;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      icon: icon,
      info: [
        _InfoRow(
          value: name,
          customContent: AppBalanceTextComponent(
            balance: balance ?? const ValueHistory(current: 0, previous: 0),
            isBalanceVisible: isBalanceVisible,
          ),
        ),
      ],
      middle: Row(
        children: [
          Expanded(
            child: AppStatsItemComponent(
              icon: AppAssetBuilder.svg(svg: Assets.icons.members),
              label: context.l10n.participants,
              content: participants.toString(),
            ),
          ),
          AppGaps.hor.s8,
          Expanded(
            child: AppStatsItemComponent(
              icon: AppAssetBuilder.svg(svg: Assets.icons.trophyOff),
              label: context.l10n.objectivesReached,
              content: objectivesReached.toString(),
            ),
          ),
          AppGaps.hor.s8,
          Expanded(
            child: AppStatsItemComponent(
              icon: AppAssetBuilder.svg(svg: Assets.icons.today),
              label: context.l10n.daysRemaining,
              content: remainingDays.toString(),
            ),
          ),
        ],
      ),
      isBlocked: isBlocked,
      blockedUntil: blockedUntil,
      isBalanceVisible: isBalanceVisible,
      hideInterestSection: hideInterestSection,
      earnedInterestAmount: earnedInterestAmount,
      onMoreInfoOnInterestPressed: onMoreInfoOnInterestPressed,
      primaryAction: AppCommonButtonComponent.filledButton(
        fullMaxWidth: true,
        label: primaryActionLabel ?? context.l10n.addMoney,
        onPressed: onPrimaryActionPressed,
        icon: AppAssetBuilder.svg(svg: Assets.icons.add),
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
