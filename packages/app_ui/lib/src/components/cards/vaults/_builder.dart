part of 'app_vault_basic_controls_card_component.dart';

class _Builder extends StatelessWidget {
  const _Builder({
    required this.icon,
    required this.primaryAction,
    required this.info,
    required this.isBlocked,
    required this.isBalanceVisible,
    this.secondaryAction,
    this.canBeBlocked = false,
    this.middle,
    this.onBlockPressed,
    this.blockedUntil,
    this.earnedInterestAmount,
    this.onMoreInfoOnInterestPressed,
    this.hideInterestSection = false,
  });

  final AppAssetBuilder icon;
  final Widget primaryAction;
  final ValueHistory<num>? earnedInterestAmount;
  final List<_InfoRow> info;
  final Widget? secondaryAction;
  final bool canBeBlocked;
  final bool isBlocked;
  final bool isBalanceVisible;
  final bool hideInterestSection;
  final Widget? middle;
  final VoidCallback? onBlockPressed;
  final DateTime? blockedUntil;
  final VoidCallback? onMoreInfoOnInterestPressed;

  @override
  Widget build(BuildContext context) {
    return AppCardComponent(
      backgroundColor: context.colorScheme.surfaceContainerLow,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.square(
                dimension: AppSizes.h.custom(54),
                child: Align(
                  child: icon.mayOverrideConfig(
                    config: AssetBuilderConfig.svg(
                      height: AppSizes.h.custom(54),
                      width: AppSizes.h.custom(54),
                    )
                        .$image(
                          height: AppSizes.h.custom(54),
                          width: AppSizes.h.custom(54),
                          fit: BoxFit.contain,
                        )
                        .$lottie(
                          height: AppSizes.h.custom(54),
                          width: AppSizes.h.custom(54),
                          fit: BoxFit.contain,
                        )
                        .$svg(
                          fit: BoxFit.contain,
                          height: AppSizes.h.custom(54),
                          width: AppSizes.h.custom(54),
                        )
                        .$icon(
                          size: AppSizes.f.custom(54),
                        ),
                  ),
                ),
              ),
              AppGaps.hor.s16,
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < info.length; i++) ...[
                      info[i],
                      if (i != info.length - 1) ...[
                        AppGaps.ver.s8,
                      ],
                    ],
                    if (!hideInterestSection) ...[
                      AppGaps.ver.custom(14),
                      AppInterestSectionComponent(
                        isVisible: isBalanceVisible,
                        //label: primaryActionLabel ?? context.l10n.performance,
                        isNegative: earnedInterestAmount?.current.isNegative ?? false,
                        interestAmount: earnedInterestAmount,
                        onInfoPressed: onMoreInfoOnInterestPressed,
                      ),
                    ],
                  ],
                ),
              ),
              if (canBeBlocked || isBlocked) ...[
                AppGaps.hor.s16,
                _BlockedStatusComponent(
                  isBlocked: isBlocked,
                  onBlockPressed: onBlockPressed,
                  blockedUntil: blockedUntil,
                ),
              ],
            ],
          ),
          if (middle != null) ...[
            AppGaps.ver.s12,
            middle!,
            AppGaps.ver.s12,
          ] else ...[
            AppGaps.ver.s16,
          ],
          primaryAction,
          if (secondaryAction != null) ...[
            AppGaps.ver.s8,
            secondaryAction!,
          ],
        ],
      ),
    );
  }
}

class _BlockedStatusComponent extends StatelessWidget {
  const _BlockedStatusComponent({
    required this.isBlocked,
    this.blockedUntil,
    this.onBlockPressed,
  });

  final bool isBlocked;
  final DateTime? blockedUntil;
  final VoidCallback? onBlockPressed;

  @override
  Widget build(BuildContext context) {
    if (isBlocked) {
      final isCurrentYear = blockedUntil?.year == DateTime.now().year;
      return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: AppSizes.w.custom(85),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Assets.icons.lock.svg(
              height: AppSizes.h.s24,
              width: AppSizes.h.s24,
              colorFilter: context.customColorScheme.contentLowest.toSrcMode(),
            ),
            AppTextComponent.labelLarge(
              context.l10n.untilDate(blockedUntil.formatToPattern(context, pattern: isCurrentYear ? 'Md' : 'yMd')),
              color: context.customColorScheme.contentLow,
              textAlign: TextAlign.end,
            ),
          ],
        ),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppSwitchButtonComponent.basic(
          isSelected: false,
          onChanged: (_) {
            onBlockPressed?.call();
          },
        ),
        AppGaps.ver.s4,
        AppTextComponent.labelLarge(
          context.l10n.block,
          color: context.customColorScheme.contentLow,
        ),
      ],
    );
  }
}
