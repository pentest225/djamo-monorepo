part of 'app_section_label.dart';

class _Small extends AppSectionLabel {
  const _Small({
    required super.label,
    super.actionLabel,
    super.actionIcon,
    super.description,
    super.onActionPressed,
    super.customAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextComponent.titleMediumProminent(label),
              if (description != null && description!.isNotEmpty) AppTextComponent.bodyMedium(description!),
            ],
          ),
        ),
        AppGaps.hor.s16,
        if (customAction != null)
          customAction!
        else if (actionLabel.orNull != null)
          AppCommonButtonComponent.textButton(
            label: actionLabel!,
            icon: actionIcon,
            onPressed: onActionPressed,
            contentPadding: AppPaddings.custom(2).horizontal,
          ),
      ],
    );
  }
}

class _Large extends AppSectionLabel {
  const _Large({
    required super.label,
    super.actionLabel,
    super.actionIcon,
    super.description,
    super.onActionPressed,
    super.customAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextComponent.titleLargeProminent(label),
              if (description != null && description!.isNotEmpty) AppTextComponent.bodyMedium(description!),
            ],
          ),
        ),
        AppGaps.hor.s16,
        if (customAction != null)
          customAction!
        else if (actionLabel.orNull != null)
          AppCommonButtonComponent.textButton(
            label: actionLabel!,
            icon: actionIcon,
            onPressed: onActionPressed,
            contentPadding: AppPaddings.custom(2).horizontal,
          ),
      ],
    );
  }
}
