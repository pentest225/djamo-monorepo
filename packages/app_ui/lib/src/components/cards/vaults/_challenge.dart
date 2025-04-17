part of 'app_vault_basic_controls_card_component.dart';

class _Challenge extends AppVaultBasicControlsCardComponent {
  const _Challenge({
    required super.name,
    required super.icon,
    required this.targetAmount,
    required super.onPrimaryActionPressed,
    super.primaryActionLabel,
    super.isBlocked = false,
    super.key,
  });
  final double targetAmount;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      icon: icon,
      info: [
        _InfoRow(
          value: context.l10n.vaultChallenge,
          content: name,
        ),
        _InfoRow(
          value: context.l10n.objective,
          contentSeparator: AppGaps.ver.s4,
          content: targetAmount.toCurrency(context),
        ),
      ],
      isBlocked: isBlocked,
      isBalanceVisible: isBalanceVisible,
      hideInterestSection: true,
      primaryAction: AppCommonButtonComponent.filledButton(
        fullMaxWidth: true,
        label: primaryActionLabel ?? context.l10n.vaultJoinChallenge,
        onPressed: onPrimaryActionPressed,
      ),
    );
  }
}
