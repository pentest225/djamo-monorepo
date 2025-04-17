part of 'app_saving_item_component.dart';

class _Builder extends StatelessWidget {
  const _Builder({
    required this.name,
    this.amount,
    this.onPressed,
    this.horizontalPadding,
    this.description,
    this.statsIndicator,
    this.performanceIndicator,
    this.isAmountVisible = true,
    this.customAction,
  });

  final String name;
  final double? amount;
  final bool isAmountVisible;
  final VoidCallback? onPressed;
  final double? horizontalPadding;
  final Widget? description;
  final Widget? statsIndicator;
  final AppPerformanceIndicatorComponent? performanceIndicator;
  final Widget? customAction;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLowest,
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 0,
            vertical: AppSizes.h.s12,
          ),
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextComponent.titleMediumProminent(name),
                  if (description != null) ...[
                    AppGaps.ver.s4,
                    description!,
                  ],
                ],
              ),
              if (statsIndicator != null) ...[
                if (performanceIndicator == null) AppGaps.hor.s16 else AppGaps.hor.s24,
                Expanded(child: statsIndicator!),
                if (performanceIndicator == null) AppGaps.hor.s16 else AppGaps.hor.s24,
              ] else ...[
                const Spacer(),
              ],
              if (customAction != null)
                customAction!
              else
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (amount != null) ...[
                      AppBalanceTextComponent(
                        isBalanceVisible: isAmountVisible,
                        animate: false,
                        balance: ValueHistory(current: amount ?? 0, previous: amount ?? 0),
                        style: context.theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                    if (performanceIndicator != null) ...[
                      AppGaps.ver.s4,
                      performanceIndicator!,
                    ],
                    if (amount == null) ...[
                      Assets.icons.navigateNext.svg(
                        height: AppSizes.h.s24,
                        width: AppSizes.h.s24,
                      ),
                    ],
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
