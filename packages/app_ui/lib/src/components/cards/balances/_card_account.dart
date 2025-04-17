part of 'app_balance_card_component.dart';

class _CardAccount extends AppBalanceCardComponent {
  const _CardAccount({
    required super.balance,
    super.isMini,
    super.name,
    super.isBalanceVisible,
    super.showToggleVisibilityIcon,
    super.onBalanceVisibilityChanged,
    super.onPressed,
    super.trailing,
    super.animationDuration,
    super.locale,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _Builder(
      name: name,
      icon: AppAssetBuilder.svg(svg: Assets.icons.card),
      label: context.l10n.accountCardAccountName,
      balance: balance,
      onPressed: onPressed,
      isMini: isMini,
      animationDuration: animationDuration,
      locale: locale,
      isBalanceVisible: isBalanceVisible,
      showToggleVisibilityIcon: showToggleVisibilityIcon,
      onBalanceVisibilityChanged: onBalanceVisibilityChanged,
    );
  }
}
