part of 'app_snackbar_component.dart';

class _SnackbarBuilder extends StatelessWidget {
  const _SnackbarBuilder({
    required this.label,
    required this.withCloseIcon,
    required this.isLongerAction,
    this.actionText,
    this.actionOnTap,
    this.leadingIcon,
    this.crossAxisAlignment,
  });

  final String label;
  final String? actionText;
  final VoidCallback? actionOnTap;
  final bool withCloseIcon;
  final bool isLongerAction;
  final AppAssetBuilder? leadingIcon;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return isLongerAction
        ? Padding(
            padding: AppPaddings.s14.top.copyWith(
              left: AppSizes.w.s16,
            ),
            child: Column(
              crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    leadingIcon?.mayOverrideConfig(
                          config: AssetBuilderConfig.svg(
                            color: context.colorScheme.surface,
                          ),
                        ) ??
                        const SizedBox(),
                    AppGaps.hor.s16,
                    Expanded(
                      flex: 4,
                      child: _LabelText(label: label),
                    ),
                    const Spacer(),
                  ],
                ),
                Row(
                  children: [
                    const Spacer(),
                    _ButtonAndIcon(
                      actionText: actionText,
                      actionOnTap: actionOnTap,
                      withCloseIcon: withCloseIcon,
                    ),
                  ],
                ),
                AppGaps.ver.s8,
              ],
            ),
          )
        : Padding(
            padding: AppPaddings.s14.vertical.copyWith(
              left: AppSizes.w.s16,
            ),
            child: Row(
              crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                leadingIcon?.mayOverrideConfig(
                      config: AssetBuilderConfig.svg(
                        color: context.colorScheme.surface,
                      ),
                    ) ??
                    const SizedBox(),
                AppGaps.hor.s16,
                Expanded(
                  flex: 4,
                  child: _LabelText(label: label),
                ),
                // const Spacer(),
                _ButtonAndIcon(
                  actionText: actionText,
                  actionOnTap: actionOnTap,
                  withCloseIcon: withCloseIcon,
                ),
              ],
            ),
          );
  }
}

class _ButtonAndIcon extends StatelessWidget {
  const _ButtonAndIcon({
    required this.actionText,
    required this.actionOnTap,
    required this.withCloseIcon,
  });

  final String? actionText;
  final VoidCallback? actionOnTap;
  final bool withCloseIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (actionText != null) ...[
          AppCommonButtonComponent.textButton(
            label: actionText!,
            onPressed: actionOnTap,
            foregroundColor: context.colorScheme.inversePrimary,
            contentPadding: AppPaddings.s12.horizontal,
          ),
          if (withCloseIcon) AppGaps.hor.s12 else AppGaps.hor.custom(14),
        ],
        if (withCloseIcon) ...[
          InkWell(
            hoverColor: Colors.white.withOpacity(.08),
            borderRadius: BorderRadius.circular(AppSizes.r.custom(100)),
            child: Padding(
              padding: AppPaddings.s8.all,
              child: Icon(
                Icons.close,
                color: context.colorScheme.onInverseSurface,
                size: AppSizes.f.s24,
              ),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          ),
          AppGaps.hor.s8,
        ],
      ],
    );
  }
}

class _LabelText extends StatelessWidget {
  const _LabelText({
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return AppTextComponent.bodyMedium(
      label,
      color: context.colorScheme.onInverseSurface,
      overflow: TextOverflow.visible,
    );
  }
}
