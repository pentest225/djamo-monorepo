part of 'app_info_card_component.dart';

class _Medium extends AppInfoCardComponent {
  const _Medium({required super.info, super.key});

  @override
  Widget build(BuildContext context) {
    return _Card(
      children: [
        for (int i = 0; i < info.length; i++) ...[
          Padding(
            padding: AppPaddings.s4.vertical,
            child: Row(
              children: [
                Expanded(
                  child: switch (info.elementAt(i).isBold) {
                    true => AppTextComponent.titleMediumProminent(
                        info.elementAt(i).label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    _ => AppTextComponent.bodyMedium(
                        info.elementAt(i).label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  },
                ),
                AppGaps.hor.s40,
                switch (info.elementAt(i).isBold) {
                  true => AppTextComponent.titleLargeProminent(
                      info.elementAt(i).value,
                      textAlign: TextAlign.right,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  _ => AppTextComponent.labelLargeProminent(
                      info.elementAt(i).value,
                      textAlign: TextAlign.right,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                },
              ],
            ),
          ),
          if (i != info.length - 1) AppGaps.ver.s4,
        ],
      ],
    );
  }
}

class _Prominent extends AppInfoCardComponent {
  const _Prominent({required super.info, super.key});

  @override
  Widget build(BuildContext context) {
    return _Card(
      children: [
        for (int i = 0; i < info.length; i++) ...[
          Padding(
            padding: AppPaddings.s4.vertical,
            child: Row(
              children: [
                Expanded(
                  child: switch (info.elementAt(i).isBold) {
                    _ => AppTextComponent.titleMediumProminent(
                        info.elementAt(i).label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  },
                ),
                AppGaps.hor.s40,
                Expanded(
                  child: switch (info.elementAt(i).isBold) {
                    _ => AppTextComponent.titleLargeProminent(
                        info.elementAt(i).value,
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                  },
                ),
              ],
            ),
          ),
          if (i != info.length - 1) AppGaps.ver.s4,
        ],
      ],
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.customColorScheme.primaryContainerLow,
        borderRadius: AppBorderRadius.s12.all,
        border: Border.all(
          color: context.customColorScheme.primaryCardOutline,
          width: AppSizes.w.custom(1),
        ),
      ),
      child: Padding(
        padding: AppPaddings.s16.symmetric,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}
