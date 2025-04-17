part of 'app_transaction_list_item_component.dart';

enum _TransactionStatus {
  pending,
  frozen,
  completed,
  failed,
  ;

  String get key {
    return switch (this) {
      _TransactionStatus.pending => 'pending',
      _TransactionStatus.frozen => 'frozen',
      _TransactionStatus.completed => 'completed',
      _TransactionStatus.failed => 'failed',
    };
  }

  bool get isPending => this == _TransactionStatus.pending;

  bool get isCompleted => this == _TransactionStatus.completed;

  bool get isFailed => this == _TransactionStatus.failed;

  bool get isFrozen => this == _TransactionStatus.frozen;
}

class _Builder extends StatelessWidget {
  const _Builder({
    required this.label,
    required this.tag,
    required this.amount,
    required this.date,
    required this.isCredit,
    required this.status,
    this.icon,
    this.customIcon,
    this.horizontalPadding,
    this.onPressed,
    this.labelMaxLines = 1,
  });

  final AppAssetBuilder? icon;
  final Widget? customIcon;
  final String label;
  final int labelMaxLines;
  final String tag;
  final double amount;
  final DateTime? date;
  final bool? isCredit;
  final _TransactionStatus status;
  final double? horizontalPadding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: AppPaddings.s16.vertical.copyWith(
              left: horizontalPadding,
              right: horizontalPadding,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox.square(
                  dimension: AppSizes.h.s40,
                  child: Align(
                    child: customIcon ??
                        icon?.mayOverrideConfig(
                          config: AssetBuilderConfig.image(
                            height: AppSizes.h.s40,
                            width: AppSizes.h.s40,
                          ),
                        ),
                  ),
                ),
                AppGaps.hor.s12,
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextComponent.titleMedium(
                        label,
                        maxLines: labelMaxLines,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (tag.isNotEmpty) ...[
                        AppGaps.ver.s4,
                        AppAssistiveChipWidget(text: tag),
                      ],
                    ],
                  ),
                ),
                AppGaps.hor.s16,
                _StateIndicator(
                  amount: amount,
                  isCredit: isCredit,
                  status: status,
                  date: date,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _StateIndicator extends StatelessWidget {
  const _StateIndicator({
    required this.amount,
    required this.isCredit,
    required this.status,
    required this.date,
  });

  final double amount;
  final bool? isCredit;
  final _TransactionStatus status;
  final DateTime? date;

  @override
  Widget build(BuildContext context) {
    final isCurrentYear = date?.year == DateTime.now().year;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AppTextComponent.titleMedium(
              key: Key('AMOUNT_$amount'),
              useReturnValue(() {
                final a = amount.toCurrency(context);
                if (isCredit == null) return a;
                if (isCredit!) return '+$a';
                return '-$a';
              }),
              color: switch (status) {
                _TransactionStatus.pending || _TransactionStatus.failed || _TransactionStatus.frozen => context.customColorScheme.contentLowest,
                _ => useReturnValue(() {
                    if (isCredit == null) return context.colorScheme.onSurface;
                    if (isCredit!) return context.colorScheme.secondary;
                    return context.colorScheme.onSurface;
                  })
              },
              textAlign: TextAlign.end,
            ),
            if (status.isCompleted) ...[
              AppGaps.ver.s8,
              AppTextComponent.labelSmall(
                "${switch (isCurrentYear) {
                  false => date.formatToPattern(context, pattern: 'yMMMd'),
                  _ => date.formatToPattern(context, pattern: 'MMMd'),
                }} - ${date.formatToPattern(context, pattern: 'Hm')}",
                color: context.customColorScheme.contentLowest,
                textAlign: TextAlign.end,
              ),
            ] else if (status.isPending || status.isFrozen) ...[
              AppGaps.ver.s8,
              if (status.isPending)
                const SizedBox()
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Assets.icons.hourglass.svg(
                      height: AppSizes.h.s12,
                      width: AppSizes.h.s12,
                      colorFilter: context.customColorScheme.contentLowest.toSrcMode(),
                    ),
                    AppGaps.hor.s4,
                    AppTextComponent.labelSmall(
                      context.l10n.transactionStatusLabel(status.key),
                      textAlign: TextAlign.end,
                      color: context.customColorScheme.contentLowest,
                    ),
                  ],
                ),
            ] else ...[
              AppGaps.ver.s8,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Assets.icons.cancel.svg(
                    height: AppSizes.h.s12,
                    width: AppSizes.h.s12,
                    colorFilter: context.colorScheme.error.toSrcMode(),
                  ),
                  AppGaps.hor.s4,
                  AppTextComponent.labelSmall(
                    context.l10n.error,
                    textAlign: TextAlign.end,
                    color: context.colorScheme.error,
                  ),
                ],
              ),
            ],
          ],
        ),
        AppGaps.hor.s10,
        Align(
          alignment: Alignment.topRight,
          child: Assets.icons.navigateNext.svg(
            height: AppSizes.h.s24,
            width: AppSizes.h.s24,
          ),
        ),
      ],
    );
  }
}
