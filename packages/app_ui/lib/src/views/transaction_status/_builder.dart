part of 'app_transaction_status_view.dart';

class _Builder extends StatelessWidget {
  const _Builder({
    required this.amount,
    required this.sign,
    required this.serviceIconUrl,
    required this.operationInfo,
    required this.initialText,
    required this.accountDebitText,
    required this.completionText,
    required this.initializationDate,
    required this.accountDebitDate,
    required this.completionDate,
    required this.errorMessage,
    required this.isFailed,
    this.infoMessage,
    this.showInfoMessageOnAllSuccess = false,
    this.customInfoMessage,
    this.iconUrl,
  });

  final double amount;
  final String sign;
  final String serviceIconUrl;
  final List<_InfoSection> operationInfo;
  final String initialText;
  final String accountDebitText;
  final String completionText;
  final DateTime? initializationDate;
  final DateTime? accountDebitDate;
  final DateTime? completionDate;
  final String? errorMessage;
  final bool isFailed;
  final String? infoMessage;
  final bool showInfoMessageOnAllSuccess;
  final Widget? customInfoMessage;
  final AppAssetBuilder? iconUrl;

  @override
  Widget build(BuildContext context) {
    final count = operationInfo.length;
    final hasInfoMessage = infoMessage.orNull != null;
    final firstTwoSuccess = initializationDate != null && accountDebitDate != null;
    final allHasSucceeded = !isFailed && firstTwoSuccess && completionDate != null;
    final shouldCompletionError = isFailed && errorMessage.orNull != null && firstTwoSuccess;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _InfoSection(
                    title: context.l10n.enterAmount,
                    value: sign + amount.toCurrency(context),
                  ),
                  AppGaps.ver.s12,
                  for (int i = 0; i < count; i++) ...[
                    operationInfo[i],
                    if (i < count - 1) AppGaps.ver.s12,
                  ],
                ],
              ),
            ),
            iconUrl ??
                AppIdentityTagComponent.picture(
                  imageUrl: serviceIconUrl,
                  size: AppSizes.h.s80,
                ),
          ],
        ),
        AppGaps.ver.s20,
        _TimeLine(
          items: [
            _TimeLineItem(
              status: _getTimelineItemStatus(
                isInitial: true,
                currentTimeLineDate: initializationDate,
                isFailed: isFailed,
              ),
              label: initialText,
              value: _getValue(
                context,
                date: initializationDate,
              ),
              errorMessage: errorMessage,
            ),
            _TimeLineItem(
              status: _getTimelineItemStatus(
                currentTimeLineDate: accountDebitDate,
                previousTimeLineDate: initializationDate,
                isFailed: isFailed,
              ),
              label: accountDebitText,
              value: _getValue(
                context,
                date: accountDebitDate,
              ),
              errorMessage: errorMessage,
            ),
            _TimeLineItem(
              status: _getTimelineItemStatus(
                currentTimeLineDate: completionDate,
                previousTimeLineDate: accountDebitDate,
                isFailed: isFailed,
              ),
              label: completionText,
              value: _getValue(
                context,
                date: completionDate,
              ),
              errorMessage: errorMessage,
            ),
          ],
        ),
        AppGaps.ver.s20,
        if (shouldCompletionError) ...[
          FadeInUp(
            duration: const Duration(milliseconds: 500),
            from: 20,
            child: AppBannersComponent.error(
              contentText: errorMessage,
              showLabelButton: false,
            ),
          ),
        ] else if (customInfoMessage != null) ...[
          FadeInUp(
            duration: const Duration(milliseconds: 500),
            from: 20,
            child: customInfoMessage!,
          ),
        ] else if (!isFailed) ...[
          if (hasInfoMessage && (showInfoMessageOnAllSuccess && allHasSucceeded)) ...[
            FadeInUp(
              duration: const Duration(milliseconds: 500),
              from: 20,
              child: AppBannersComponent.success(
                contentText: infoMessage,
                showLabelButton: false,
              ),
            ),
          ] else if (hasInfoMessage && !showInfoMessageOnAllSuccess && firstTwoSuccess && completionDate == null) ...[
            FadeInUp(
              duration: const Duration(milliseconds: 500),
              from: 20,
              child: AppBannersComponent.info(
                contentText: infoMessage,
                showLabelButton: false,
              ),
            ),
          ],
        ],
      ],
    );
  }
}
