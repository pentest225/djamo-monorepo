part of 'app_header_transaction_card_details_component.dart';

class _Builder extends StatelessWidget {
  const _Builder({
    required this.amount,
    required this.icon,
    this.customIcon,
    this.label,
    this.description,
    this.tag,
    this.isCredit = false,
    this.shouldClipOval = false,
  });

  final double amount;
  final AppAssetBuilder? icon;
  final Widget? customIcon;
  final String? label;
  final String? description;
  final String? tag;
  final bool isCredit;
  final bool shouldClipOval;

  @override
  Widget build(BuildContext context) {
    final sign = isCredit ? '+' : '-';
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextComponent.headlineMedium(
                '$sign${amount.toCurrency(context)}',
              ),
              if (label.orNull != null) ...[
                AppTextComponent.bodyLarge(label ?? '-'),
              ],
              if (description.orNull != null) ...[
                AppTextComponent.bodySmall(
                  description ?? '-',
                ),
              ],
              if (tag.orNull != null) ...[
                AppGaps.ver.s8,
                AppAssistiveChipWidget(text: tag ?? '-'),
              ],
            ],
          ),
        ),
        AppGaps.hor.s16,
        SizedBox.square(
          dimension: AppSizes.h.s80,
          child: Align(
            child: customIcon ??
                icon?.mayOverrideConfig(
                  config: AssetBuilderConfig.image(
                    width: AppSizes.h.s80,
                    height: AppSizes.h.s80,
                    shouldClipOval: shouldClipOval,
                  ).$svg(
                    width: AppSizes.h.s80,
                    height: AppSizes.h.s80,
                    shouldClipOval: shouldClipOval,
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
