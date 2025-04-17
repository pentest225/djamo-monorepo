part of 'app_order_tracking_component.dart';

class _PendingDelivery extends AppOrderTrackingComponent {
  const _PendingDelivery({
    super.onPressed,
    this.deliveryDate,
    super.message,
  });

  final DateTime? deliveryDate;

  @override
  Widget build(BuildContext context) {
    final formattedDate = deliveryDate?.formatToPattern(context, pattern: 'yMd') ?? '-';
    return AppBannersComponent.info(
      onPressed: onPressed,
      showLabelButton: false,
      title: context.l10n.yourCardWillBeDeliveredSoon,
      titleMaxLines: 1,
      contentText: context.l10n.expectedDeliveryDate('*$formattedDate*'),
      contentTextMaxLines: 2,
      customIcon: AppAssetBuilder.svg(svg: Assets.icons.bike),
      useRichTextForContent: true,
    );
  }
}
