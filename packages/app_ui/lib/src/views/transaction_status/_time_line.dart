part of 'app_transaction_status_view.dart';

class _TimeLine extends StatelessWidget {
  const _TimeLine({
    required this.items,
  });

  final List<_TimeLineItem> items;

  @override
  Widget build(BuildContext context) {
    final count = items.length;
    return RepaintBoundary(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < count; i++) ...[
            Builder(
              builder: (_) {
                final item = items[i];
                // final previousItem = i > 0 ? items[i - 1] : null;
                // final isCurrent = previousItem?.status.isCompleted ?? false;
                final status = item.status;
                final value = item.value;
                final label = item.label;
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox.square(
                      dimension: AppSizes.h.s24,
                      child: Align(
                        child: switch (status) {
                          _TimeLineItemStatus.pending => Padding(
                              padding: AppPaddings.custom(2).all,
                              child: AppProgressIndicatorComponent.circular(
                                strokeWidth: AppSizes.w.custom(1.85),
                              ),
                            ),
                          _ => AppAssetBuilder.svg(
                              svg: switch (status) {
                                _TimeLineItemStatus.completed => Assets.icons.checkCircle,
                                _TimeLineItemStatus.failed => Assets.icons.cancel,
                                _ => Assets.icons.radioButtonUnchecked,
                              },
                              config: AssetBuilderConfig.svg(
                                height: AppSizes.h.s24,
                                width: AppSizes.w.s24,
                                color: switch (status) {
                                  _TimeLineItemStatus.completed => context.colorScheme.secondary,
                                  _TimeLineItemStatus.failed => context.colorScheme.error,
                                  _ => context.customColorScheme.contentLowest,
                                },
                              ),
                            ),
                        },
                      ),
                    ),
                    AppGaps.hor.s8,
                    Expanded(
                      child: AppTextComponent.bodyLarge(
                        label,
                        color: !status.isCompleted ? context.customColorScheme.contentLowest : null,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    AppGaps.hor.s8,
                    AppTextComponent.bodyMedium(
                      value.orNull ?? '-',
                      textAlign: TextAlign.end,
                      color: context.customColorScheme.contentLowest,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                );
              },
            ),
            if (i < count - 1) ...[
              SizedBox(
                height: AppSizes.h.s80,
                child: Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: AppPaddings.custom(11).horizontal.copyWith(
                            top: AppSizes.h.s4,
                            bottom: AppSizes.h.s4,
                          ),
                      width: AppSizes.w.custom(2),
                      height: AppSizes.h.s80,
                      color: switch (items[i].status) {
                        _TimeLineItemStatus.completed => context.colorScheme.secondary,
                        _TimeLineItemStatus.failed => context.colorScheme.error,
                        _ => context.customColorScheme.contentLowest,
                      },
                    ),
                    if (items[i].status.isFailed && items[i].errorMessage.orNull != null) ...[
                      AppGaps.hor.s8,
                      Expanded(
                        child: AppBannersComponent.error(
                          contentText: items[i].errorMessage,
                          showLabelButton: false,
                          contentTextMaxLines: 2,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ],
        ],
      ),
    );
  }
}

enum _TimeLineItemStatus {
  notStarted,
  pending,
  completed,
  failed,
  ;

  bool get isNotStarted => this == _TimeLineItemStatus.notStarted;

  bool get isPending => this == _TimeLineItemStatus.pending;

  bool get isCompleted => this == _TimeLineItemStatus.completed;

  bool get isFailed => this == _TimeLineItemStatus.failed;
}

class _TimeLineItem extends Equatable {
  const _TimeLineItem({
    required this.status,
    required this.label,
    required this.value,
    this.errorMessage,
  });

  final _TimeLineItemStatus status;
  final String label;
  final String value;
  final String? errorMessage;

  @override
  List<Object?> get props => [status, label, value, errorMessage];
}

String _getValue(BuildContext context, {DateTime? date}) {
  if (date == null) return '-';
  if (date.isToday) return date.formatToPattern(context, pattern: 'HH:mm');
  return date.formatToPattern(context, pattern: 'dd/MM/yyyy HH:mm');
}

_TimeLineItemStatus _getTimelineItemStatus({
  DateTime? currentTimeLineDate,
  DateTime? previousTimeLineDate,
  bool isFailed = false,
  bool isInitial = false,
}) {
  if (isInitial && currentTimeLineDate == null && isFailed) return _TimeLineItemStatus.failed;
  if (isInitial && currentTimeLineDate == null) return _TimeLineItemStatus.pending;
  if (currentTimeLineDate != null) return _TimeLineItemStatus.completed;
  if (previousTimeLineDate != null && isFailed) return _TimeLineItemStatus.failed;
  if (previousTimeLineDate != null) return _TimeLineItemStatus.pending;
  return _TimeLineItemStatus.notStarted;
}
