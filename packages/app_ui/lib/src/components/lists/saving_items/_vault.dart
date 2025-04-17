part of 'app_saving_item_component.dart';

class _Vault extends AppSavingItemComponent {
  const _Vault({
    required super.name,
    required this.icon,
    super.amount,
    super.onPressed,
    super.horizontalPadding,
    super.isAmountVisible,
    this.interestAmount,
  });

  final AppAssetBuilder icon;
  final ValueHistory<num>? interestAmount;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      name: name,
      amount: amount,
      onPressed: onPressed,
      horizontalPadding: horizontalPadding,
      isAmountVisible: isAmountVisible,
      customAction: amount == null
          ? AppAssetBuilder.svg(
              svg: Assets.icons.navigateNext,
              config: AssetBuilderConfig.svg(
                height: AppSizes.h.s24,
                width: AppSizes.h.s24,
              ),
            )
          : null,
      description: SizedBox.square(
        dimension: AppSizes.h.s32,
        child: Align(
          child: icon.mayOverrideConfig(
            config: AssetBuilderConfig.image(
              height: AppSizes.h.s32,
              width: AppSizes.h.s32,
            ).$svg(
              height: AppSizes.h.s32,
              width: AppSizes.h.s32,
            ),
          ),
        ),
      ),
      performanceIndicator: switch (interestAmount) {
        null => null,
        _ => AppPerformanceIndicatorComponent(
            value: interestAmount!,
            symbol: context.appUIConfig.currency.symbol,
          ),
      },
    );
  }
}
