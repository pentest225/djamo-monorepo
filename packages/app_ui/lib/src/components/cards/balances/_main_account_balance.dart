part of 'app_balance_card_component.dart';

class _MainAccountBalance extends AppBalanceCardComponent {
  const _MainAccountBalance({
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
    this.onDepositPressed,
    this.onQrCodePressed,
    this.qrCodeData,
  });

  final VoidCallback? onDepositPressed;
  final VoidCallback? onQrCodePressed;
  final String? qrCodeData;

  @override
  Widget build(BuildContext context) {
    final hasQrCode = qrCodeData != null && qrCodeData!.isNotEmpty;
    return _Builder(
      name: name,
      label: context.l10n.accountMainAccountName,
      balance: balance,
      onPressed: onPressed,
      animationDuration: animationDuration,
      locale: locale,
      isMini: isMini,
      isBalanceVisible: isBalanceVisible,
      showToggleVisibilityIcon: showToggleVisibilityIcon,
      onBalanceVisibilityChanged: onBalanceVisibilityChanged,
      action: AppCommonButtonComponent.filledButton(
        icon: AppAssetBuilder.icon(icon: Icons.add),
        label: context.l10n.depositMoney,
        onPressed: onDepositPressed,
        key: const Key('DEPOSIT_BUTTON'),
      ),
      trailing: !hasQrCode
          ? null
          : InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: onQrCodePressed,
              child: SizedBox.square(
                dimension: AppSizes.h.custom(120),
                child: Center(
                  child: Opacity(
                    opacity: .75,
                    child: PrettyQrView.data(
                      errorCorrectLevel: QrErrorCorrectLevel.H,
                      decoration: PrettyQrDecoration(
                        image: PrettyQrDecorationImage(
                          image: Assets.images.djamoLogoCircle.provider(),
                        ),
                      ),
                      data: qrCodeData ?? 'https://www.djamo.com',
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
