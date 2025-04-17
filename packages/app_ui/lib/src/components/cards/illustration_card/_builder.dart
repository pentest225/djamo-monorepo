part of 'app_illustration_card_component.dart';

class _Builder extends StatelessWidget {
  const _Builder({
    required this.title,
    required this.description,
    required this.action,
    required this.isIllustrationBackgroundColored,
  });

  final String title;
  final String description;
  final Widget action;
  final bool isIllustrationBackgroundColored;

  @override
  Widget build(BuildContext context) {
    return AppCardComponent(
      backgroundColor: context.colorScheme.surfaceContainerLowest,
      contentPadding: AppPaddings.zero.horizontal,
      content: ClipRRect(
        borderRadius: AppBorderRadius.s12.all,
        child: Stack(
          children: [
            if (isIllustrationBackgroundColored) ...[
              Positioned(
                right: -AppSizes.w.s32,
                bottom: -AppSizes.h.s32,
                child: SizedBox.square(
                  dimension: AppSizes.h.custom(142),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ],
            Padding(
              padding: AppPaddings.s16.symmetric,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextComponent.titleMedium(
                          title,
                          color: context.customColorScheme.content,
                        ),
                        AppGaps.ver.s4,
                        AppTextComponent.labelLarge(
                          description,
                          color: context.customColorScheme.contentLowest,
                        ),
                        AppGaps.ver.s8,
                        action,
                      ],
                    ),
                  ),
                  AppGaps.hor.s16,
                  SizedBox(
                    width: AppSizes.h.custom(72),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Assets.djamoIcons.booksCompiled.image(
                        height: AppSizes.h.s56,
                        width: AppSizes.w.s56,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
