part of 'app_saving_item_component.dart';

class _Challenge extends AppSavingItemComponent {
  const _Challenge({
    required super.name,
    required this.icon,
    super.amount,
    super.onPressed,
    super.horizontalPadding,
    super.isAmountVisible,
  });

  final AppAssetBuilder icon;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      name: name,
      amount: amount,
      onPressed: onPressed,
      horizontalPadding: horizontalPadding,
      isAmountVisible: isAmountVisible,
      description: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox.square(
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
          AppGaps.hor.s12,
          AppChipsComponent.inputChip(
            avatarIcon: AppAssetBuilder.svg(
              svg: Assets.icons.trophyOff,
              config: AssetBuilderConfig.svg(
                color: context.customColorScheme.content,
              ),
            ),
            labelText: context.l10n.vaultChallenge,
            selected: true,
            onSelected: (_) {},
          ),
        ],
      ),
    );
  }
}
