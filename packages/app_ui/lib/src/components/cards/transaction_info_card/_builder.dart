part of 'app_transaction_info_card_component.dart';

class _MainInfoBuilder extends StatelessWidget {
  const _MainInfoBuilder({
    required this.date,
    required this.status,
    required this.fees,
    required this.amountWithoutFees,
    required this.balanceAfter,
    required this.isCredit,
    required this.showFeesDescription,
    this.additionalItems = const [],
    this.fx,
    this.originalAmount,
    this.currency,
    this.isInternationPayment = false,
  });

  final DateTime? date;
  final UITransactionStatusEnum status;
  final double? fees;
  final double? amountWithoutFees;
  final double? balanceAfter;
  final bool isCredit;
  final bool showFeesDescription;
  final String? fx;
  final String? originalAmount;
  final String? currency;
  final List<Widget> additionalItems;
  final bool isInternationPayment;

  @override
  Widget build(BuildContext context) {
    final count = additionalItems.length;
    return _CardRowList(
      items: [
        AppDetailListItemComponent.medium(
          label: context.l10n.transactionReceiptDateTimeTitle,
          value: getFormattedDate(context, date: date),
          labelMaxLines: 1,
          labelOverflow: TextOverflow.ellipsis,
        ),
        AppDetailListItemComponent.medium(
          foregroundColor: status.isCompleted ? context.colorScheme.secondary : null,
          label: context.l10n.transactionReceiptStatusTitle,
          value: context.l10n.transactionStatusLabel(status.identifier),
          valueColor: switch (status) {
            UITransactionStatusEnum.completed => context.colorScheme.secondary,
            UITransactionStatusEnum.failed || UITransactionStatusEnum.frozen => context.colorScheme.error,
            _ => context.customColorScheme.contentLowest,
          },
        ),
        if (fees != null) ...[
          if (showFeesDescription && isCredit) ...[
            _Fees.deposit(fees: fees!),
          ] else if (showFeesDescription && !isCredit) ...[
            _Fees.withdrawal(fees: fees!),
          ] else
            _Fees(fees: fees!),
        ],
        for (var i = 0; i < count; i++) ...[
          additionalItems[i],
          if (i < count - 1) AppGaps.ver.s8,
        ],
        if (amountWithoutFees != null) ...[
          AppDetailListItemComponent.medium(
            label: context.l10n.transactionReceiptAmountWithoutFeesTitle,
            value: amountWithoutFees.toCurrency(context),
          ),
        ],
        if (balanceAfter != null && status.isCompleted) ...[
          AppDetailListItemComponent.medium(
            label: context.l10n.newBalance,
            value: balanceAfter.toCurrency(context),
          ),
        ],
        if (fx.orNull != null) ...[
          if (originalAmount.orNull != null && currency.orNull != null) ...[
            AppDetailListItemComponent.medium(
              labelOverflow: TextOverflow.ellipsis,
              labelMaxLines: 1,
              label: context.l10n.amountInCurrency(currency ?? ''),
              value: originalAmount ?? '',
            ),
          ],
          AppDetailListItemComponent.medium(
            labelOverflow: TextOverflow.ellipsis,
            labelMaxLines: 1,
            label: isInternationPayment ? context.l10n.rateIncludingInternationalFees : context.l10n.rate,
            value: fx!,
          ),
        ],
      ],
    );
  }

  String getFormattedDate(BuildContext context, {DateTime? date}) {
    final d = date;
    if (d == null) {
      return '';
    }
    return "${d.formatToPattern(
      context,
      pattern: 'yMd',
    )} ${d.formatToPattern(
      context,
      pattern: 'Hm',
    )}";
  }
}

class _CardRowList extends StatelessWidget {
  const _CardRowList({
    required this.items,
    this.action,
  });

  /// mainly a list of [AppDetailListItemComponent]
  final List<Widget> items;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final count = items.length;
    return AppCardComponent(
      backgroundColor: context.customColorScheme.primaryContainerLow,
      content: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var i = 0; i < count; i++) ...[
                  items[i],
                  if (i < count - 1) AppGaps.ver.s8,
                ],
              ],
            ),
          ),
          if (action != null) ...[
            AppGaps.hor.s16,
            action!,
          ],
        ],
      ),
    );
  }
}

class _CardColItem extends StatefulWidget {
  const _CardColItem({
    required this.label,
    required this.value,
    this.isSelectable = false,
    this.onCopyPressed,
    this.borderColor,
    this.contentPadding,
  });

  final String label;
  final String value;
  final bool isSelectable;
  final VoidCallback? onCopyPressed;
  final Color? borderColor;
  final EdgeInsets? contentPadding;

  @override
  State<_CardColItem> createState() => _CardColItemState();
}

class _CardColItemState extends State<_CardColItem> {
  bool _copyPressed = false;

  @override
  Widget build(BuildContext context) {
    return AppCardComponent(
      backgroundColor: context.customColorScheme.primaryContainerLow,
      borderColor: widget.borderColor,
      contentPadding: widget.contentPadding,
      content: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextComponent.titleMedium(widget.label),
                AppGaps.ver.s8,
                if (widget.isSelectable)
                  SelectionArea(
                    child: AppTextComponent.labelLarge(
                      widget.value,
                      color: context.customColorScheme.contentLow,
                    ),
                  )
                else
                  AppTextComponent.labelLarge(
                    widget.value,
                    color: context.customColorScheme.contentLow,
                  ),
              ],
            ),
          ),
          if (widget.onCopyPressed != null) ...[
            AppGaps.hor.s16,
            AppAssetBuilder.svg(
              svg: Assets.icons.contentCopy,
              config: AssetBuilderConfig.svg(
                height: AppSizes.h.s24,
                width: AppSizes.h.s24,
                color: switch (_copyPressed) {
                  true => context.customColorScheme.contentLow,
                  _ => context.customColorScheme.content,
                },
              ),
              onTap: () {
                widget.onCopyPressed!();
                setState(() {
                  _copyPressed = true;
                  Future.delayed(const Duration(milliseconds: 200), () {
                    setState(() {
                      _copyPressed = false;
                    });
                  });
                });
              },
            ),
          ],
        ],
      ),
    );
  }
}

class _Reference extends StatefulWidget {
  const _Reference({
    required this.reference,
    this.onCopyReference,
  });

  final String reference;
  final VoidCallback? onCopyReference;

  @override
  State<_Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<_Reference> {
  bool _copyPressed = false;

  @override
  Widget build(BuildContext context) {
    return _CardRowList(
      items: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTextComponent.titleMedium(context.l10n.transactionReceiptReferenceTitle),
            AppGaps.ver.s4,
            AppTextComponent.labelLarge(
              widget.reference,
              color: context.customColorScheme.contentLow,
            ),
          ],
        ),
      ],
      action: AppAssetBuilder.svg(
        svg: Assets.icons.contentCopy,
        config: AssetBuilderConfig.svg(
          height: AppSizes.h.s24,
          width: AppSizes.h.s24,
          color: switch (_copyPressed) {
            true => context.customColorScheme.contentLow,
            _ => context.customColorScheme.content,
          },
        ),
        onTap: () {
          widget.onCopyReference?.call();
          setState(() {
            _copyPressed = true;
            Future.delayed(const Duration(milliseconds: 200), () {
              setState(() {
                _copyPressed = false;
              });
            });
          });
        },
      ),
    );
  }
}

class _Fees extends StatelessWidget {
  factory _Fees({
    required double fees,
  }) {
    return _Fees._(
      label: (context) => context.l10n.fees,
      fees: fees,
    );
  }

  const _Fees._({
    required this.label,
    required this.fees,
  });

  factory _Fees.deposit({
    required double fees,
  }) {
    return _Fees._(
      label: (context) => context.l10n.depositFeesLabel,
      fees: fees,
    );
  }

  factory _Fees.withdrawal({
    required double fees,
  }) {
    return _Fees._(
      label: (context) => context.l10n.withdrawalFees,
      fees: fees,
    );
  }

  final String Function(BuildContext) label;
  final double fees;

  @override
  Widget build(BuildContext context) {
    return AppDetailListItemComponent.medium(
      label: label(context),
      value: fees == 0 ? context.l10n.free : fees.toCurrency(context),
    );
  }
}

class _Operator extends StatelessWidget {
  const _Operator({
    required this.operator,
  });

  final String operator;

  @override
  Widget build(BuildContext context) {
    return _CardRowList(
      items: [
        AppDetailListItemComponent.medium(
          label: context.l10n.operator,
          value: operator,
        ),
      ],
    );
  }
}

/// This component is used to display a Map of info (as key value)
/// In a card.
/// It uses a [_CardRowList] with a list of [AppDetailListItemComponent] medium sized
class _MapDataInfoBuilder extends StatelessWidget {
  const _MapDataInfoBuilder({
    required this.data,
  });

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return _CardRowList(
      items: [
        for (final item in data.entries) ...[
          AppDetailListItemComponent.medium(
            label: item.key,
            value: item.value,
            labelMaxLines: 1,
            labelOverflow: TextOverflow.ellipsis,
          ),
        ],
      ],
    );
  }
}

class _ReloadCode extends StatelessWidget {
  const _ReloadCode({
    required this.codes,
    this.onCopyPressed,
  });

  final List<String> codes;
  final void Function(int index)? onCopyPressed;

  @override
  Widget build(BuildContext context) {
    if (codes.length == 1) {
      return _CardColItem(
        label: context.l10n.transactionReceiptBillReloadCodeTitle,
        value: codes.first,
        onCopyPressed: onCopyPressed != null ? () => onCopyPressed?.call(0) : null,
        isSelectable: true,
      );
    }
    return AppCardComponent(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...codes.mapIndexed((index, code) {
            return _CardColItem(
              borderColor: Colors.transparent,
              contentPadding: AppPaddings.s8.vertical,
              label: '${context.l10n.transactionReceiptBillReloadCodeTitle} ${index + 1}',
              value: codes[index],
              onCopyPressed: onCopyPressed != null ? () => onCopyPressed?.call(index) : null,
              isSelectable: true,
            );
          }),
        ],
      ),
    );
  }
}

class _Message extends StatelessWidget {
  const _Message({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return _CardColItem(
      label: context.l10n.transactionReceiptBillMessageTitle,
      value: message,
    );
  }
}
