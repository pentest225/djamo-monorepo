part of 'app_balance_card_component.dart';

class _InvestAccount extends AppBalanceCardComponent {
  const _InvestAccount({
    required super.balance,
    super.isMini = false,
    super.name,
    super.isBalanceVisible,
    super.showToggleVisibilityIcon = true,
    super.onBalanceVisibilityChanged,
    super.onPressed,
    super.trailing,
    super.animationDuration,
    super.locale,
    super.key,
    this.interestAmount,
    this.interestPercentage,
    this.showCTA = true,
  });
  final ValueHistory<num>? interestAmount;
  final ValueHistory<num>? interestPercentage;
  final bool showCTA;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      label: name.orNull ?? context.l10n.investMyInvestmentsProducts,
      isBalanceVisible: isBalanceVisible,
      showToggleVisibilityIcon: showToggleVisibilityIcon,
      onBalanceVisibilityChanged: onBalanceVisibilityChanged,
      onPressed: onPressed,
      isMini: isMini,
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
              label: context.l10n.performance,
            ),
      balance: balance,
    );
  }
}
